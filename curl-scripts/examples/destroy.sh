#!/bin/bash

# TOKEN=46a3b4d9f054259d31784468ed378ed6  ID=61a586e088aea7985c401a08 sh curl-scripts/examples/destroy.sh


API="http://localhost:4741"
URL_PATH="/examples"

curl "${API}${URL_PATH}/${ID}" \
  --include \
  --request DELETE \
  --header "Authorization: Bearer ${TOKEN}"

echo
