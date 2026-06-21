package repository

import (
	"context"

	"github.com/KeitaShimura/payral/backend/domain/model"
	"github.com/jmoiron/sqlx"
)

// OAuthAccountRepository は OIDC 連携情報の永続化操作を抽象化するインターフェース。
type OAuthAccountRepository interface {
	// GetByProviderAndSubject は OIDC コールバック時に既存連携を検索する。
	GetByProviderAndSubject(ctx context.Context, provider model.OAuthProvider, subject string) (*model.OAuthAccount, error)
	// Create は users と同一トランザクションで INSERT する。
	Create(ctx context.Context, tx *sqlx.Tx, oauthAccount *model.OAuthAccount) error
	// DeleteByUserIDAndProvider は OIDC 連携解除（UC-12）で使う。
	DeleteByUserIDAndProvider(ctx context.Context, tx *sqlx.Tx, oauthAccount *model.OAuthAccount) error
}
