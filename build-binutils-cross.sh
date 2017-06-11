#!/bin/sh

wget ftp://ftp.gnu.org/gnu/binutils/binutils-$BINUTILSVER.tar.gz
tar xvzf binutils-$BINUTILSVER.tar.gz
mkdir build-binutils
cd build-binutils
../binutils-$BINUTILSVER/configure --target=$TARGET --prefix="$PREFIX" --with-sysroot --disable-nls --disable-werror

make -j$NUMCPU
make install -j$NUMCPU

