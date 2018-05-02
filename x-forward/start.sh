# prepare xhost
xhost +local:

# prepare xauth
XSOCK=/tmp/.X11-unix
#XAUTH=/tmp/.docker.xauth
#xauth nlist $DISPLAY | sed -e 's/^..../ffff/' | xauth -f $XAUTH nmerge -

# run docker
# docker run --rm -ti -v $XSOCK:$XSOCK -v $XAUTH:$XAUTH -e XAUTHORITY=$XAUTH -e DISPLAY=$DISPLAY $1
docker run --rm -ti -v $XSOCK:$XSOCK -e DISPLAY=$DISPLAY $1

# prepare xhost
xhost -local:
