CREATE TABLE accounts (
    id         uuid         PRIMARY KEY DEFAULT gen_random_uuid(),
    user_id    uuid         NOT NULL REFERENCES users(id),
    balance    bigint       NOT NULL DEFAULT 0 CHECK (balance >= 0),
    currency   varchar(3)   NOT NULL DEFAULT 'JPY',
    status     varchar(20)  NOT NULL DEFAULT 'active',
    version    bigint       NOT NULL DEFAULT 0,
    created_at timestamptz  NOT NULL DEFAULT NOW(),
    updated_at timestamptz  NOT NULL DEFAULT NOW()
);

CREATE INDEX idx_accounts_user_id ON accounts(user_id);
