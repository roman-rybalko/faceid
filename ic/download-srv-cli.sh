#!/bin/sh

set -e
set -x

sudo mkdir -p /kaggle
sudo chmod a+rwx,o+t /kaggle

mkdir -p /tmp/work
cd /tmp/work

mkdir -p /kaggle/input

wget http://$DATA_SRV/torchvision-resnet-pretrained.zip
unzip -d /kaggle/input/torchvision-resnet-pretrained torchvision-resnet-pretrained.zip

#wget http://$DATA_SRV/youtube-faces-with-facial-keypoints.zip
#unzip -d /kaggle/input/youtube-faces-with-facial-keypoints youtube-faces-with-facial-keypoints.zip

#wget http://$DATA_SRV/faceid-preprocessed-small.zip
#unzip -d /kaggle/input/faceid-preprocessed-small faceid-preprocessed-small.zip
#mkdir /kaggle/input/faceid-preprocessed-small/tmp
#mv -v /kaggle/input/faceid-preprocessed-small/*.pkl /kaggle/input/faceid-preprocessed-small/tmp/
#mv -vf /kaggle/input/faceid-preprocessed-small/tmp/*/*.pkl /kaggle/input/faceid-preprocessed-small/

wget http://$DATA_SRV/faceid-preprocessed.zip
unzip -d /kaggle/input/faceid-preprocessed faceid-preprocessed.zip
mv -vf /kaggle/input/faceid-preprocessed/*/*/*/*.pkl /kaggle/input/faceid-preprocessed/
mv -vf /kaggle/input/faceid-preprocessed/*/*/*/*.csv /kaggle/input/faceid-preprocessed/
