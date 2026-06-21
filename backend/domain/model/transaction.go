package model

import (
	"time"

	"github.com/google/uuid"
)

// TransactionStatus は送金の処理状態を表す。
type TransactionStatus string

// TransactionStatus の定数一覧。
const (
	TransactionStatusPending   TransactionStatus = "pending"   // DBトランザクション開始〜COMMIT 前。
	TransactionStatusCompleted TransactionStatus = "completed" // 残高更新と INSERT が成功した状態。
	TransactionStatusFailed    TransactionStatus = "failed"    // 残高不足等でロールバックされた状態。
)

// Transaction は送金の実行記録を表すドメインモデル。
// 一度 INSERT したら UPDATE/DELETE しない不変レコード。
type Transaction struct {
	ID             uuid.UUID
	FromAccountID  uuid.UUID
	ToAccountID    uuid.UUID
	Amount         int64 // 送金額（円単位）。0 以下は不可。
	Currency       string
	Status         TransactionStatus
	IdempotencyKey string    // クライアントが付与する UUID v4。UNIQUE 制約で二重送金を防ぐ。
	Memo           *string   // 送金メモ。省略可。
	CreatedAt      time.Time // 送金実行日時。変更しない。
}
