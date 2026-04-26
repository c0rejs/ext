#!/usr/bin/env bash

set -Eeuo pipefail
trap 'echo "⚠  Error ($0:$LINENO, exit code: $?): $BASH_COMMAND" >&2' ERR

diff --recursive --no-ignore-file-name-case -u "../node_modules" "node_modules_patch" | grep -v "^Only in" > patch
