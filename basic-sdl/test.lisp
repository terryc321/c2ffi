
(ql:quickload :cffi)
(ql:quickload :cl-autowrap)
(ql:quickload :cffi/c2ffi)
(ql:quickload :trivial-shell)

;;(trivial-shell:shell-command "echo foo")

(swank:set-default-directory #P"~/code/c2ffi/spec/")
;; check directory correct
(trivial-shell:shell-command "pwd")
;; full path name to include file - so it can then find SDL_main.h etc..
(trivial-shell:shell-command "c2ffi -M macros.h /usr/include/SDL2/SDL.h")
(trivial-shell:shell-command "c2ffi -o example.spec macros.h ")
;;(trivial-shell:shell-command "c2ffi -o example.spec /usr/include/SDL2/SDL.h")
;;(cffi/c2ffi:parse-file-to-file "example.spec" "example.lisp")
;; no function call parse-file-to-file 
;;(autowrap:parse-file "example.spec")


(eval-when (:compile-toplevel :load-toplevel :execute)
  (asdf:load-system :c2ffi-cffi))

(defsystem :my-system
  :
  :components ((c2ffi-cffi:spec "example")
               (c2ffi-cffi:spec "macros")))

(uiop:define-package :test
    (:use
     ;; autowrap
     :cl 
     :cffi
     :cffi/c2ffi
     ))

(in-package :test)

;;   /usr/lib/x86_64-linux-gnu/libSDL.so
;; drop final .so from foreign library
(cffi:define-foreign-library libsdl
  (t (:default "/usr/lib/x86_64-linux-gnu/libSDL")))

(cffi:use-foreign-library libsdl)

 ;;"/usr/include/SDL2/SDL.h"
(autowrap:c-include 
 "/home/terry/code/c2ffi/spec/SDL.h"
 :include-sources '()
 :spec-path (merge-pathnames
	     "code/c2ffi/spec/"
	     (user-homedir-pathname)))



;; prompt
;; autocomplete lisp slime
test:sdl-version.major

