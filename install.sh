#!/usr/bin/env bash
# Install all category/skill directories containing SKILL.md into user scope.
set -euo pipefail
ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
DESTROOT="${HOME}/.agents/skills"
mkdir -p "$DESTROOT"
COUNT=0
for MANIFEST in "$ROOT"/*/*/SKILL.md; do
  [[ -f "$MANIFEST" ]] || continue
  SOURCE="$(dirname "$MANIFEST")"
  NAME="$(basename "$SOURCE")"
  DEST="$DESTROOT/$NAME"
  if [[ -e "$DEST" || -L "$DEST" ]]; then
    BACKUP="${DEST}.backup.$(date +%Y%m%d-%H%M%S)-$$"
    mv "$DEST" "$BACKUP"
    echo "Backed up: $BACKUP"
  fi
  cp -R "$SOURCE" "$DEST"
  [[ -f "$DEST/SKILL.md" ]] || { echo "Install verification failed: $DEST" >&2; exit 1; }
  echo "Installed: $NAME -> $DEST"
  COUNT=$((COUNT + 1))
done
[[ "$COUNT" -gt 0 ]] || { echo "No Skills found under category/skill/SKILL.md" >&2; exit 1; }
echo "Installed $COUNT Skills. Restart Codex if needed."
