package model

import (
	"time"

	"github.com/google/uuid"
)

// OAuthProvider は対応する OIDC プロバイダーを表す。
type OAuthProvider string

// OAuthProvider の定数一覧。
const (
	OAuthProviderGoogle OAuthProvider = "google"
)

// OAuthAccount は外部プロバイダーと users を紐づけるモデル。
// 1ユーザーが複数のプロバイダーを連携できる。
// (Provider, Subject) の組み合わせで UNIQUE 制約を持つ。
type OAuthAccount struct {
	ID        uuid.UUID
	UserID    uuid.UUID
	Provider  OAuthProvider
	Subject   string // プロバイダー側のユーザー ID（OIDC の sub クレーム）。
	Email     string // プロバイダーから取得したメール。参照用でログイン判定には使わない。
	CreatedAt time.Time
	UpdatedAt time.Time
}
