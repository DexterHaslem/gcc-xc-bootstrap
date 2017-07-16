#!/bin/bash

source ./env.sh
echo "starting build for $TARGET"
./binutils.sh
./gcc.sh
