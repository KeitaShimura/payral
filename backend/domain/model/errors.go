package model

import "errors"

// ドメイン層のエラー定義。
// usecase 層はこれらを errors.Is で判定し、適切な HTTP ステータスに変換する。
var (
	ErrInsufficientBalance = errors.New("insufficient balance")
	ErrInvalidAmount       = errors.New("amount must be positive")
	ErrAccountNotFound     = errors.New("account not found")
	ErrUserNotFound        = errors.New("user not found")
	// ErrSelfTransfer は送金元と送金先が同じ口座の場合に返す。
	ErrSelfTransfer     = errors.New("cannot transfer to self")
	ErrDuplicateRequest = errors.New("duplicate request")
	ErrAccountFrozen    = errors.New("account is frozen")
	ErrAccountClosed    = errors.New("account is closed")
)
