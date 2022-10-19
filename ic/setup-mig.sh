#!/bin/sh

set -e
set -x

mkdir -p /tmp/work
cd /tmp/work

[ `id -u` = 0 ] || exec sudo sh $0

cnt=`nvidia-smi -L | grep -v MIG | wc -l`

service gdm stop || true

i=0
while [ $i -lt $cnt ]; do
    nvidia-smi -i $i | grep 'No running processes found'
    ! nvidia-smi -i $i | grep Xorg
    i=`expr $i + 1`
done

i=0
while [ $i -lt $cnt ]; do
    nvidia-smi -i $i -mig 1
    nvidia-smi mig -i $i -cgi 19,19,19,19,19,19,19 -C
    i=`expr $i + 1`
done
