#!/bin/bash
# Get user id, group, name
USER_ID=$(id -u)
USER_GROUP=$(id -g)
USER_NAME=docker_$(id -u -n)

# run docker container
docker run \
    --rm -it \
    --gpus all \
    -u $USER_ID:$USER_GROUP \
    -v $(pwd):/workspace \
    -w /workspace \
    --name torch_jlab_`date "+%Y%m%d_%H%M%S"` \
    -p 7777:8888 \
    pytorch/jlab:1.5-10.1-cudnn7-devel \
    jupyter lab --ip 0.0.0.0 --allow-root --no-browser 
    #"python3 mnist-cnn.py"