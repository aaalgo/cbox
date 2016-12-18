#!/bin/bash

./install-conf.sh http://download.savannah.gnu.org/releases/libunwind/libunwind-1.1.tar.gz
./install-conf.sh http://mirror.clarkson.edu/gnu/gsl/gsl-2.3.tar.gz
./install-conf.sh http://downloads.sourceforge.net/project/libjpeg-turbo/1.5.1/libjpeg-turbo-1.5.1.tar.gz
./install-conf.sh http://download.savannah.gnu.org/releases/libunwind/libunwind-1.1.tar.gz
./install-conf.sh http://downloads.sourceforge.net/project/lame/lame/3.99/lame-3.99.5.tar.gz
./install-conf.sh https://libav.org/releases/libav-12.tar.xz --enable-sse2 --disable-sse3 --disable-sse4 --disable-sse42 --disable-avx --disable-avx2 --disable-avdevice  --disable-indevs --disable-outdevs --disable-everything --enable-encoder=libmp3lame --enable-encoder=pcm_f32be --enable-encoder=pcm_f32le --enable-encoder=pcm_s16be --enable-encoder=pcm_s16le --enable-encoder=pcm_u16be --enable-encoder=pcm_u16le --enable-decoder=aac --enable-decoder=mp3 --enable-demuxer=aac --enable-demuxer=wav --enable-demuxer=mp3 --enable-muxer=wav --enable-muxer=mp3 --enable-demuxer=flv --enable-filter=resample --enable-filter=aformat --enable-filter=amix --enable-parser=aac  --disable-mmx --disable-amd3dnow --disable-mmxext --disable-amd3dnowext --enable-libmp3lame --disable-demuxer=asf --disable-demuxer=mov --disable-demuxer=rm --disable-demuxer=rtsp --disable-muxer=ffm --disable-protocols --enable-protocol=file
./install-conf.sh http://prdownloads.sourceforge.net/libpng/libpng-1.6.26.tar.xz
./install-conf.sh http://dl.maptools.org/dl/libtiff/tiff-3.8.2.tar.gz
./install-cmake.sh https://github.com/gflags/gflags
./install-cmake.sh https://github.com/google/re2
./install-cmake.sh https://github.com/fmtlib/fmt
./install-cmake.sh https://github.com/webmproject/libwebp.git
./install-conf.sh http://zlib.net/zlib-1.2.8.tar.gz
