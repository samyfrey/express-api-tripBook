#!/bin/bash
# TOKEN='f92d137374f57b164c176d6ef267ff43' sh curl-scripts/auth/sign-out.sh 

API="http://localhost:4741"
URL_PATH="/sign-out"

curl "${API}${URL_PATH}/" \
  --include \
  --request DELETE \
  --header "Authorization: Bearer ${TOKEN}"

echo
