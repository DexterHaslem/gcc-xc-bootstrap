#!/bin/sh

which -- $TARGET-as || echo $TARGET-as is not in the PATH

wget ftp://ftp.gnu.org/gnu/gcc/gcc-$GCCVER/gcc-$GCCVER.tar.gz
tar xvzf gcc-$GCCVER.tar.gz

mkdir build-gcc
cd build-gcc
../gcc-$GCCVER/configure --target=$TARGET --prefix="$PREFIX" --disable-nls --enable-languages=c --without-headers
make all-gcc -j$NUMCPU
make all-target-libgcc -j$NUMCPU
make install-gcc -j$NUMCPU
make install-target-libgcc -j$NUMCPU
