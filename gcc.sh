#!/bin/sh

which -- $TARGET-as || echo $TARGET-as is not in the PATH, ensure binutils built first

if [ ! -f "gcc-$GCCVER.tar.gz" ]; then
	wget ftp://ftp.gnu.org/gnu/gcc/gcc-$GCCVER/gcc-$GCCVER.tar.gz
fi

if [ ! -d "gcc-$GCCVER" ]; then
	tar xvzf gcc-$GCCVER.tar.gz
fi

if [ ! -d "build-gcc" ]; then
	mkdir build-gcc
fi

cd build-gcc

../gcc-$GCCVER/configure --target=$TARGET --prefix="$PREFIX" --disable-nls --enable-languages=c --without-headers

make distclean
make all-gcc -j$NUMCPU
make all-target-libgcc -j$NUMCPU

make install-gcc 
make install-target-libgcc
