// Package model はドメインモデルとビジネスルールを定義する。
package model

import (
	"time"

	"github.com/google/uuid"
)

// AccountStatus は口座の状態を表す。
type AccountStatus string

// AccountStatus の定数一覧。
const (
	AccountStatusActive AccountStatus = "active" // 通常状態。送受金可能。
	AccountStatusFrozen AccountStatus = "frozen" // 凍結中。不正利用疑い等で管理者が停止した状態。
	AccountStatusClosed AccountStatus = "closed" // 解約済み。残高は 0 であること。
)

// Account は口座と残高を表すドメインモデル。
// 残高は float を使わず int64（円単位）で管理する。
// float は 0.1 + 0.2 = 0.30000000000000004 のような誤差が生じるため金融では使用しない。
type Account struct {
	ID        uuid.UUID
	UserID    uuid.UUID
	Balance   int64 // 残高（円単位）。負数は CHECK 制約で禁止。
	Currency  string
	Status    AccountStatus
	Version   int64 // 楽観的ロック用。UPDATE のたびにインクリメントする。
	CreatedAt time.Time
	UpdatedAt time.Time
}

// Withdraw は残高を減算する。
// 送金処理で呼び出す前に SELECT FOR UPDATE でロックを取得すること。
func (a *Account) Withdraw(amount int64) error {
	if amount <= 0 {
		return ErrInvalidAmount
	}
	if a.Status == AccountStatusFrozen {
		return ErrAccountFrozen
	}
	if a.Status == AccountStatusClosed {
		return ErrAccountClosed
	}
	if a.Balance < amount {
		return ErrInsufficientBalance
	}
	a.Balance -= amount
	return nil
}

// Deposit は残高を加算する。
// 送金の受け取りおよび Stripe Webhook による入金で呼び出す。
func (a *Account) Deposit(amount int64) error {
	if amount <= 0 {
		return ErrInvalidAmount
	}
	if a.Status == AccountStatusFrozen {
		return ErrAccountFrozen
	}
	if a.Status == AccountStatusClosed {
		return ErrAccountClosed
	}
	a.Balance += amount
	return nil
}
