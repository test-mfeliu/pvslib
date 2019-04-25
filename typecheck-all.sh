#!/usr/bin/env sh

echo PVS_PATH=$PVS_PATH
cd $PVS_PATH/nasalib
./typecheck-all
