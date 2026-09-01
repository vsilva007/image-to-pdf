#!/bin/sh
set -eu

cd "$(dirname "$0")/.."
[ -f .env ] || cp .env.example .env
docker compose up --build --detach --remove-orphans prod
docker compose ps prod
