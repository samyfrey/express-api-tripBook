#!/bin/sh


# TOKEN=068304fe63727b04612d2b2174902c70 sh curl-scripts/examples/index.sh



API="http://localhost:4741"
URL_PATH="/examples"

curl "${API}${URL_PATH}" \
  --include \
  --request GET \
  --header "Authorization: Bearer ${TOKEN}"

echo
