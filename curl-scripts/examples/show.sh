#!/bin/sh

# TOKEN=38a943f38cab3309761387df31f4c1cb ID=61a44f6453a2f873ffd40e80 sh curl-scripts/examples/show.sh

API="http://localhost:4741"
URL_PATH="/examples"

curl "${API}${URL_PATH}/${ID}" \
  --include \
  --request GET \
  # --header "Authorization: Bearer ${TOKEN}"

echo
