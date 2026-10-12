CREATE TABLE allowlist_entries (
  uuid TEXT PRIMARY KEY CHECK (length(uuid) = 36),
  allowed INTEGER NOT NULL CHECK (allowed IN (0, 1)),
  revision INTEGER NOT NULL CHECK (revision >= 0),
  actor TEXT NOT NULL,
  reason TEXT NOT NULL DEFAULT '',
  updated_at TEXT NOT NULL DEFAULT CURRENT_TIMESTAMP
);
CREATE INDEX allowlist_entries_revision_idx ON allowlist_entries(revision);
