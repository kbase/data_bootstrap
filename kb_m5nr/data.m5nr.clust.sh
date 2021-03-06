#!/bin/bash

target=${TARGET-/kb/data_runtime}

if [[ $# -ne 0 ]] ; then
        target=$1
        shift
	echo "overiding target with $target"
fi

echo "installing data in $target"

mkdir -p $target
mkdir -p $target/env

curl -o $target/md5nr.1 "http://140.221.84.150:8000/node/88bbdfd4-d412-45b3-83c8-e97d027871a9?download"

curl -o $target/md5nr.2 "http://140.221.84.150:8000/node/08956b07-0abc-4e4c-bb08-e2581744e30e?download"

curl -o $target/md5rna "http://140.221.84.150:8000/node/5ff0fd4f-90ed-4086-80a6-5a1cb85503a9?download" 

curl -o $target/md5nr.clust "http://140.221.84.150:8000/node/5df4e719-1818-4211-9bff-e94145a65da0?download" 


echo "
export REFDBPATH=$target:$REFDBPATH
" > $target/env/md5nr.clust-env.sh
