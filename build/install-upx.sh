#!/bin/bash

if [ ! -f upx-3.92-amd64_linux.tar.xz ]
then
wget https://github.com/upx/upx/releases/download/v3.92/upx-3.92-amd64_linux.tar.xz
fi
tar xf upx-3.92-amd64_linux.tar.xz
cp upx-3.92-amd64_linux/upx /opt/cbox/bin/
