#!/bin/bash

target=/kb/druntime

if [[ $# -ne 0 ]] ; then
        target=$1
        shift
fi

mkdir -p $target
mkdir -p $target/env

curl "http://140.221.84.150:8000/node/5df4e719-1818-4211-9bff-e94145a65da0?download" > md5nr.clust

cp md5nr.clust $target/

echo "
export REFDBPATH=$target
" > $target/env/md5nr.clust-env.sh
