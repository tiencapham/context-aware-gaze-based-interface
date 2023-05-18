#!/bin/sh

if [ -n "$DESTDIR" ] ; then
    case $DESTDIR in
        /*) # ok
            ;;
        *)
            /bin/echo "DESTDIR argument must be absolute... "
            /bin/echo "otherwise python's distutils will bork things."
            exit 1
    esac
fi

echo_and_run() { echo "+ $@" ; "$@" ; }

echo_and_run cd "/home/learnlab/catkin_ws_openface/src/vision_opencv/image_geometry"

# ensure that Python install destination exists
echo_and_run mkdir -p "$DESTDIR/home/learnlab/catkin_ws_openface/install/lib/python3/dist-packages"

# Note that PYTHONPATH is pulled from the environment to support installing
# into one location when some dependencies were installed in another
# location, #123.
echo_and_run /usr/bin/env \
    PYTHONPATH="/home/learnlab/catkin_ws_openface/install/lib/python3/dist-packages:/home/learnlab/catkin_ws_openface/build/lib/python3/dist-packages:$PYTHONPATH" \
    CATKIN_BINARY_DIR="/home/learnlab/catkin_ws_openface/build" \
    "/usr/bin/python3" \
    "/home/learnlab/catkin_ws_openface/src/vision_opencv/image_geometry/setup.py" \
    egg_info --egg-base /home/learnlab/catkin_ws_openface/build/vision_opencv/image_geometry \
    build --build-base "/home/learnlab/catkin_ws_openface/build/vision_opencv/image_geometry" \
    install \
    --root="${DESTDIR-/}" \
    --install-layout=deb --prefix="/home/learnlab/catkin_ws_openface/install" --install-scripts="/home/learnlab/catkin_ws_openface/install/bin"
