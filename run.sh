#!/bin/bash

apt update && apt install -y sudo
sudo apt update
sudo apt install -y build-essential ccache ecj fastjar file g++ gawk \
gettext git java-propose-classpath libelf-dev libncurses5-dev \
libncursesw5-dev libssl-dev python python2.7-dev python3 unzip wget \
python3-distutils python3-setuptools python3-dev rsync subversion \
swig time xsltproc zlib1g-dev \
asciidoc binutils bzip2 libz-dev patch python2.7 \
lib32gcc1 libc6-dev-i386 flex uglifyjs git-core gcc-multilib \
p7zip p7zip-full msmtp texinfo libglib2.0-dev xmlto qemu-utils \
upx autoconf automake libtool autopoint device-tree-compiler \
g++-multilib antlr3 gperf curl \
clang-12 mkisofs \
libpam-dev liblzma-dev 

./scripts/feeds update -a
./scripts/feeds install -a

chmod +x config.sh
./config.sh

make defconfig
#cat .config

make download -j$(nproc) BUILD_LOG=1
make tools/install -j$(nproc) BUILD_LOG=1
make -j$(nproc) BUILD_LOG=1
# V=s

tar -cvf ipq807xx-images.tar bin/targets/ipq807x/generic