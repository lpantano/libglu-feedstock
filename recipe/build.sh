#!/bin/bash

mkdir -p $PREFIX/custom
ln -s /System/Library/Frameworks/OpenGL.framework/Libraries $PREFIX/custom/lib
ln -s /System/Library/Frameworks/OpenGL.framework/Headers $PREFIX/custom/GL

export GL_CFLAGS="-I$PREFIX/custom"
export GL_LIBS="-I$PREFIX/custom/lib"
export CFLAGS="-I${PREFIX}/include"
export LDFLAGS="-L${PREFIX}/lib"
./configure  --prefix=$PREFIX ##--disable-static
make
make install
