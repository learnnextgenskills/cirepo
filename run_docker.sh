#!/bin/bash
echo "Creating Image"
if [ $# -ne 1 ]
     then echo "Illegal parameters"
     exit 1
fi
BUILD_NUMBER=$1
echo "Running with BUILD_NUM=" $BUILD_NUMBER
sudo docker build -t demo/pet:$BUILD_NUMBER .
sudo docker run -d --name t$BUILD_NUMBER --rm -p 8088:8080 demo/pet:$BUILD_NUMBER

