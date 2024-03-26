#!/usr/bin/env bash

docker rm -f "$(docker ps -a -q -f name=dds-postgres)"
docker volume rm "$(docker volume ls -q -f name=dds-postgres_data)"

docker rm -f "$(docker ps -a -q -f name=dds2-postgres)"
docker volume rm "$(docker volume ls -q -f name=dds2-postgres_data)"