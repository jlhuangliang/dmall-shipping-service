#!/usr/bin/env bash

docker build -t $DMALL_DOCKER_REGISTRY/dmall/product-service:$BUILD_NUMBER .
docker tag $DMALL_DOCKER_REGISTRY/dmall/product-service:$BUILD_NUMBER $DMALL_DOCKER_REGISTRY/dmall/product-service:latest

docker push $DMALL_DOCKER_REGISTRY/dmall/product-service:$BUILD_NUMBER
docker push $DMALL_DOCKER_REGISTRY/dmall/product-service:latest

