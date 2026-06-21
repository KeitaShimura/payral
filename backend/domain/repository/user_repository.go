package repository

import (
	"context"

	"github.com/KeitaShimura/payral/backend/domain/model"
	"github.com/google/uuid"
	"github.com/jmoiron/sqlx"
)

// UserRepository はユーザーの永続化操作を抽象化するインターフェース。
type UserRepository interface {
	GetByID(ctx context.Context, id uuid.UUID) (*model.User, error)
	GetByEmail(ctx context.Context, email string) (*model.User, error)
	// Create はメール/パスワード登録時に users を INSERT する。
	Create(ctx context.Context, user *model.User) error
	// CreateWithOIDC は OIDC 登録時に users と oauth_accounts を同一トランザクションで INSERT する。
	CreateWithOIDC(ctx context.Context, tx *sqlx.Tx, user *model.User) error
}
