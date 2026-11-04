#!/usr/bin/env bash
# Bootstrap or update the personal Codex Skills collection.
set -euo pipefail
command -v git >/dev/null 2>&1 || { echo "Git is required." >&2; exit 1; }
REPO="${HOME}/.codex-skills-source"
URL="https://github.com/leoLucks/skills.git"
if [[ -d "$REPO/.git" ]]; then
  git -C "$REPO" pull --ff-only
elif [[ -e "$REPO" ]]; then
  echo "Path exists but is not a Git checkout: $REPO" >&2
  exit 1
else
  git clone "$URL" "$REPO"
fi
bash "$REPO/install.sh"
