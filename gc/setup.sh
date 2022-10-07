#!/bin/sh

set -x

apt-get update
apt-get install -y mc screen wget zip unzip libgl1

pip install pandas torchvision==0.11.1 torchinfo gdown matplotlib opencv-python psutil joblib
