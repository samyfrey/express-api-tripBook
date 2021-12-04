#!/bin/sh

# TOKEN=e4be6e00d2c6050a99ff4f9fa0ec54ea ID=61a82c0ade353ad60e4cd1f7 sh curl-scripts/trips/show.sh


API="http://localhost:4741"
URL_PATH="/trips"

curl "${API}${URL_PATH}/${ID}" \
  --include \
  --request GET \
  --header "Authorization: Bearer ${TOKEN}"

echo


# show is not working
