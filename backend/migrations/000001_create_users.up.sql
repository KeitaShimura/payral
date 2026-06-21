CREATE TABLE users (
    id            uuid         PRIMARY KEY DEFAULT gen_random_uuid(),
    email         varchar(255) UNIQUE NOT NULL,
    password_hash varchar(255),
    name          varchar(100) NOT NULL,
    status        varchar(20)  NOT NULL DEFAULT 'active',
    created_at    timestamptz  NOT NULL DEFAULT NOW(),
    updated_at    timestamptz  NOT NULL DEFAULT NOW()
);

CREATE INDEX idx_users_email ON users(email);
