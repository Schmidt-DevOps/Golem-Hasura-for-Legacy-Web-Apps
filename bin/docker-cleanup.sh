#!/usr/bin/env bash

docker rm -f "$(docker ps -a -q -f name=golem-hasura-for-legacy-web-apps-postgres)"
docker volume rm golem-hasura-for-legacy-web-apps_postgres_data