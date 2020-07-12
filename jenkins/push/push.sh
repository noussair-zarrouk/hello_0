#!/bin/bash

echo "********************"
echo "** Pushing image ***"
echo "********************"

IMAGE="maven-project"

echo "** Logging in ***"
docker login -u login -p $PASS
echo "*** Tagging image ***"
docker tag $IMAGE:$BUILD_TAG login /$IMAGE:$BUILD_TAG
echo "*** Pushing image ***"
docker push login/$IMAGE:$BUILD_TAG
