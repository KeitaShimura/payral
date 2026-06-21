CREATE TABLE transactions (
    id               uuid         PRIMARY KEY DEFAULT gen_random_uuid(),
    from_account_id  uuid         NOT NULL REFERENCES accounts(id),
    to_account_id    uuid         NOT NULL REFERENCES accounts(id),
    amount           bigint       NOT NULL CHECK (amount > 0),
    currency         varchar(3)   NOT NULL DEFAULT 'JPY',
    status           varchar(20)  NOT NULL DEFAULT 'pending',
    idempotency_key  varchar(255) UNIQUE NOT NULL,
    memo             text,
    created_at       timestamptz  NOT NULL DEFAULT NOW()
);

CREATE INDEX idx_tx_from_account ON transactions(from_account_id);
CREATE INDEX idx_tx_to_account   ON transactions(to_account_id);
CREATE INDEX idx_tx_created_at   ON transactions(created_at DESC);
