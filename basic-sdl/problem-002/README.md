
# Guide to Common Lisp Foreign Function Interface CFFI

### Sizes of things 


```C 
#include <stdio.h>
#include <stdlib.h>

#include "SDL.h"

int main(int argc,char **argv){
  int a;
  printf("size of int is %lu bytes \n" , sizeof(a));

  long b;
  printf("size of long is %lu bytes \n" , sizeof(b));

  float c;
  printf("size of float is %lu bytes \n" , sizeof(c));
  
  double d;
  printf("size of double is %lu bytes \n" , sizeof(d));

  long long e;
  printf("size of long long is %lu bytes \n" , sizeof(e));
  
  SDL_Event ev;
  printf("size of sdl_event is %lu bytes \n" , sizeof((SDL_Event)ev));
  return 0;
}
```

```bash
#!/bin/bash
# ----  build script ---
# remove old binary and shared library
rm -f simple simple.so
# build binary executable to test sanity from c 
# executable needs both C headers and shared library locations for linking
gcc -Wall -o simple simple.c `pkg-config sdl2 --cflags --libs`
# make shared library "simple.so" load into common lisp using cffi
# shared library only needs C header files 
gcc -Wall -shared -o simple.so -fPIC simple.c `pkg-config sdl2 --cflags`

```

```text
size of int is 4 bytes 
size of long is 8 bytes 
size of float is 4 bytes 
size of double is 8 bytes 
size of long long is 8 bytes 

size of sdl_event is 56 bytes 
SDL_Event is 56 bytes
```


