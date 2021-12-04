#!/bin/bash

# TOKEN=e4be6e00d2c6050a99ff4f9fa0ec54ea  TITLE="HOUSTON HERE WE GO" TEXT="Start with the park" sh curl-scripts/trips/create.sh


API="http://localhost:4741"
URL_PATH="/trips"

curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Bearer ${TOKEN}" \
  --data '{
    "trip": {
      "title": "'"${TITLE}"'",
      "text": "'"${TEXT}"'"
    }
  }'

echo