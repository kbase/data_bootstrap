#!/bin/bash

target=${TARGET-/kb/data_runtime}
organism="all"

if [[ $# -ne 0 ]] ; then
	echo $1
        target=$1
        shift
        echo "overiding target with $target"
fi

echo "installing data in $target"

mkdir -p $target
mkdir -p $target/env

if [[ "$organism" == "all" || "$organism" == "h_sapiens" ]] ; then
	curl -o $target/h_sapiens_asm.1.ebwt "http://140.221.84.150:8000/node/0d3e3406-36ea-4ae7-b943-279afb51c7d7?download" 
	curl -o $target/h_sapiens_asm.2.ebwt "http://140.221.84.150:8000/node/8595fbb8-f0f7-4e4d-b8a5-e1064493a4d3?download"
	curl -o $target/h_sapiens_asm.3.ebwt "http://140.221.84.150:8000/node/21a545e6-d802-4153-a5b7-943df62e92f0?download"
	curl -o $target/h_sapiens_asm.4.ebwt "http://140.221.84.150:8000/node/2070b750-2159-46d4-b42b-fa717ba4a635?download"
	curl -o $target/h_sapiens_asm.rev.1.ebwt "http://140.221.84.150:8000/node/0a79b7b3-a362-4f85-8b91-44bb3f4a25c5?download"
	curl -o $target/h_sapiens_asm.rev.2.ebwt "http://140.221.84.150:8000/node/920d71f9-7f15-4ceb-9a70-83151059026b?download"
fi;

if [[ "$organism" == "all" || "$organism" == "a_thaliana" ]] ; then
	curl -o $target/a_thaliana.1.ebwt "http://140.221.84.150:8000/node/5535158f-8958-4fcf-b19d-82fe579aa8c7?download"
	curl -o $target/a_thaliana.2.ebwt "http://140.221.84.150:8000/node/5535158f-8958-4fcf-b19d-82fe579aa8c7?download"
	curl -o $target/a_thaliana.3.ebwt "http://140.221.84.150:8000/node/742c623c-3bda-4fb6-9ec4-fd835ef1e64f?download"
	curl -o $target/a_thaliana.4.ebwt "http://140.221.84.150:8000/node/742c623c-3bda-4fb6-9ec4-fd835ef1e64f?download"
	curl -o $target/a_thaliana.rev.1.ebwt "http://140.221.84.150:8000/node/03c0fc3e-52d0-402b-ae38-3720f52b53dd?download"
	curl -o $target/a_thaliana.rev.2.ebwt "http://140.221.84.150:8000/node/ddacc094-dbbf-460d-99b4-2c46d9b288f9?download"
fi;

if [[ "$organism" == "all" || "$organism" == "b_taurus" ]] ; then
	curl -o $target/b_taurus.1.ebwt "http://140.221.84.150:8000/node/9942cdae-f2db-45b9-9aef-fe7fb15ba7cf?download"
	curl -o $target/b_taurus.2.ebwt "http://140.221.84.150:8000/node/ec3ba3e1-9350-474d-ac45-82a20b9e3dfe?download"
	curl -o $target/b_taurus.3.ebwt "http://140.221.84.150:8000/node/9b14d6d8-af84-478a-a597-ac5f07a9291a?download"
	curl -o $target/b_taurus.4.ebwt "http://140.221.84.150:8000/node/4a72833b-2fd0-4e99-acad-d5e769900951?download"
	curl -o $target/b_taurus.rev.1.ebwt "http://140.221.84.150:8000/node/1f6fcb68-df7d-46e7-8322-8482d5592e76?download"
	curl -o $target/b_taurus.rev.2.ebwt "http://140.221.84.150:8000/node/f38d8819-68d2-462b-9125-e36c2a593e88?download"
fi;

if [[ "$organism" == "all" || "$organism" == "d_melanogaster" ]] ; then
	curl -o $target/d_melanogaster_fb5_22.1.ebwt "http://140.221.84.150:8000/node/552a9c6b-0766-424f-957f-5eaa5dd3ac39?download"
	curl -o $target/d_melanogaster_fb5_22.2.ebwt "http://140.221.84.150:8000/node/2e0daecd-a58f-44ab-b918-95d7ddb300e1?download"
	curl -o $target/d_melanogaster_fb5_22.3.ebwt "http://140.221.84.150:8000/node/bd415887-a765-4397-bad7-8ee1e0d78fb8?download"
	curl -o $target/d_melanogaster_fb5_22.4.ebwt "http://140.221.84.150:8000/node/3e05af8d-69f2-4f47-9c6b-1d920e8a75a8?download"
	curl -o $target/d_melanogaster_fb5_22.rev.1.ebwt "http://140.221.84.150:8000/node/d45c5c08-b4b2-4f24-8f98-8fa67766284d?download"
	curl -o $target/d_melanogaster_fb5_22.rev.2.ebwt "http://140.221.84.150:8000/node/5615e2b1-acd0-4dce-a8a3-73839f07a993?download"
fi;

if [[ "$organism" == "all" || "$organism" == "e_coli" ]] ; then
	curl -o $target/e_coli.1.ebwt "http://140.221.84.150:8000/node/8896ac28-483e-453d-81af-161fefaf8a16?download"
	curl -o $target/e_coli.2.ebwt "http://140.221.84.150:8000/node/77c1fc3d-69a2-470a-a22c-90da9db010c8?download"
	curl -o $target/e_coli.3.ebwt "http://140.221.84.150:8000/node/7015bb6a-58c4-4735-8211-42ad2d69ae85?download"
	curl -o $target/e_coli.4.ebwt "http://140.221.84.150:8000/node/1c4e60fa-7de1-4c91-8a5d-7bdd8c9f9af5?download"
	curl -o $target/e_coli.rev.1.ebwt "http://140.221.84.150:8000/node/81a1e3aa-931b-4119-92c0-77f0d5e31b5e?download"
	curl -o $target/e_coli.rev.2.ebwt "http://140.221.84.150:8000/node/9ee5d04d-3925-4632-9f7d-c58d20233f44?download"
fi;

if [[ "$organism" == "all" || "$organism" == "m_musculus" ]] ; then
	curl -o $target/m_musculus_ncbi37.1.ebwt "http://140.221.84.150:8000/node/309f2225-9c30-4ede-b7cb-7f5ac18ed41c?download"
	curl -o $target/m_musculus_ncbi37.2.ebwt "http://140.221.84.150:8000/node/9ed3e83b-8f32-4716-9b40-e20d4e524893?download"
	curl -o $target/m_musculus_ncbi37.3.ebwt "http://140.221.84.150:8000/node/c66f8d3c-a32b-47a2-ab90-35de33ba2a46?download"
	curl -o $target/m_musculus_ncbi37.4.ebwt "http://140.221.84.150:8000/node/1229881b-e9b6-460c-9c7b-8c16758e7491?download"
	curl -o $target/m_musculus_ncbi37.rev.1.ebwt "http://140.221.84.150:8000/node/e0960cfa-980e-4528-977b-c42ed0f8b343?download"
	curl -o $target/m_musculus_ncbi37.rev.2.ebwt "http://140.221.84.150:8000/node/7bb2fdda-12a0-4495-80ff-7069d712900?download"
fi;

if [[ "$organism" == "all" || "$organism" == "s_scrofa" ]] ; then
	curl -o $target/s_scrofa_ncbi10.2.1.ebwt "http://140.221.84.150:8000/node/c39afcb4-2363-4f97-b3ce-85529cb5dda4?download"
	curl -o $target/s_scrofa_ncbi10.2.2.ebwt "http://140.221.84.150:8000/node/44a759c3-304c-4240-9472-39a99fbf0dea?download"
	curl -o $target/s_scrofa_ncbi10.2.3.ebwt "http://140.221.84.150:8000/node/f5d22fe4-846d-471b-b46b-0eb4e60e608d?download"
	curl -o $target/s_scrofa_ncbi10.2.4.ebwt "http://140.221.84.150:8000/node/40529869-6335-494e-ae37-24617a198078?download"
	curl -o $target/s_scrofa_ncbi10.2.rev.1.ebwt "http://140.221.84.150:8000/node/4d4f9f59-cdb2-4736-9d8a-34cf84dd3d85?download"
	curl -o $target/s_scrofa_ncbi10.2.rev.2.ebwt "http://140.221.84.150:8000/node/06243e07-e8c2-48e3-b966-9b0de5c1fad8?download"
fi;

echo "
export REFDBPATH=$target:$REFDBPATH
export BOWTIE1_INDEXES=$target
export BOWTIE_INDEXES=\$BOWTIE1_INDEXES

" > $target/env/bowtie1-env.sh

