#!/bin/sh -x

# MODULE
SRCDIR=persistence-client-library

# STD SETUP
SCRIPTDIR=$(dirname "$0") ; . $SCRIPTDIR/build-common.sh

# MODULE SPECIFIC BUILD COMMANDS
buildstep autoreconf -vi
buildstep ./configure --enable-tests --prefix=$ROOTFS
buildstep make V=1 -j8
buildstep make V=1 install
