CREATE TABLE oauth_accounts (
    id         uuid         PRIMARY KEY DEFAULT gen_random_uuid(),
    user_id    uuid         NOT NULL REFERENCES users(id),
    provider   varchar(50)  NOT NULL,
    subject    varchar(255) NOT NULL,
    email      varchar(255) NOT NULL,
    created_at timestamptz  NOT NULL DEFAULT NOW(),
    updated_at timestamptz  NOT NULL DEFAULT NOW()
);

CREATE UNIQUE INDEX idx_oauth_accounts_provider_subject ON oauth_accounts(provider, subject);
CREATE INDEX idx_oauth_accounts_user_id ON oauth_accounts(user_id);
