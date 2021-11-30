#!/bin/bash
# ID=61a586e088aea7985c401a08 TOKEN=46a3b4d9f054259d31784468ed378ed6 TEXT="This is the update number 1" sh cur


API="http://localhost:4741"
URL_PATH="/examples"

curl "${API}${URL_PATH}/${ID}" \
  --include \
  --request PATCH \
  --header "Content-Type: application/json" \
--header "Authorization: Bearer ${TOKEN}" \
--data '{
    "example": {
      "text": "'"${TEXT}"'"
    }
  }'

echo
