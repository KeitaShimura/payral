// Package repository はドメイン層のリポジトリインターフェースを定義する。
// 実装はインフラ層（infrastructure/postgres）に置く。
package repository

import (
	"context"

	"github.com/KeitaShimura/payral/backend/domain/model"
	"github.com/google/uuid"
	"github.com/jmoiron/sqlx"
)

// AccountRepository は口座の永続化操作を抽象化するインターフェース。
type AccountRepository interface {
	// GetByIDForUpdate は SELECT FOR UPDATE で行ロックを取得する。送金処理のトランザクション内で使う。
	GetByIDForUpdate(ctx context.Context, tx *sqlx.Tx, id uuid.UUID) (*model.Account, error)
	// GetByUserID はユーザーに紐づく口座一覧を返す。読み取り専用。
	GetByUserID(ctx context.Context, userID uuid.UUID) ([]*model.Account, error)
	Create(ctx context.Context, account *model.Account) error
	Update(ctx context.Context, tx *sqlx.Tx, account *model.Account) error
}
