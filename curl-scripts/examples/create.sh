#!/bin/bash

# TOKEN=put_token_here NAME="React Meetup" SCHEDULED="2021-11-15" sh curl-scripts/events/create.sh

# TOKEN=46a3b4d9f054259d31784468ed378ed6 TEXT="This is a text body from the example" TITLE="This is the title" sh curl-scripts/examples/create.sh


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
