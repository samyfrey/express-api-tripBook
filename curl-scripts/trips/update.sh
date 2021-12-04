#!/bin/bash

# TOKEN=e4be6e00d2c6050a99ff4f9fa0ec54ea ID=61a82c0ade353ad60e4cd1f7 TITLE="new trip becomes miami trip" TEXT="my post is updated" sh curl-scripts/trips/update.sh


API="http://localhost:4741"
URL_PATH="/trips"

curl "${API}${URL_PATH}/${ID}" \
  --include \
  --request PATCH \
  --header "Content-Type: application/json" \
--header "Authorization: Bearer ${TOKEN}" \
--data '{
    "trip": {
      "title": "'"${TITLE}"'",
      "text": "'"${TEXT}"'"
    }
  }'

echo
