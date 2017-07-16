#!/bin/sh

which -- $TARGET-as || echo $TARGET-as is not in the PATH, ensure binutils built first

if [ ! -d "gcc-$GCCVER" ]; then
	wget ftp://ftp.gnu.org/gnu/gcc/gcc-$GCCVER/gcc-$GCCVER.tar.gz
	tar xvzf gcc-$GCCVER.tar.gz
fi

if [ ! -d "build-gcc" ]; then
	mkdir build-gcc
fi

cd build-gcc

../gcc-$GCCVER/configure --target=$TARGET --prefix="$PREFIX" --disable-nls --enable-languages=c --without-headers

make clean
make all-gcc -j$NUMCPU -pipe
make all-target-libgcc -j$NUMCPU -pipe

make install-gcc -j$NUMCPU
make install-target-libgcc -j$NUMCPU
