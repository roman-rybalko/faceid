#!/bin/sh

set -e
set -x

mkdir -p /tmp/work
cd /tmp/work

# torch-cuda
gdown -c https://drive.google.com/uc?id=10RWx5EodMLcRk9O9spQwtM0H7ydDDv4J
# torch-cudnn
#gdown -c https://drive.google.com/uc?id=1BqmRtld9s3bxO5TYa5eLfvbOibg3u6wQ

# torchvision
gdown -c https://drive.google.com/uc?id=1T1jGjT4K0YHD_8EpD1NRHytjjD10MBtW

pip install --no-input torch-* torchvision-*
