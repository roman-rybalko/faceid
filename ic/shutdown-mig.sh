#!/bin/sh

#set -e
set -x

mkdir -p /tmp/work
cd /tmp/work

[ `id -u` = 0 ] || exec sudo sh $0

cnt=`nvidia-smi -L | grep -v MIG | wc -l`
i=0
while [ $i -lt $cnt ]; do
    nvidia-smi -i $i -mig 0
    i=`expr $i + 1`
done

nvidia-smi -L
