
;;(declaim (optimize (speed 0) (debug 3) (safety 0)))
	 
(ql:quickload :cffi)
(ql:quickload :cl-autowrap)
;;(ql:quickload :cffi/c2ffi)
(ql:quickload :trivial-shell)

(uiop:define-package :dummy
    (:use :common-lisp))
	  ;; :cffi))

;;(in-package :dummy)

(setf autowrap:*c2ffi-program* "/home/terry/bin/c2ffi")

;; (uiop:define-package :dummy
;;     (:use
;;      :cl
;;      :autowrap))

;;(unintern 'REMOVE :test-lib)

;;(shadow "REMOVE" :test-lib)
;;(package-shadowing-symbols :test-lib)

(in-package :dummy)

(shadow 'remove)
(shadow 'random)
(shadow 'abort)
(shadow 'abs)
(shadow 'acos)
(shadow 'asin)
(shadow 'atan)
(shadow 'cos)
(shadow 'sin)
(shadow 'tan)
(shadow 'cosh)
(shadow 'sinh)
(shadow 'tanh)
(shadow 'acosh)
(shadow 'asinh)
(shadow 'atanh)
(shadow 'exp)
(shadow 'log)
(shadow 'sqrt)
(shadow 'floor)
(shadow 'round)

;; c-include
;; this is part of cl-autowrap that generates the 
(autowrap:c-include "/usr/include/SDL2/SDL_image.h"  
		    :spec-path #P"/home/terry/code/c2ffi/lib-sdl2-image/spec/")

;; if it worked no errors then we can see definitions of all symbols generated
;; upper case 
(defparameter my-symbols
  (sort (loop for s being the external-symbols of (find-package "DUMMY")
	      collect s)
	#'string< ))


(cffi:define-foreign-library libsdl2-image
  (t (:default "/usr/lib/x86_64-linux-gnu/libSDL2_image")))

(cffi:use-foreign-library libsdl2-image)



#|
;; (pretty-printer my-symbols)

;;(mapc #'describe my-symbols)

;; -----------------------------------------------------------------------------------
(in-package :test-lib)

(defun demo ()
(sdl-init (logior +sdl-init-video+ +sdl-init-events+))
(let ((win (sdl-create-window "my title" 0 0 640 480 (logior +sdl-window-shown+
+sdl-window-resizable+))))
(sleep 3)  
(sdl-quit)
))

;; -----------------------------------------------------------------------------------

(in-package :test)

(cffi:define-foreign-library libsdl
(t (:default "/usr/lib/x86_64-linux-gnu/libSDL")))

(cffi:use-foreign-library libsdl)

;;(DEFINE-FOREIGN-FUNCTION '(SDL-INIT "SDL_Init") ':INT '((|flags| UINT32)))
;; sdl-init
(defcfun "SDL_Init" :int  (flags :unsigned-int))

;; sdl-quit
;;    (DEFINE-FOREIGN-FUNCTION '(SDL-QUIT "SDL_Quit") ':VOID 'NIL)
;; no parameters just finish list
(defcfun "SDL_Quit" :void)

;; (DEFINE-FOREIGN-FUNCTION '(SDL-CREATE-WINDOW "SDL_CreateWindow")
;;     '(:POINTER SDL-WINDOW)
;;   '((|title| (:STRING)) (|x| :INT) (|y| :INT)
;;     (|w| :INT) (|h| :INT) (|flags| UINT32)))
(defcfun "SDL_CreateWindow" :pointer
(title :string) (x :int) (y :int) (width :int) (height :int) (flags :unsigned-int))



;; (defctype curl-code :int)
;; (defcfun "curl_global_init" curl-code  (flags :long))
;; (defun sdl-create-window ()
;;   (|SDL-CreateWindow|))
;; (setf (fdefinition 'sdl-create-window) #'SDL-CreateWindow)






#|
(package-shadowing-symbols (make-package 'temp)) 
(find-symbol "car" 'temp) 
(shadow "car" 'temp) 
(find-symbol "car" 'temp)
(package-shadowing-symbols 'temp)

(make-package 'test-1) =>  #<PACKAGE "TEST-1">
(intern "TEST" (find-package 'test-1)) =>  TEST-1::TEST, NIL
(shadow 'test-1::test (find-package 'test-1)) =>  T
(shadow 'TEST (find-package 'test-1)) =>  T
(assert (not (null (member 'test-1::test (package-shadowing-symbols
(find-package 'test-1))))))
|#




#|
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

|#
|#
