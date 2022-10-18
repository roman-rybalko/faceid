#!/bin/sh

set -e
set -x

mkdir -p /tmp/work
cd /tmp/work

#wget -c https://developer.download.nvidia.com/compute/cuda/11.6.2/local_installers/cuda-repo-ubuntu2004-11-6-local_11.6.2-510.47.03-1_amd64.deb
gdown -c https://drive.google.com/uc?id=1hYEWM35RpaHEXs25oyyt84Sdz6-swRPj
sudo dpkg -i cuda-repo-*.deb
sudo apt-key add /var/cuda-repo-ubuntu2004-11-6-local/7fa2af80.pub
sudo apt-get update
sudo apt-get install -y cuda-11-6

gdown -c https://drive.google.com/uc?id=1Y2udP74xnqe3QUNBCKHPR7nDdMOQEhRS
sudo dpkg -i cudnn-local-repo-*.deb
sudo cp /var/cudnn-local-repo-ubuntu2004-8.6.0.163/cudnn-local-B0FE0A41-keyring.gpg /usr/share/keyrings/
sudo apt-get update
sudo apt-get install -y libcudnn8
