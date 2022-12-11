#!/usr/bin/env bash
#
# Runs `argo lint` against manifest files for Argo Workflows
set -eu

if ! command -v argo &>/dev/null; then
	echo "argo not found in your PATH" >&2
	exit 1
fi

for f in "$@"; do
	argo lint "$f"
done
