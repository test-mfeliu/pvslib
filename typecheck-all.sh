#!/usr/bin/env sh

set -ev

export PVS_DIR=/home/travis/build/test-mfeliu/pvslib/pvs
echo PVS_DIR=$PVS_DIR
export PATH=$PVS_DIR:$PATH
echo PATH=$PATH
cd $PVS_DIR/nasalib
pwd
./typecheck-all
cat ./nasalib.summaries
