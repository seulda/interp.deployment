#!/bin/bash

SOURCE_PATH=$1

TAG_NAME=`date +%Y%m%d%H%M`

docker build --tag zeul/interp.ia.api:dev-latest --tag zeul/interp.ia.api:$TAG_NAME "$SOURCE_PATH"
docker push zeul/interp.ia.api:dev-latest
docker push zeul/interp.ia.api:$TAG_NAME

git remote set-url origin https://x-access-token:${GITHUB_TOKEN}@github.com/${GITHUB_REPOSITORY}.git
git config user.name "GitHub Actions"
git config user.email "actions@github.com"

git tag $TAG_NAME
git push origin $TAG_NAME
