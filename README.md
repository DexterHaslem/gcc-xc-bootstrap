## gcc-xc-bootstrap
Scripts to download and compile a freestanding (nostdlib) binutils + gcc toolchain.
This is based on the guide available here http://wiki.osdev.org/GCC_Cross-Compiler

## Prerequisites
- the following packages need to be installed:
- bison
- flex
- libint-devel
- libgmp-devel
- libmpfr-devel
- libmpc-devel
- texinfo
(depending on platform)

You can install these automatically on debian/ubuntu with `install-deps-deb.sh`

## Usage
1. edit env.sh to set your target platform & where to install to. user directory installation is recommended
1. ./build.sh
1. wait till done... on beefy modern machines, ~10 minutes is reasonable
1. source env.sh
1. $TARGET-gcc --version
