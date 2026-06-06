#!/bin/sh
GLUETUN_PORT="$1"
ENV_KEY="$2"
OUTPUT_FILE="$3"

TARGET_DIR="${XDG_RUNTIME_DIR}"

PORT=$(curl -s "http://localhost:${GLUETUN_PORT}/v1/portforward" | jq '.port')

if [ "$PORT" -gt 0 ]; then
  echo "${ENV_KEY}=${PORT}" > "${TARGET_DIR}/${OUTPUT_FILE}"
  echo "Successfully wrote ${ENV_KEY}=${PORT} to ${TARGET_DIR}/${OUTPUT_FILE}"
else
  echo "Gluetun on port ${GLUETUN_PORT} hasn't assigned a valid port yet (Got: $PORT)" >&2
  exit 1
fi
