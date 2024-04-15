#!/bin/bash

rm -f simple simple.so

gcc -Wall -o simple simple.c `pkg-config sdl2 --cflags --libs` 

# make shared library
gcc -Wall -shared -o simple.so -fPIC simple.c `pkg-config sdl2 --cflags`


