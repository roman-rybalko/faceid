#!/bin/sh

set -e
set -x

mkdir -p /tmp/work
cd /tmp/work

sudo sed -i -e 's/1/0/' /etc/apt/apt.conf.d/20auto-upgrades

sudo ufw allow from 178.252.127.200
sudo ufw allow from 176.99.128.0/19
sudo ufw allow from 109.248.175.0/24
sudo ufw --force enable

#sudo mkdir -p /kaggle
#sudo chmod a+rwx,o+t /kaggle

#mkdir -p /tmp/work/kaggle
#sudo mount -o ro /dev/vdb /kaggle
