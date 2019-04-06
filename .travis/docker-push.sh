#!/bin/bash
echo $DOCKER_PASSWORD | docker login -u $DOCKER_USER --password-stdin
DOCKER_HUB_IMAGE=$DOCKER_USER/$DOCKER_IMAGE
docker tag $DOCKER_IMAGE $DOCKER_HUB_IMAGE
docker push $DOCKER_HUB_IMAGE
