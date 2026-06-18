#!/bin/bash

set -euo pipefail

if [ "$#" -ne 1 ]; then
    echo "Usage: $0 <version>" >&2
    exit 1
fi

version=$1
platforms=linux/arm64,linux/amd64
images=(
    hackinglab/alpine-python-flask
    hackinglab/alpine-python-flask-hl
)

for image in "${images[@]}"; do
    docker buildx build --platform "$platforms" -t "$image:latest" . --push
    docker buildx build --platform "$platforms" -t "$image:$version" . --push
    docker buildx build --platform "$platforms" -t "$image:$version.0" . --push
done


