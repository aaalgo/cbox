#!/bin/bash

URL=$1
shift

if [ -z "$URL" ]
then
  exit 1
fi

if echo $URL | grep github > /dev/null
then
  BN=`basename $URL`
  git clone $URL
  pushd $BN
  git submodule init
  git submodule update
  popd
fi

cd $BN
export CFLAGS="-fPIC -I/opt/cbox/include"
export CXXFLAGS="-fPIC -I/opt/cbox/include"
export LDFLAGS="-L/opt/cbox/lib"
cmake -DCMAKE_INSTALL_PREFIX:PATH=/opt/cbox -DCMAKE_C_FLAGS='-fPIC' -DCMAKE_CXX_FLAGS='-fPIC' $*
make

if make install
then
  true
else
  find . -name '*.a' -exec mv {} /opt/cbox/lib \;
  if [ -d include ]
  then
    mv include/* /opt/cbox/include
  fi
fi
