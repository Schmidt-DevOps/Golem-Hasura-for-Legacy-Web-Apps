#!/usr/bin/env bash

curl \
-H 'Content-Type: application/json' \
-H 'x-hasura-access-key: admin_secret_not_for_production' \
-s "http://localhost:8100/hasura/console/api/rest/MyProducts" | jq '.products[:3]'