#!/bin/bash
docker run -it --rm -v $HOME:/data --network=bridge --publish 127.0.0.1:8888:8888 --device=/dev/kfd --device=/dev/dri --group-add video --ipc=host --shm-size 8G pytorch