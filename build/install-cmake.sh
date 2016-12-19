#!/bin/bash

URL=$1
shift

if [ -z "$URL" ]
then
  exit 1
fi

FN=`basename $URL`

# guess ext
if echo $FN | grep '.zip$' > /dev/null
then
  EXT=.zip
elif echo $FN | grep '.tar' > /dev/null
then
  EXT=`echo $FN | grep -o '\.tar.*$'`
fi
BN=`basename $FN $EXT`

if [ ! -f $BN ]
then
  if echo $URL | grep github
  then
    git clone $URL
    pushd $BN
    git submodule init
    git submodule update
    popd
  else
	  if [ ! -f $FN ]
	  then
	    wget "$URL" -O $FN
	  fi
	  if [ $EXT == .zip ]
	  then
	    unzip $FN
	  else
	    tar xf $FN
	  fi
  fi
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
