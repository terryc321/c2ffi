
# Guide to Common Lisp Foreign Function Interface CFFI

### Lisp <-> C : Structures

Here is a simple example of a flat C structure typical with points and rectangles

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

Here below is a simple bash script to create the shared library object code

```bash
#!/bin/bash
# ----  build script ---
# remove old binary and shared library
rm -f simple simple.so
# build binary executable to test sanity from c 
gcc -Wall -o simple simple.c
# make shared library "simple.so" load into common lisp using cffi
gcc -Wall -shared -o simple.so -fPIC simple.c
```
let us now tell common lisp about this shared library we have just created
```common-lisp

;; load cffi from quicklisp
(ql:quickload :cffi) ;; common lisp foreign function interface cffi
(ql:quickload :uiop) ;; universally mis-understood input/output poop 

;; declare clean test package
(defpackage :test (:use :cl))
 
(in-package :test)

;; load simple.so shared library 
(cffi:define-foreign-library libsimple
  (t (:default "~/code/c2ffi/basic-sdl/problem-001/simple")))
	
;; import the library
(cffi:use-foreign-library libsimple)
```

the common lisp code for the rectangle 

```common-lisp
(defcstruct rect
  (x :int)
  (y :int)
  (w :int)
  (h :int))
```

along with a foreign procedure declaration for alter
```common-lisp
;; declare alter to be a procedure returns nothing but takes a rect structure
(cffi:defcfun "alter" :void (rect :pointer))
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


