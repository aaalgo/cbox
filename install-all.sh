#!/bin/bash

./install-boost.sh
./install-conf.sh http://download.savannah.gnu.org/releases/libunwind/libunwind-1.1.tar.gz
./install-conf.sh http://mirror.clarkson.edu/gnu/gsl/gsl-2.3.tar.gz
./install-openblas.sh
./install-conf.sh http://www.fftw.org/fftw-3.3.5.tar.gz --disable-doc --enable-single --enable-sse --enable-sse2 
./install-conf.sh http://downloads.sourceforge.net/project/libjpeg-turbo/1.5.1/libjpeg-turbo-1.5.1.tar.gz
./install-conf.sh http://download.savannah.gnu.org/releases/libunwind/libunwind-1.1.tar.gz
./install-conf.sh http://downloads.sourceforge.net/project/lame/lame/3.99/lame-3.99.5.tar.gz
./install-conf.sh https://libav.org/releases/libav-12.tar.xz --enable-sse2 --disable-sse3 --disable-sse4 --disable-sse42 --disable-avx --disable-avx2 --disable-avdevice  --disable-indevs --disable-outdevs --disable-everything --enable-encoder=libmp3lame --enable-encoder=pcm_f32be --enable-encoder=pcm_f32le --enable-encoder=pcm_s16be --enable-encoder=pcm_s16le --enable-encoder=pcm_u16be --enable-encoder=pcm_u16le --enable-decoder=aac --enable-decoder=mp3 --enable-demuxer=aac --enable-demuxer=wav --enable-demuxer=mp3 --enable-muxer=wav --enable-muxer=mp3 --enable-demuxer=flv --enable-filter=resample --enable-filter=aformat --enable-filter=amix --enable-parser=aac  --disable-mmx --disable-amd3dnow --disable-mmxext --disable-amd3dnowext --enable-libmp3lame --disable-demuxer=asf --disable-demuxer=mov --disable-demuxer=rm --disable-demuxer=rtsp --disable-muxer=ffm --disable-protocols --enable-protocol=file
./install-conf.sh http://prdownloads.sourceforge.net/libpng/libpng-1.6.26.tar.xz
./install-conf.sh http://dl.maptools.org/dl/libtiff/tiff-3.8.2.tar.gz
./install-cmake.sh https://github.com/gflags/gflags
./install-cmake.sh https://github.com/google/re2
./install-cmake.sh https://github.com/google/glog
./install-cmake.sh https://github.com/fmtlib/fmt
MAKE_SUFFIX=PREFIX=/opt/cbox ./install-conf.sh http://www.bzip.org/1.0.6/bzip2-1.0.6.tar.gz
./install-conf.sh http://zlib.net/zlib-1.2.8.tar.gz
./install-conf.sh https://storage.googleapis.com/downloads.webmproject.org/releases/webp/libwebp-0.5.1.tar.gz
RECONF=1 ./install-conf.sh https://github.com/threatstack/libmagic
RECONF=1 ./install-conf.sh https://github.com/gperftools/gperftools
./install-openssl.sh
./install-conf.sh https://curl.haxx.se/download/curl-7.51.0.tar.gz --with-ssl=/opt/cbox/ssl
./install-conf.sh http://download.savannah.gnu.org/releases/freetype/freetype-2.7.tar.gz
./install-conf.sh http://downloads.sourceforge.net/project/giflib/giflib-5.1.4.tar.bz2
./install-conf.sh http://download.savannah.nongnu.org/releases/openexr/ilmbase-2.2.0.tar.gz
./install-conf.sh http://download.savannah.nongnu.org/releases/openexr/openexr-2.2.0.tar.gz --disable-ilmbasetest 
./install-cmake.sh https://www.ece.uvic.ca/~frodo/jasper/software/jasper-2.0.6.tar.gz -DALLOW_IN_SOURCE_BUILD=ON
./install-conf.sh https://pocoproject.org/releases/poco-1.7.6/poco-1.7.6.tar.gz
./install-cmake.sh https://github.com/tplgy/cppcodec
./install-cmake.sh https://github.com/datasift/served -DRE2_INCLUDE_DIR=/opt/cbox/include -DRE2_LIBRARY=/opt/cbox/lib/libre2.a -DSERVED_BUILD_TESTS=OFF -DSERVED_BUILD_STATIC=ON -DSERVED_BUILD_SHARED=OFF
./install-cmake.sh https://github.com/dropbox/json11
./install-cmake.sh https://github.com/tplgy/cppcodec
./install-cmake.sh https://github.com/aaalgo/ezcurl
./install-opencv.sh
