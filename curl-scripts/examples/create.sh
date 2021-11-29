#!/bin/bash

# TOKEN=put_token_here NAME="React Meetup" SCHEDULED="2021-11-15" sh curl-scripts/events/create.sh

# TOKEN=068304fe63727b04612d2b2174902c70 TEXT="Trip to Paris" TITLE="Start with the Tour Eiffel" sh curl-scripts/examples/create.sh


API="http://localhost:4741"
URL_PATH="/examples"

curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Bearer ${TOKEN}" \
  --data '{
    "example": {
      "text": "'"${TEXT}"'",
      "title": "'"${TITLE}"'"
    }
  }'

echo
