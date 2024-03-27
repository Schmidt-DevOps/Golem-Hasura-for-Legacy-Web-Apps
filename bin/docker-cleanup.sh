#!/usr/bin/env bash

for i in dds-postgres dds2-postgres; do
    CONTAINER_NAME="$(docker ps -a -q -f name=${i})"
    if [[ -n $CONTAINER_NAME ]]; then
        docker rm -f "${CONTAINER_NAME}"
    fi

    VOLUME_NAME="$(docker volume ls -q -f name=${i}_data)"
    if [[ -n $VOLUME_NAME ]]; then
        docker volume rm "${VOLUME_NAME}"
    fi
done