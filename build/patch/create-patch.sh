#!/usr/bin/env bash

set -Eeuo pipefail
trap 'echo "⚠  Error ($0:$LINENO): $BASH_COMMAND" && return 3 2> /dev/null || exit 3' ERR

diff --recursive --no-ignore-file-name-case -u "../node_modules" "node_modules_patch" | grep -v "^Only in" > patch
