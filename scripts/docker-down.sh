#!/bin/sh
set -eu

cd "$(dirname "$0")/.."

if [ "${1:-}" = "--clean" ]; then
  docker compose down --remove-orphans --volumes
else
  docker compose down --remove-orphans
fi
