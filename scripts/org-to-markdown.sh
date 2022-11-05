#!/usr/bin/env bash
#
# Creates a markdown file from an org file."

set -e -o pipefail

if ! command -v emacs &>/dev/null; then
  echo "emacs not found in your PATH" >&2
  exit 1
fi

for f in "$@"; do
    emacs $f --batch --eval="(org-md-export-to-markdown)"
done
