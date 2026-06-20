# payfin

> 送金・入金・口座管理API

---

## アーキテクチャ図

```
Internet
    │ HTTPS
    ▼
WAF ──► ALB（SSL終端・ルーティング）
              │
              ├────────────── Stripe Webhook（入金通知）
              ▼                      │
    ECS Fargate（ConnectRPC / Go）◄──┘
     ├─ Auth Service      JWT認証・発行
     ├─ Transfer Service  送金・残高管理（コア）
     └─ Account Service   口座管理
      │         │          │          │
      ▼         ▼          ▼          ▼
   RDS      ElastiCache   SQS     Secrets
PostgreSQL    Redis      （通知）   Manager
（Multi-AZ） （冪等キー・
             Rate制限）
      │                   │
      │                   ▼
      │           Notification Worker
      │             （ECS Task）
      │                   │
      ▼                   ▼
   Stripe                SES
（①入金リクエスト）    （メール通知）
 payfin ──► Stripe
```

**入金フロー**（Stripeとの通信は2段階）

1. Transfer Service `──►` Stripe API（①入金を依頼）
2. Stripe `──►` Transfer Service（②入金完了をWebhookで通知 → 口座残高に反映）

**送金フロー**（Stripe不要・payfin内で完結）

- 自分の口座 `──►` 相手の口座（RDS内のトランザクションのみ）

**通知ファンアウト構成**（SNS + SQS）

```
Transfer Service
      │
      ▼
   AWS SNS（トピック）
   ├──► SQS（メール用）──► Notification Worker ──► SES
   └──► SQS（Push用） ──► Notification Worker ──► Push通知
```

---

## 技術スタック

### バックエンド

| カテゴリ          | 技術                | 用途                                 |
| ----------------- | ------------------- | ------------------------------------ |
| 言語              | Go 1.26.4           |                                      |
| APIフレームワーク | ConnectRPC v1.x     | REST + gRPC 両対応（単一実装）       |
| スキーマ定義      | Protocol Buffers    | APIコントラクト・コード生成          |
| DB                | PostgreSQL 18.4     | メインDB・トランザクション・行ロック |
| Cache             | Redis 8.6           | 冪等キー・レート制限カウンタ         |
| Queue             | AWS SQS             | 通知の非同期処理                     |
| マイグレーション  | golang-migrate v4.x | SQLファイルベースのマイグレーション  |

### テスト

| カテゴリ           | 技術              | 用途                                  |
| ------------------ | ----------------- | ------------------------------------- |
| Unit / Integration | testify v1.11.1   | アサーション・モック（usecase層中心） |
| API テスト         | Tavern 2.x        | YAMLで宣言的にREST/gRPCテスト         |
| E2E                | Playwright 1.61.0 | ブラウザ操作・送金フロー自動テスト    |

### インフラ / その他

| カテゴリ       | 技術                                                  |
| -------------- | ----------------------------------------------------- |
| インフラ       | AWS ECS Fargate / RDS / ElastiCache / SQS / WAF / ALB |
| IaC            | Terraform（全リソース管理・tfstateはS3+DynamoDB）     |
| CI/CD          | GitHub Actions                                        |
| コンテナ       | Docker / docker-compose                               |
| 監視           | CloudWatch（メトリクス・アラート）                    |
| フロントエンド | Next.js 16.2（最小3画面）                             |

---

## ディレクトリ構成

```
payfin/
├── backend/
│   ├── cmd/server/main.go
│   ├── internal/
│   │   ├── domain/          # model / repository interface / errors
│   │   ├── usecase/         # transfer / account / auth
│   │   ├── interface/       # handler / middleware
│   │   └── infrastructure/  # postgres / redis / sqs
│   ├── proto/               # Protobuf定義
│   ├── migrations/
│   ├── Dockerfile
│   └── Makefile
├── frontend/                # Next.js（ログイン・送金・取引履歴）
├── terraform/               # VPC / ECS / RDS / Redis / SQS
├── e2e/                     # Playwright
├── tests/tavern/            # Tavern API テスト
├── docs/design.md           # 設計書
├── docker-compose.yml
└── README.md
```

---

## ローカル起動手順

### 前提条件

- Docker / docker-compose
- Go 1.26.4
- Node.js 24.x（フロントエンドを動かす場合）
- Python 3.11+（Tavern を使う場合）
- `buf`（Protobuf コード生成）

### 起動

```bash
git clone https://github.com/{your-name}/payfin.git
cd payfin
docker-compose up -d
make migrate-up
curl http://localhost:8080/health
```

### Makefile コマンド

```bash
make dev           # ホットリロードで起動
make proto-gen     # Protobuf コード生成
make test          # ユニットテスト
make test-int      # 統合テスト
make test-api      # Tavern API テスト
make test-e2e      # Playwright E2E テスト
make test-all      # 全テスト
make migrate-up    # マイグレーション実行
make migrate-down  # ロールバック
make lint          # golangci-lint
make coverage      # カバレッジ計測
```

---

## インフラ構成（AWS）

| レイヤー | サービス                       | 用途                    | 設定ポイント                               |
| -------- | ------------------------------ | ----------------------- | ------------------------------------------ |
| Edge     | WAF + ALB                      | DDoS・SQLi遮断・SSL終端 | ACMで証明書自動更新                        |
| App      | ECS Fargate                    | Goコンテナ実行          | プライベートサブネット・IAMロール最小権限  |
| DB       | RDS PostgreSQL（Primary）      | メインDB・書き込み専用  | Multi-AZ・自動フェイルオーバー・暗号化有効 |
| DB       | RDS PostgreSQL（Read Replica） | 参照系クエリ分離        | 取引履歴・残高照会                         |
| DB       | RDS Proxy                      | Connection Pooling      | ECSタスク増加時のmax_connections枯渇防止   |
| Cache    | ElastiCache Redis              | 冪等キー・レート制限    | インターネット非公開                       |
| Queue    | SNS + SQS                      | 通知ファンアウト        | Dead Letter Queue付き                      |
| Secrets  | Secrets Manager                | DB接続情報・APIキー     | 環境変数に平文を置かない                   |
| IaC      | Terraform                      | 全リソース管理          | tfstate は S3+DynamoDB で locking          |
| 監視     | CloudWatch                     | メトリクス・アラート    | エラー率・レイテンシのアラーム設定         |

---

## CI/CD（GitHub Actions）

```
feature/* へ Push  →  テスト + lint
develop への PR    →  テスト + ビルド
main へ Merge      →  テスト + ビルド + ECR push + ECS デプロイ
```

---

## ドキュメント

- [設計書（ユースケース・DBスキーマ・API設計・設計ノート）](./docs/design.md)
