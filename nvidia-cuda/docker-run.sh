#!/bin/bash

set -ex

export IMAGE_NAME="mathsrocks/nvidia-cuda"
export CUDA_VERSION="11.2.0"
export OS="ubuntu20.04"
export CUDA_FLAVOUR="cudnn8-jupylab"

docker run -it --gpus all --net=host -v "$1":/jupyter ${IMAGE_NAME}:${CUDA_VERSION}-${CUDA_FLAVOUR}-${OS}
