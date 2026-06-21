package repository

import (
	"context"

	"github.com/KeitaShimura/payral/backend/domain/model"
	"github.com/google/uuid"
)

// AuditLogRepository は監査ログの永続化操作を抽象化するインターフェース。
type AuditLogRepository interface {
	// Create は監査ログを INSERT する。UPDATE/DELETE は行わない。
	Create(ctx context.Context, log *model.AuditLog) error
	ListByUserID(ctx context.Context, userID uuid.UUID) ([]*model.AuditLog, error)
}
