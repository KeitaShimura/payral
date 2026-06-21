package model

import (
	"time"

	"github.com/google/uuid"
)

// UserStatus はユーザーアカウントの状態を表す。
type UserStatus string

// UserStatus の定数一覧。
const (
	UserStatusActive    UserStatus = "active"    // 通常状態。
	UserStatusSuspended UserStatus = "suspended" // 停止中。不正利用等で管理者が一時停止した状態。
)

// User はユーザーの認証情報を表すドメインモデル。
// メール/パスワード認証と OIDC 認証の両方に対応する。
type User struct {
	ID           uuid.UUID
	Email        string
	PasswordHash *string // bcrypt ハッシュ。Google 等 OIDC 専用ユーザーは nil。
	Name         string
	Status       UserStatus
	CreatedAt    time.Time
	UpdatedAt    time.Time
}
