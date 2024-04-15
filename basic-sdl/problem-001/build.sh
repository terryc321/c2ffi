#!/bin/bash

rm -f simple simple.so

gcc -Wall -o simple simple.c

# make shared library
gcc -Wall -shared -o simple.so -fPIC simple.c
