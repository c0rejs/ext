#!/usr/bin/env bash

set -Eeuo pipefail
trap 'echo -e "⚠  Error ($0:$LINENO): $(sed -n "${LINENO}p" "$0" 2> /dev/null | grep -oE "\S.*\S|\S" || true)" >&2; return 3 2> /dev/null || exit 3' ERR

patch -d ".." --dry-run --forward -p1 -i "patch/patch"

patch -d ".." --quiet --forward -p1 -i "patch/patch"
