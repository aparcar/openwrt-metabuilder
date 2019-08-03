#!/bin/bash

export DOCKER_IMAGE="${DOCKER_IMAGE:-openwrt-metabuilder}"
DISTROS="${DISTROS:-alpine debian}"

[ -n "$DOCKER_USER" ] && [ -n "$DOCKER_PASS" ] && docker login -u "$DOCKER_USER" -p "$DOCKER_PASS"

for DIST in $DISTROS ; do
    docker build -t "$DOCKER_IMAGE:$DIST" -f ".ci/Dockerfile.$DIST" .
    [ -n "$DOCKER_USER" ] && [ -n "$DOCKER_PASS" ] &&  docker push "$DOCKER_IMAGE:$DIST" || true
done

