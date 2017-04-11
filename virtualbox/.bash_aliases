alias virtualbox="docker start virtualbox || docker run -d -v /tmp/.X11-unix:/tmp/.X11-unix -v /home/alan/vm:/temp -e DISPLAY=unix$DISPLAY --privileged --name virtualbox jess/virtualbox"
