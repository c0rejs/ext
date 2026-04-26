#!/usr/bin/env bash

set -Eeuo pipefail
trap 'echo "⚠  Error ($0:$LINENO, exit code: $?): $BASH_COMMAND" >&2' ERR

patch -d ".." --dry-run --forward -p1 -i "patch/patch"

patch -d ".." --quiet --forward -p1 -i "patch/patch"
