package model

import (
	"time"

	"github.com/google/uuid"
)

// AuditAction は監査ログに記録する操作の種別を表す。
type AuditAction string

// AuditResourceType は監査ログの操作対象リソース種別を表す。
type AuditResourceType string

// AuditAction の定数一覧。
const (
	AuditActionTransfer       AuditAction = "transfer"
	AuditActionLogin          AuditAction = "login"
	AuditActionAccountCreated AuditAction = "account_created"

	AuditResourceTransaction AuditResourceType = "transaction"
	AuditResourceAccount     AuditResourceType = "account"
)

// AuditLog は誰がいつ何をしたかを記録する監査ログモデル。
// INSERT のみで UPDATE/DELETE は行わない不変レコード。
type AuditLog struct {
	ID           uuid.UUID
	UserID       uuid.UUID
	Action       AuditAction
	ResourceType AuditResourceType
	ResourceID   *uuid.UUID     // 操作対象のレコード ID。削除済みレコードの追跡にも使えるよう uuid で保持。
	Metadata     map[string]any // IP アドレス・ユーザーエージェントなど追加情報を自由形式で保存。
	CreatedAt    time.Time      // 記録日時。変更しない。
}
