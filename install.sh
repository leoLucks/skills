#!/usr/bin/env bash
set -euo pipefail
ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
SOURCE="$ROOT/ecommerce/ecommerce-visual-director"
DEST="${HOME}/.agents/skills/ecommerce-visual-director"
if [[ ! -f "$SOURCE/SKILL.md" ]]; then
  echo "Missing $SOURCE/SKILL.md" >&2
  exit 1
fi
mkdir -p "$(dirname "$DEST")"
if [[ -e "$DEST" ]]; then
  BACKUP="${DEST}.backup.$(date +%Y%m%d-%H%M%S)"
  mv "$DEST" "$BACKUP"
  echo "Backed up previous version to: $BACKUP"
fi
cp -R "$SOURCE" "$DEST"
echo "Installed: $DEST"
echo "Restart Codex if needed. Repeat installation on each device."
