#!/usr/bin/env sh

set -ev

export PVS_DIR=/home/travis/build/test-mfeliu/pvslib/pvs
echo PVS_DIR=$PVS_DIR
export PATH=$PVS_DIR:$PATH
echo PATH=$PATH
cd $PVS_DIR/nasalib
pwd

provethem="../provethem"

if [ ! -x $provethem ]; then
    provethem=`which provethem`
fi

if [ "$provethem" ]; then
  $provethem --clean $* nasalib.all
  $provethem --clearpath --addpath --typecheck $* 
else
  echo "Directory where PVS is installed must be in the environment variable PATH for this command to work"
fi

ls
