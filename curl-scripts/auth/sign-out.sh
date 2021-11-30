#!/bin/bash
# TOKEN=46a3b4d9f054259d31784468ed378ed6   sh curl-scripts/auth/sign-out.sh 

API="http://localhost:4741"
URL_PATH="/sign-out"

curl "${API}${URL_PATH}/" \
  --include \
  --request DELETE \
  --header "Authorization: Bearer ${TOKEN}"

echo
