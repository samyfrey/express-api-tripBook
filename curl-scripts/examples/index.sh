#!/bin/sh


# TOKEN=46a3b4d9f054259d31784468ed378ed6 sh curl-scripts/examples/index.sh



API="http://localhost:4741"
URL_PATH="/examples"

curl "${API}${URL_PATH}" \
  --include \
  --request GET \
  --header "Authorization: Bearer ${TOKEN}"

echo
