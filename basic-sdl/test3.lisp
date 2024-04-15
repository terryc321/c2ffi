

(declaim (optimize (speed 0) (debug 3) (safety 0)))
	 
(ql:quickload :cffi)
;;(ql:quickload :cl-autowrap)
;;(ql:quickload :cffi/c2ffi)
(ql:quickload :trivial-shell)


(uiop:define-package :test
    (:use :common-lisp
	  :cffi))

(in-package :test)

(defparameter %null-ptr (cffi:null-pointer))

;; had wrong library
(cffi:define-foreign-library libsdl
    (t (:default "/usr/lib/x86_64-linux-gnu/libSDL2")))
(cffi:define-foreign-library libsdl-image
    (t (:default "/usr/lib/x86_64-linux-gnu/libSDL2_image")))


;; check SDL_CreateWindow defined
;;(foreign-symbol-pointer "SDL_CreateWindow")
;;(foreign-symbol-pointer "IMG_Load")

(cffi:use-foreign-library libsdl)
(cffi:use-foreign-library libsdl-image)

;;(DEFINE-FOREIGN-FUNCTION '(SDL-INIT "SDL_Init") ':INT '((|flags| UINT32)))
;; sdl-init
(defcfun "SDL_Init" :int  (flags :unsigned-int))

(DEFPARAMETER +SDL-INIT-TIMER+ 1)
(DEFPARAMETER +SDL-INIT-VIDEO+ 32)
(DEFPARAMETER +SDL-INIT-AUDIO+ 16)
(DEFPARAMETER +SDL-INIT-NOPARACHUTE+ 1048576)
(DEFPARAMETER +SDL-INIT-EVENTS+ 16384)
(DEFPARAMETER +SDL-INIT-GAMECONTROLLER+ 8192)
(DEFPARAMETER +SDL-INIT-SENSOR+ 32768)
(DEFPARAMETER +SDL-INIT-HAPTIC+ 4096)
(DEFPARAMETER +SDL-INIT-JOYSTICK+ 512)
(DEFPARAMETER +SDL-INIT-EVERYTHING+ 62001)


;; sdl-quit
;;    (DEFINE-FOREIGN-FUNCTION '(SDL-QUIT "SDL_Quit") ':VOID 'NIL)
;; no parameters just finish list
(defcfun "SDL_Quit" :void)

(DEFPARAMETER +SDL-WINDOW-FULLSCREEN+ 1)
(DEFPARAMETER +SDL-WINDOW-OPENGL+ 2)
(DEFPARAMETER +SDL-WINDOW-SHOWN+ 4)
(DEFPARAMETER +SDL-WINDOW-HIDDEN+ 8)
(DEFPARAMETER +SDL-WINDOW-BORDERLESS+ 16)
(DEFPARAMETER +SDL-WINDOW-RESIZABLE+ 32)
(DEFPARAMETER +SDL-WINDOW-MINIMIZED+ 64)
(DEFPARAMETER +SDL-WINDOW-MAXIMIZED+ 128)
(DEFPARAMETER +SDL-WINDOW-MOUSE-GRABBED+ 256)
(DEFPARAMETER +SDL-WINDOW-INPUT-FOCUS+ 512)
(DEFPARAMETER +SDL-WINDOW-MOUSE-FOCUS+ 1024)
(DEFPARAMETER +SDL-WINDOW-FULLSCREEN-DESKTOP+ 4097)
(DEFPARAMETER +SDL-WINDOW-FOREIGN+ 2048)
(DEFPARAMETER +SDL-WINDOW-ALLOW-HIGHDPI+ 8192)
(DEFPARAMETER +SDL-WINDOW-MOUSE-CAPTURE+ 16384)
(DEFPARAMETER +SDL-WINDOW-ALWAYS-ON-TOP+ 32768)
(DEFPARAMETER +SDL-WINDOW-SKIP-TASKBAR+ 65536)
(DEFPARAMETER +SDL-WINDOW-UTILITY+ 131072)
(DEFPARAMETER +SDL-WINDOW-TOOLTIP+ 262144)
(DEFPARAMETER +SDL-WINDOW-POPUP-MENU+ 524288)
(DEFPARAMETER +SDL-WINDOW-KEYBOARD-GRABBED+ 1048576)
(DEFPARAMETER +SDL-WINDOW-VULKAN+ 268435456)
(DEFPARAMETER +SDL-WINDOW-METAL+ 536870912)
(DEFPARAMETER +SDL-WINDOW-INPUT-GRABBED+ 256)

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

;; (cffi:define-foreign-library libsdl
;;   (t (:default "/usr/lib/x86_64-linux-gnu/libSDL")))

;; (cffi:use-foreign-library libsdl)
(DEFPARAMETER +SDL-RENDERER-SOFTWARE+ 1)
(DEFPARAMETER +SDL-RENDERER-ACCELERATED+ 2)
(DEFPARAMETER +SDL-RENDERER-PRESENTVSYNC+ 4)
(DEFPARAMETER +SDL-RENDERER-TARGETTEXTURE+ 8)
;; (DEFINE-FOREIGN-FUNCTION '(SDL-CREATE-RENDERER "SDL_CreateRenderer")
;;                          '(:POINTER SDL-RENDERER)
;;                          '((|window| (:POINTER SDL-WINDOW)) (|index| :INT)
;;                            (|flags| UINT32)))
(defcfun "SDL_CreateRenderer" :pointer
  (window :pointer) (index :int) (flags :unsigned-int))

;; -----------------------------------------------------------------------
(DEFPARAMETER +IMG-INIT-JPG+ 1) ;; ok
(DEFPARAMETER +IMG-INIT-PNG+ 2) ;; ok
(DEFPARAMETER +IMG-INIT-TIF+ 4) ;; ok 
(DEFPARAMETER +IMG-INIT-WEBP+ 8) ;; ok
(DEFPARAMETER +IMG-INIT-JXL+ 16) ;; --- no
(DEFPARAMETER +IMG-INIT-AVIF+ 32) ;; --- no


;; from SDL2_image 
(defcfun "IMG_Init" :int
  (flags :int))

(defcfun "IMG_Load" :pointer
  (filename :string))

(defcfun "IMG_Quit" :void)



    ;; (DEFINE-FOREIGN-FUNCTION '(SDL-RENDER-CLEAR "SDL_RenderClear") ':INT
    ;;                          '((|renderer| (:POINTER SDL-RENDERER))))
(defcfun "SDL_RenderClear" :int
  (render :pointer))

    ;; (DEFINE-FOREIGN-FUNCTION '(SDL-RENDER-COPY "SDL_RenderCopy") ':INT
    ;;                          '((|renderer| (:POINTER SDL-RENDERER))
    ;;                            (|texture| (:POINTER SDL-TEXTURE))
    ;;                            (|srcrect| (:POINTER SDL-RECT))
    ;;                            (|dstrect| (:POINTER SDL-RECT))))
(defcfun "SDL_RenderCopy" :int
  (render :pointer)
  (texture :pointer)
  (srcrect :pointer)
  (dstrect :pointer))

;;
;; (DEFINE-FOREIGN-FUNCTION '(SDL-RENDER-PRESENT "SDL_RenderPresent") ':VOID
;;                          '((|renderer| (:POINTER SDL-RENDERER))))
(defcfun "SDL_RenderPresent" :void
  (render :pointer))

    ;; (DEFINE-FOREIGN-FUNCTION
    ;;  '(SDL-CREATE-TEXTURE-FROM-SURFACE "SDL_CreateTextureFromSurface")
    ;;  '(:POINTER SDL-TEXTURE)
    ;;  '((|renderer| (:POINTER SDL-RENDERER))
    ;;    (|surface| (:POINTER SDL-SURFACE))))
(defcfun "SDL_CreateTextureFromSurface" :pointer
  (render :pointer) (surface :pointer))

;; forgetting to put :pointer and not :int


(defun demo ()
  (let ((window nil)
	(render nil)
	(surface nil)
	(texture nil))
    (sdl-init (logior +sdl-init-video+ +sdl-init-events+))
    (img-init (logior +img-init-png+))
    
    (setq window (sdl-createwindow "my title" 0 0 640 480 (logior +sdl-window-shown+
								  +sdl-window-resizable+)))

    (setq render (let ((render-flags (logior +sdl-renderer-accelerated+
					     +sdl-renderer-targettexture+))
		       (index -1))
		   (sdl-createrenderer window index render-flags)))
    (format t "render = ~a ~%" render)

    (setq surface (img-load "/home/terry/code/c2ffi/basic-sdl/lettuce.jpeg"))
    (format t "surface = ~a ~%" surface)
    
    (setq texture (sdl-createtexturefromsurface render surface))
    (format t "texture = ~a ~%" texture)
    
    (sdl-renderclear render)
    (sdl-rendercopy render texture %null-ptr %null-ptr)
    (sdl-renderpresent render)

    (sleep 3)
    (img-quit)
    (sdl-quit)
    ))


(demo)






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
