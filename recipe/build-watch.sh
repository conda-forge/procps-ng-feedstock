#!/usr/bin/env bash

./autogen.sh
./configure \
    --disable-nls \
    --enable-watch8bit \
    --enable-colorwatch \
    --prefix="$PREFIX"

make src/watch
mkdir -p $PREFIX/bin $PREFIX/man/man1
mv src/watch $PREFIX/bin
mv man/watch.1 $PREFIX/man/man1
