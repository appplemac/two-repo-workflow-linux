#!/bin/bash
set -x

curl \
  --header "Content-Type: application/json" \
  --data "{'build_parameters': {'GIT_REVISION': '$CIRCLE_SHA1'}}" \
  --request POST \
  "https://circleci.com/api/v1/project/appplemac/two-repo-workflow-osx/tree/master?circle-token=$CIRCLE_TOKEN"
