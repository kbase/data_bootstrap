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

curl "http://140.221.84.150:8000/node/0d3e3406-36ea-4ae7-b943-279afb51c7d7?download" > h_sapiens_asm.1.ebwt
mv h_sapiens_asm.1.ebwt $target/

curl "http://140.221.84.150:8000/node/8595fbb8-f0f7-4e4d-b8a5-e1064493a4d3?download" > h_sapiens_asm.2.ebwt
mv h_sapiens_asm.2.ebwt $target/

curl "http://140.221.84.150:8000/node/21a545e6-d802-4153-a5b7-943df62e92f0?download" > h_sapiens_asm.3.ebwt
mv h_sapiens_asm.3.ebwt $target/

curl "http://140.221.84.150:8000/node/2070b750-2159-46d4-b42b-fa717ba4a635?download" > h_sapiens_asm.4.ebwt
mv h_sapiens_asm.4.ebwt $target/

curl "http://140.221.84.150:8000/node/0a79b7b3-a362-4f85-8b91-44bb3f4a25c5?download" > h_sapiens_asm.rev.1.ebwt
mv h_sapiens_asm.rev.1.ebwt $target/

curl "http://140.221.84.150:8000/node/920d71f9-7f15-4ceb-9a70-83151059026b?download" > h_sapiens_asm.rev.2.ebwt
mv h_sapiens_asm.rev.2.ebwt $target/



echo "
export REFDBPATH=$target:$REFDBPATH
export BOWTIE1_INDEXES=$target
export BOWTIE_INDEXES=\$BOWTIE1_INDEXES

" > $target/env/bowtie1-env.sh
