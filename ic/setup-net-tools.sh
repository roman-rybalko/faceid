#!/bin/sh

set -e
set -x

sudo apt-get update
sudo apt-get install -y ifstat net-tools
