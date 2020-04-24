#!/bin/bash
echo "********pushing Image**********"
IMAGE="mavan"

echo "*******docker login*******"

docker login -u 22071986 -p $PASS

echo "********tag in image******"

docker tag $IMAGE:$BUILD_TAG  22071986/$IMAGE:$BUILD_TAG

docker push 22071986/$IMAGE:$BUILD_TAG
