#!/bin/sh

SCRIPT_PATH=$(realpath $0)
PROJECT_PATH=$(dirname $SCRIPT_PATH)

docker network create nginx-proxy
docker compose -f ${PROJECT_PATH}/docker-compose.yml \
  --env-file ${PROJECT_PATH}/.env \
  --project-name "igorleonovich.com-web" \
  build
