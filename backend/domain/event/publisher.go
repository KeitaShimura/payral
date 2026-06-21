// Package event はドメインイベントの発行インターフェースを定義する。
package event

import (
	"context"
	"time"

	"github.com/google/uuid"
)

// Publisher はドメインイベントを外部（SQS）へ発行するインターフェース。
// インフラ層で SQS を使って実装する。
type Publisher interface {
	PublishTransferCompleted(ctx context.Context, event TransferCompletedEvent) error
}

// TransferCompletedEvent は送金完了後に SQS へ発行するイベント。
// Notification Worker がこれを受け取りメール・Push通知を送る。
type TransferCompletedEvent struct {
	TransactionID uuid.UUID
	FromUserID    uuid.UUID
	ToUserID      uuid.UUID
	Amount        int64
	Currency      string
	OccurredAt    time.Time
}
