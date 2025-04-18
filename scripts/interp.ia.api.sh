#!/bin/bash

SOURCE_PATH=$1
TAG_NAME=$2

docker build --tag zeul/interp.ia.api:dev-latest --tag zeul/interp.ia.api:$TAG_NAME "$SOURCE_PATH"
docker push zeul/interp.ia.api:dev-latest
docker push zeul/interp.ia.api:$TAG_NAME
