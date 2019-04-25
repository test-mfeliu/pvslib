#!/usr/bin/env sh

export PVS_PATH=/home/travis/build/test-mfeliu/pvslib/pvs
echo PVS_PATH=$PVS_PATH
cd $PVS_PATH/nasalib
pwd
./typecheck-all
