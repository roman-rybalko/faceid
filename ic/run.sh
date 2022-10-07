#!/bin/sh

set -x

# No spaces in paths

out=$2
[ -n "$out" ] || out=`basename $1 .ipynb`_out.ipynb

if [ -z "$LOG" ]; then
    export LOG=1
    exec $0 $@ >$out-log.txt 2>&1
fi

python run.py $1 $out .
ec=$?

exit $ec
