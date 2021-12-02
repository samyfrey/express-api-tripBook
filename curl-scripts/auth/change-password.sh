#!/bin/bash
# TOKEN='986385a72a8e2cef617b81e26b768c03' OLDPW='project' NEWPW='tripBook' sh curl-scripts/auth/change-password.sh 

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
