#!/bin/bash

URL=https://github.com/xianyi/OpenBLAS
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
export LDFLAGS="-L/opt/cbox/lib -L/opt/cbox/lib64"

make TARGET=NEHALEM
make install PREFIX=/opt/cbox
