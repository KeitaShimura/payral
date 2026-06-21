CREATE TABLE audit_logs (
    id            uuid         PRIMARY KEY DEFAULT gen_random_uuid(),
    user_id       uuid         NOT NULL REFERENCES users(id),
    action        varchar(50)  NOT NULL,
    resource_type varchar(50)  NOT NULL,
    resource_id   uuid,
    metadata      jsonb,
    created_at    timestamptz  NOT NULL DEFAULT NOW()
);

CREATE INDEX idx_audit_user_id    ON audit_logs(user_id);
CREATE INDEX idx_audit_created_at ON audit_logs(created_at DESC);
