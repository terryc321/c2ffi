
#include <stdio.h>
#include <stdlib.h>

struct Rect{
  int x;
  int y;
  int w;
  int h;
};

void alter(struct Rect *);

// void - is that public
void alter(struct Rect *p){
  p->x = 1234;
  p->y = 5678;
  p->w = 9012;
  p->h = 3456;  
}


void
alter2(int *p){
  printf("alter2 : c ptr address is %p \n" , p);
  *p = 32;
}


void
alter3(int *p, int *q){
  printf("alter3 : c ptr address of p is %p : of q is %p\n" , p , q);
  *p = 57;
  *q = 89;
}


int
my_add(int a, int b){
  return a + b;
}




int main(int argc,char **argv){
  int a;
  alter2(&a);
  printf("the value of a is %d\n" , a);

  int c;
  int d;
  alter3(&c, &d);
  printf("the value of c is %d , d is %d\n" , c,d);
    
  return 0;
}



				 
  
