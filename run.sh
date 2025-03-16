#!/bin/bash

# This script is used to run commands inside a Docker container.
# e.g. sh run.sh ls

# Command Notes:
# jekyll new --skip-bundle .
# bundle install

# ruby version in jekyll/jekyll image is too old
IMAGE_NAME="jekyll"
if ! docker images | grep -q "$IMAGE_NAME"; then
  docker build -t "$IMAGE_NAME" .
fi
docker run --rm \
    -v $(pwd)/docs:/srv/jekyll \
    -w /srv/jekyll \
    -it \
    $IMAGE_NAME "$@"