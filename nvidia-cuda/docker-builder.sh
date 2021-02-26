#!/bin/bash

set -ex

export IMAGE_NAME="mathsrocks/nvidia-cuda"
export CUDA_VERSION="11.2.0"
export OS="ubuntu20.04"
export CUDA_FLAVOUR="cudnn8-jupylab"

docker build -t "${IMAGE_NAME}:${CUDA_VERSION}-${CUDA_FLAVOUR}-${OS}" -f .docker/Dockerfile.jupyter .

docker login

docker push ${IMAGE_NAME}:${CUDA_VERSION}-${CUDA_FLAVOUR}-${OS}
