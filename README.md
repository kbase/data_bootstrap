data_bootstrap
==============

bootstrap for runtime data

The bootstrap for runtime data is designed using the same pattern
as the bootstrap for runtime software. There is a directory for
each data. In that directory, there is an installer. The installer
should pull data from shock, place it in the correct location
($target), and write an environment file into $target/env/<file>.sh.

A few conventions. Follow these if you can. There will be exceptions.

The directory name with the installers is in the form kb_<module>
The name of the build script(s) starts with data.<module>.sh
The name of the environment file is int he form <data.module-env.sh>

SIMPLE EXAMPLE: <module> = md5rna.clust
=======================================

data_bootstrap# ls kb_m5nr/
data.m5nr.clust.sh

data_bootstrap# more kb_m5nr/data.m5nr.clust.sh 
#!/bin/bash

target=/kb/druntime

if [[ $# -ne 0 ]] ; then
        target=$1
        shift
fi

# Create the deployment directories if they don't
# already exist.
mkdir -p $target
mkdir -p $target/env

# Download the data from the kbase data archive. This is
# supported by shock. We will use shock as the "staging"
# area for data in the runtime rather than pulling it
# directly from the source. This means that you have
# to pull it from the source and load it into shock.
# The metadata that accompanies the data into shock
# is defined in the json schema that resides in the docs
# directory of the data_bootstrap repo.
curl "http://140.221.84.150:8000/node/5df4e719-1818-4211-9bff-e94145a65da0?download" > md5nr.clust

# Deploy the data file to the correct location.
cp md5nr.clust $target


# Create the environment file. This contains any relevant
# environment variables that are known at the time of
# writing the installer program. Additional environment
# variables can be added here in the future.
echo "
export REFDBPATH=$target
" > $target/env/md5nr.clust-env.sh

