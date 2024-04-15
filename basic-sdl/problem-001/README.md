
# Guide to Common Lisp Foreign Function Interface CFFI

### Lisp <-> C : Structures

Here is a simple example of a flat C structure typical with points and rectangles.

The code here defines the memory layout of Rect structure.  

A procedure called alter will set each respective item of the structure with a specific value.

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

We compile the code above into a shared library which common lisp will then be able to use.


Here is a bash script to accomplish creating a shared library.

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

On the common lisp side of the fence the work is duplicated somewhat , 
we also have same layout of memory of rectangle 

```common-lisp
(defcstruct rect
  (x :int)
  (y :int)
  (w :int)
  (h :int))
```

along with a common lisp procedure that declares what parameters the C code is expecting.

procedure Alter returns nothing but takes a rect structure pointer.

```common-lisp
(cffi:defcfun "alter" :void (rect :pointer))
```

Now an example of calling C code from lisp 

```lisp
(let ((ptr (cffi:foreign-alloc :int :initial-contents '(13 14 15 16))))
  (alter ptr)
  (let ((x (cffi:mem-aref ptr :int 0))
	(y (cffi:mem-aref ptr :int 1))
	(w (cffi:mem-aref ptr :int 2))
	(h (cffi:mem-aref ptr :int 3)))
    (format t "should be 1234 5678 9012 3456 :x = ~a :y = ~a :width => ~a :height => ~a ~%" x y w h)	
    (cffi:foreign-free ptr)))
```

Here is the same code with Rect structure layout

```lisp
(cffi:with-foreign-object (ptr '(:struct rect))
  (alter ptr)
  (format t "[alpha] : x = ~a : y = ~a : w = ~a : h = ~a ~%"
	  (cffi:foreign-slot-value ptr '(:struct rect) 'x)
	  (cffi:foreign-slot-value ptr '(:struct rect) 'y)
	  (cffi:foreign-slot-value ptr '(:struct rect) 'w)
	  (cffi:foreign-slot-value ptr '(:struct rect) 'h)))
```

## If want pass a pointer so value will be mutated 

Now alter2 will change value of integer pointed to by pointer p, to 32 .

```C
void alter2(int *p){
  printf("alter2 : c ptr address is %p \n" , p);
  *p = 32;
}
```

```lisp
(cffi:defcfun "alter2" :void (rect :pointer))

(cffi:with-foreign-object (ptr '(:struct rect))
 (alter2 (cffi:pointer-address ptr))
 (format t "[beta] : cffi:mem ref ptr = ~a ~%" (cffi:mem-aref ptr :int 0)))

;; equivalent
(cffi:with-foreign-object (ptr :int)
 (alter2 (cffi:pointer-address ptr))
 (format t "[beta] : cffi:mem ref ptr = ~a ~%" (cffi:mem-aref ptr :int 0)))
```

## If want to alter two items in a structure 
```C
void alter3(int *p, int *q){
  printf("alter3 : c ptr address of p is %p : of q is %p\n" , p , q);
  *p = 57;
  *q = 89;
}
```
```lisp
(cffi:with-foreign-object (ptr '(:struct rect))
  (alter3 (cffi:pointer-address (cffi:foreign-slot-pointer ptr '(:struct rect) 'w))
 	      (cffi:pointer-address (cffi:foreign-slot-pointer ptr '(:struct rect) 'h)))
  (format t "[delta] : w = ~a : h = ~a ~%"
	  (cffi:foreign-slot-value ptr '(:struct rect) 'w)
	  (cffi:foreign-slot-value ptr '(:struct rect) 'h)))
```

We find w has value 57 , h has value of 89 as expected .

# Unions in C and in Lisp 

One way to think about a union is that it is just a blob of data of a certain size , number of bytes.

Not until drill down into working out how want to interpret the blob of data does the union 

make much sense, where we can think about extracting or masking bits from the blob.

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


```common-lisp
;; a C procedure called foo that takes no arguments and gives no results looks like this
(cffi:defcfun "foo" :void)
```

```lisp
;; this is how define the null pointer
(defparameter %null-ptr (cffi:null-pointer))
;; (cffi:pointer-address 0)
```



