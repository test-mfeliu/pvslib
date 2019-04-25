#!/usr/bin/env sh

mkdir pvs
cd pvs
curl -o ./pvs.tgz "http://pvs.csl.sri.com/cgi-bin/download.cgi?file=pvs-6.0-ix86_64-Linux-allegro.tgz&accept=I+accept"
tar xvfz ./pvs.tgz
ls
bin/relocate
export PVS_DIR=`pwd`
echo PVS_DIR=$PVS_DIR
export PATH=$PVS_DIR:$PATH
echo PATH=$PATH
ln -s .. nasalib
cd nasalib
#export PVS_LIBRARY_PATH=`pwd`
#echo PVS_LIBRARY_PATH=$PVS_LIBRARY_PATH
./install-scripts
proveit --help
ls

