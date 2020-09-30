#!/bin/sh

# this is the cross compile target
# export TARGET=mips-elf
export TARGET=x86_64-elf
# export TARGET=i686-elf

# note - make sure the combination of versions work together! see
# http://wiki.osdev.org/Cross-Compiler_Successful_Builds
export GCCVER=10.2.0
export BINUTILSVER=2.35.1

# set this to number of threads to compile with, setting this to max cpu
# (or optionally +1) will greatly decrease the amount of time gcc takes
# to compile if your cpu is beefy
export NUMCPU=12
export PREFIX="$HOME/opt/cross"
export PATH="$PREFIX/bin:$PATH"

