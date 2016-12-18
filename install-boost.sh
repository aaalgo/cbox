#!/bin/bash

URL=http://downloads.sourceforge.net/project/boost/boost/1.62.0/boost_1_62_0.tar.bz2
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

export CFLAGS=-fPIC
export CXXFLAGS=-fPIC
./bootstrap.sh
./b2 cxxflags="-fPIC" variant=release link=static threading=multi runtime-link=static --prefix=/opt/cbox install
