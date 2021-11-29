#!/bin/bash
# TOKEN='f92d137374f57b164c176d6ef267ff43' OLDPW='project' NEWPW='tripBook' sh curl-scripts/auth/change-password.sh 

API="http://localhost:4741"
URL_PATH="/change-password"

curl "${API}${URL_PATH}/" \
  --include \
  --request PATCH \
  --header "Authorization: Bearer ${TOKEN}" \
  --header "Content-Type: application/json" \
  --data '{
    "passwords": {
      "old": "'"${OLDPW}"'",
      "new": "'"${NEWPW}"'"
    }
  }'

echo
