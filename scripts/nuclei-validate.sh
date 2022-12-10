#!/usr/bin/env bash
#
# Runs `nuclei -validate' against yaml files

set -e -o pipefail

if ! command -v nuclei &>/dev/null; then
  echo "nuclei not found in your PATH" >&2
  exit 1
fi

for f in "$@"; do
    nuclei -validate -silent -disable-update-check -t $f
done
