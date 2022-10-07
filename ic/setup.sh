#!/bin/sh

set -e
set -x

mkdir -p /tmp/work
cd /tmp/work

pip install gdown
gdown https://drive.google.com/uc?id=1Ngzxy2w4ZLARy6TB6MgiQKwE1c6dBkzv
unzip -d faceid_wheel_cp39 faceid_wheel_cp39.zip
pip install -f faceid_wheel_cp39 faceid_wheel_cp39/torch-* faceid_wheel_cp39/torchvision-* faceid_wheel_cp39/opencv_python-* faceid_wheel_cp39/matplotlib-* faceid_wheel_cp39/numpy-* faceid_wheel_cp39/pandas-*
pip install torchinfo
