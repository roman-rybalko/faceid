#!/bin/sh

set -e
set -x

mkdir -p /tmp/work
cd /tmp/work

wget http://$DATA_SRV/faceid_wheel_cp39.zip
unzip -d faceid_wheel_cp39 faceid_wheel_cp39.zip
pip install -f faceid_wheel_cp39 faceid_wheel_cp39/torch-* faceid_wheel_cp39/torchvision-* faceid_wheel_cp39/opencv_python-* faceid_wheel_cp39/matplotlib-* faceid_wheel_cp39/numpy-* faceid_wheel_cp39/pandas-*
pip install torchinfo
