#!/bin/bash
BUILD_DATE=`date +%Y%m%d%H%M`
docker build --tag zeul/interp.log.api:dev-latest --tag zeul/interp.log.api:$BUILD_DATE .
docker push zeul/interp.log.api:dev-latest
docker push zeul/interp.log.api:$BUILD_DATE