#!/bin/sh

set -e
set -x

export PATH=$PATH:/usr/local/cuda/bin
export CMAKE_PREFIX_PATH=${CONDA_PREFIX:-"$(dirname $(which conda))/../"}
export BUILD_TEST=0
export TORCH_CUDA_ARCH_LIST='7.0;7.5;8.0;8.6;8.6+PTX'
#export USE_CUDNN=0

python setup.py bdist_wheel

ls -l dist/
