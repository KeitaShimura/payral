package repository

import (
	"context"

	"github.com/KeitaShimura/payral/backend/domain/model"
	"github.com/google/uuid"
	"github.com/jmoiron/sqlx"
)

// TransactionRepository は送金レコードの永続化操作を抽象化するインターフェース。
type TransactionRepository interface {
	// Create は送金レコードを INSERT する。DBトランザクション内で呼ぶ。
	Create(ctx context.Context, tx *sqlx.Tx, transaction *model.Transaction) error
	GetByID(ctx context.Context, id uuid.UUID) (*model.Transaction, error)
	// ListByAccountID はカーソルページネーションで取引履歴を返す。cursor は created_at の値。
	ListByAccountID(ctx context.Context, accountID uuid.UUID, cursor *string, limit int) ([]*model.Transaction, error)
}
