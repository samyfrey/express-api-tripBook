#!/bin/sh


# TOKEN=2c2f42c80b13de3dac6870523b70d9eb sh curl-scripts/trips/index.sh


API="http://localhost:4741"
URL_PATH="/trips"

curl "${API}${URL_PATH}" \
  --include \
  --request GET \
  --header "Authorization: Bearer ${TOKEN}"

echo
