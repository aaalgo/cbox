#!/bin/bash

URL=$1

if [ -z "$URL" ]
then
  exit 1
fi

if echo $URL | grep github > /dev/null
then
  BN=`basename $URL`
  git clone $URL
fi

cd $BN
export CFLAGS="-fPIC -I/opt/cbox/include"
export CXXFLAGS="-fPIC -I/opt/cbox/include"
export LDFLAGS="-L/opt/cbox/lib"
cmake -DCMAKE_INSTALL_PREFIX:PATH=/opt/cbox -DCMAKE_C_FLAGS='-fPIC' -DCMAKE_CXX_FLAGS='-fPIC'
make
make install

