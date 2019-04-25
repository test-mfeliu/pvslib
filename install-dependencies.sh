#!/usr/bin/env sh

export PVS_LIBRARY_PATH=`pwd`
echo PVS_LIBRARY_PATH=$PVS_LIBRARY_PATH
mkdir pvs
cd pvs
curl -o ./pvs.tgz "http://pvs.csl.sri.com/cgi-bin/download.cgi?file=pvs-6.0-ix86_64-Linux-allegro.tgz&accept=I+accept"
tar xvfz ./pvs.tgz
bin/relocate
export PVS_PATH=`pwd`
echo PVS_PATH=$PVS_PATH
cd ..
export PATH=$PVS_PATH:$PATH
echo PATH=$PATH
./install-scripts
ls

