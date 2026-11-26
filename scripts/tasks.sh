#!/usr/bin/env bash
# Informational helper only. It does not install tools or submit API requests.
set -euo pipefail

cat <<'EOF'
Rocky AI Video Workflow — safe preparation checklist

Reference workflow:
  1. Create a GPT Image 2 still.
  2. Review and approve the still.
  3. Choose the appropriate Seedance route from its current live schema.
  4. Review the video prompt, inputs, parameters, availability, and price.
  5. Obtain explicit approval before any paid task.
  6. Track the original task ID and review the completed result.

Optional CLI setup shown by the upstream guide (verify current requirements first):
  npm install -g @evolinkai/cli@latest
  evolink auth login
  evolink skills install

Schema inspection examples from the upstream guide:
  evolink models schema gpt-image-2 --json
  evolink models schema seedance-2.5-image-to-video --json

Possible video route families described upstream:
  seedance-2.5-image-to-video
  seedance-2.5-reference-to-video
  seedance-2.5-text-to-video
  seedance-2.5-video-edit
  seedance-2.5-video-extend
  seedance-2.5-draft-to-video

These names and commands are reference examples, not proof of current availability.
No API request has been sent and no generation task has been created.
EOF
