#!/bin/bash

TAG_NAME=`date +%Y%m%d%H%M`

#git tag $TAG_NAME
#git push origin $TAG_NAME

docker build --tag zeul/interp.log.api:dev-latest --tag zeul/interp.log.api:$TAG_NAME .
docker push zeul/interp.log.api:dev-latest
docker push zeul/interp.log.api:$TAG_NAME