
## 

```lisp
;; change :spec-path pathname to where want spec files to be dumped

(autowrap:c-include "/usr/include/SDL2/SDL.h"  
		    :spec-path #P"/home/terry/code/c2ffi/lib-sdl2/spec/")


;; start sbcl with quicklisp installed
;; simply run
(load "make-specs.lisp")
;; macro-expand c-include expression in emacs C-c Enter 
;; copy macro expansion to ffi-<library-name>.lisp
;; can see the lisp code generated by cl-autowrap
```


