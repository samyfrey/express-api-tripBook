#!/bin/bash
# TOKEN=1e1717a35bf5db349eefae12883d43c9   sh curl-scripts/auth/sign-out.sh 

API="http://localhost:4741"
URL_PATH="/sign-out"

curl "${API}${URL_PATH}/" \
  --include \
  --request DELETE \
  --header "Authorization: Bearer ${TOKEN}"

echo
