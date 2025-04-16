#!/bin/bash

SOURCE_PATH=$1

TAG_NAME=`date +%Y%m%d%H%M`

git tag $TAG_NAME
git push origin $TAG_NAME

docker build --tag zeul/interp.ia.api:dev-latest --tag zeul/interp.ia.api:$TAG_NAME "$SOURCE_PATH"
docker push zeul/interp.ia.api:dev-latest
docker push zeul/interp.ia.api:$TAG_NAME
