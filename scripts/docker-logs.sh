#!/bin/sh
set -eu

cd "$(dirname "$0")/.."
service="${1:-prod}"
docker compose logs --follow --tail=150 "$service"
