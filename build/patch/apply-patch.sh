#!/usr/bin/env bash

set -Eeuo pipefail
trap 'echo "⚠  Error ($0:$LINENO): $BASH_COMMAND" && return 3 2> /dev/null || exit 3' ERR

patch -d ".." --dry-run --forward -p1 -i "patch/patch"

patch -d ".." --quiet --forward -p1 -i "patch/patch"
