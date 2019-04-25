#!/usr/bin/env sh

export PVS_PATH=/home/travis/build/test-mfeliu/pvslib/pvs
echo PVS_PATH=$PVS_PATH
export PATH=$PVS_PATH:$PATH
echo PATH=$PATH
cd $PVS_PATH/nasalib
pwd
./typecheck-all
