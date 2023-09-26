#!/usr/bin/env bash
#
# Runs `argo lint` against manifest files for Argo Workflows
set -eu

if ! command -v web-ext &>/dev/null; then
	echo "web-ext not found in your PATH" >&2
	echo "https://extensionworkshop.com/documentation/develop/getting-started-with-web-ext/" >&2
	exit 1
fi

for f in "$@"; do
	argo lint "$f"
done
