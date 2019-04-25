#!/usr/bin/env sh

set -ev

echo PVS_PATH=$PVS_PATH
cd $PVS_PATH/nasalib
./typecheck-all
