#!/bin/sh

if [ ! -f "binutils-$BINUTILSVER.tar.gz" ]; then
	wget https://ftp.gnu.org/gnu/binutils/binutils-$BINUTILSVER.tar.gz
fi

if [ ! -d "binutils-$BINUTILSVER" ]; then
	tar xvzf binutils-$BINUTILSVER.tar.gz
fi

if [ ! -d "build-binutils" ]; then
	mkdir build-binutils
fi

cd build-binutils

../binutils-$BINUTILSVER/configure --target=$TARGET --prefix="$PREFIX" --with-sysroot --disable-nls --disable-werror

make clean
make -j$NUMCPU
make install -j$NUMCPU

