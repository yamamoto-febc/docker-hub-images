#!/bin/bash

PROJECT=$1
BRANCH=$2
CIRCLE_TOKEN=$3

curl -H "Content-Type: application/json" \
  --data "{\"source_type\": \"Branch\", \"source_name\": \"${BRANCH}\"}" \
  -X POST "https://registry.hub.docker.com/u/${PROJECT}/trigger/${CIRCLE_TOKEN}/"
