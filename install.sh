#!/usr/bin/env sh
set -eu

SCRIPT_DIR=$(CDPATH= cd -- "$(dirname -- "$0")" && pwd)
cd "$SCRIPT_DIR"

IMAGE=${PYTHON_TUTORIAL_IMAGE:-ghcr.nju.edu.cn/rainboylvx/python-tutorial:latest}
PORT=${PYTHON_TUTORIAL_PORT:-8123}

if ! command -v docker >/dev/null 2>&1; then
  echo "Error: docker is not installed." >&2
  exit 1
fi

if docker compose version >/dev/null 2>&1; then
  COMPOSE="docker compose"
elif command -v docker-compose >/dev/null 2>&1; then
  COMPOSE="docker-compose"
else
  echo "Error: docker compose is not available." >&2
  exit 1
fi

export PYTHON_TUTORIAL_IMAGE="$IMAGE"
export PYTHON_TUTORIAL_PORT="$PORT"

$COMPOSE up -d

echo "python-tutorial is running:"
echo "  http://localhost:$PORT"
