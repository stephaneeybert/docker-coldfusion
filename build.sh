#!/bin/bash -x

docker build -t stephaneeybert/coldfusion:latest --rm=true .
if [ $? -eq 0 ]; then
docker tag stephaneeybert/coldfusion:latest localhost:5000/coldfusion:latest
docker push localhost:5000/coldfusion:latest
docker tag stephaneeybert/coldfusion:latest thalasoft.com:5000/coldfusion:latest
#docker push thalasoft.com:5000/coldfusion:latest
fi
