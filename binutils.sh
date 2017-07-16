#!/bin/sh

if [ ! -d "binutils-$BINUTILSVER" ]; then
	wget ftp://ftp.gnu.org/gnu/binutils/binutils-$BINUTILSVER.tar.gz
	tar xvzf binutils-$BINUTILSVER.tar.gz
fi

if [ ! -d "build-binutils" ]; then
	mkdir build-binutils
fi

cd build-binutils

../binutils-$BINUTILSVER/configure --target=$TARGET --prefix="$PREFIX" --with-sysroot --disable-nls --disable-werror

make -j$NUMCPU
make install -j$NUMCPU

