#!/bin/sh

set -e
set -x

mkdir -p /tmp/work
cd /tmp/work

#conda install -c pytorch-nightly --freeze-installed -y pytorch torchvision cudatoolkit=11 matplotlib numpy pandas

gdown -c https://drive.google.com/uc?id=1Ngzxy2w4ZLARy6TB6MgiQKwE1c6dBkzv
unzip -d faceid_wheel_cp39 faceid_wheel_cp39.zip
#pip install -f faceid_wheel_cp39 --no-input faceid_wheel_cp39/torch-* faceid_wheel_cp39/torchvision-* faceid_wheel_cp39/opencv_python-* faceid_wheel_cp39/matplotlib-* faceid_wheel_cp39/numpy-* faceid_wheel_cp39/pandas-*
pip install -f faceid_wheel_cp39 --no-input faceid_wheel_cp39/opencv_python-*
pip install --no-input torchinfo
