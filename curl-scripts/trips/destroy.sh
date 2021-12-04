#!/bin/bash

# TOKEN=46a3b4d9f054259d31784468ed378ed6  ID=61a5899688aea7985c401a15 sh curl-scripts/trips/destroy.sh


API="http://localhost:4741"
URL_PATH="/trips"

curl "${API}${URL_PATH}/${ID}" \
  --include \
  --request DELETE \
  --header "Authorization: Bearer ${TOKEN}"

echo