#!/bin/sh
docker login -u $DOCKER_USER -p $DOCKER_PASS
docker build -f Dockerfile -t $GITHUB_REPOSITORY:$GITHUB_SHA .
docker push $GITHUB_REPOSITORY:$GITHUB_SHA