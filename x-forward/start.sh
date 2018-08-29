#!/bin/bash

# prepare xhost
xhost +local:

# bind mount xsock
XSOCK=/tmp/.X11-unix

# run docker
docker run --rm -v $XSOCK:$XSOCK -e DISPLAY=$DISPLAY $1

# restore xhost
xhost -local:
