#!/bin/sh
GLUETUN_PORT="$1"
ENV_KEY="$2"
OUTPUT_FILE="$3"

PORT=$(curl -s "http://localhost:${GLUETUN_PORT}/v1/portforward" | jq '.port')

if [ "$PORT" -gt 0 ]; then
  echo "${ENV_KEY}=${PORT}" > "${OUTPUT_FILE}"
  echo "Received port $PORT"
else
  echo "Port $PORT is invalid" >&2
  exit 1
fi
