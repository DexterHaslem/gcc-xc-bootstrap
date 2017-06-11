# gcc-xc-bootstrap
Scripts to download and compile a freestanding (nostdlib) binutils + gcc toolchain.
This is based on the guide available here http://wiki.osdev.org/GCC_Cross-Compiler


# Usage

1. edit env.sh to set your target platform & where to install to. user directory installation is recommended
1. ./build.sh
1. wait ...
1. gcc-$TARGET --version
