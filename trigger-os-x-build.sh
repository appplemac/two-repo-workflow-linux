#!/bin/bash
set -x

curl \
  --header "Content-Type: application/json" \
  --data "{\"build_parameters\": {\"LINUX_SHA1\": \"$CIRCLE_SHA1\"}}" \
  --request POST \
  "https://circleci.com/api/v1/project/appplemac/two-repo-workflow-os-x/tree/master?circle-token=$CIRCLE_TOKEN"
