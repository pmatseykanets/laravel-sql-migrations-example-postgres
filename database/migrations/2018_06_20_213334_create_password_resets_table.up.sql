-- Run the migrations
CREATE TABLE IF NOT EXISTS password_resets (
    email CITEXT NOT NULL,
    token TEXT NOT NULL,
    created_at TIMESTAMPTZ DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (email, token)
);

CREATE INDEX IF NOT EXISTS password_resets_email_idx ON password_resets (email);
