
### structure pass to c code

```common-lisp
(defcstruct rect
  (x :int)
  (y :int)
  (w :int)
  (h :int))
```

```C 
/* rect in c with procedure to mutate called alter */
struct Rect{
  int x;
  int y;
  int w;
  int h;
};

void alter(struct Rect *p){
  p->x = 1234;
  p->y = 5678;
  p->w = 9012;
  p->h = 3456;
}
```

```bash
# remove old binary and shared library
rm -f simple simple.so
# build binary executable to test sanity from c 
gcc -Wall -o simple simple.c
# make shared library load into common lisp using cffi
gcc -Wall -shared -o simple.so -fPIC simple.c
```


[SDL2 QueryTexture C Reference](https://wiki.libsdl.org/SDL2/SDL_QueryTexture)

```C
SDL_Rect r;
SDL_QueryTexture( texture, NULL, NULL, &r.w , &r.h);

/* 
format NULL do not need
access NULL do not need
r.w now has width of texture
r.h now has height of texture
*/
```


