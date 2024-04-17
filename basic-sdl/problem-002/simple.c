
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






				 
  
