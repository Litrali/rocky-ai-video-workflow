#!/usr/bin/env bash
# Safe setup helper: displays schema-inspection commands only.
# It does not submit paid image or video generation requests.
set -euo pipefail

cat <<'EOF'
Optional provider CLI setup (review provider terms/pricing first):
  npm install -g @evolinkai/cli@latest
  evolink auth login
  evolink skills install

Inspect current model schemas:
  evolink models schema gpt-image-2 --json
  evolink models schema seedance-2.5-image-to-video --json

No generation request has been submitted.
Before any paid task, inspect the live schema and price, then obtain
explicit approval for that specific task.
EOF
