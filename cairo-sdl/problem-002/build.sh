#!/bin/bash

rm -f bin/demo
#terry@debian:~/code/c2ffi/cairo-sdl/problem-001$ echo `pkg-config cairo --cflags --libs`
#-I/usr/include/cairo -I/usr/include/libpng16 -I/usr/include/freetype2 -I/usr/include/pixman-1 -lcairo

CAIRO=`pkg-config cairo --cflags --libs`
echo $CAIRO

SDL2=`pkg-config sdl2 --cflags --libs`
echo $SDL2

gcc -o bin/demo demo.c $CAIRO $SDL2


