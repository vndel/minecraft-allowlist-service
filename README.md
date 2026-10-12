# minecraft-allowlist-service

UUID-first allowlist service contract for multi-backend Minecraft deployments. Usernames are mutable display data; authorization decisions use canonical UUIDs.

## Contract
- `PUT /v1/allowlist/{uuid}` creates or replaces an entry.
- `DELETE /v1/allowlist/{uuid}` revokes it idempotently.
- `GET /v1/allowlist/{uuid}` returns decision and revision.
- Changes carry monotonically increasing revisions for backend reconciliation.

Require authenticated service-to-service transport, audit actor and reason, rate-limit writes, and fail closed for unknown identity state according to your threat model. No production availability claim is implied. MIT licensed.
