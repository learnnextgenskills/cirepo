#!/bin/bash
echo "Creating Image"
if [ $# -ne 1 ]
     then echo "Illegal parameters"
     exit 1
fi
BUILD_NUMBER=$1
echo "Running with BUILD_NUM=" $BUILD_NUM
docker build -t demo/pet:$BUILD_NUM .
docker run -d name t1 --rm -p 8088:8080 demo/pet

