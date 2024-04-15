
#|

foreign structures
Question (1) : How do i do this in cffi ?

struct {
int x;
int y;
int w;
int h;
} SDL_Rect ;

SDL_Rect r;

SDL_QueryTexture( , , , &r.w , &r.h)
r.w is width of texture
r.h is height of texture

QueryTexture procedure sets the values of structure pass in ?


|#

(declaim (optimize (speed 0) (debug 3) (safety 0)))
	 
(ql:quickload :uiop)
(ql:quickload :cffi)
;;(ql:quickload :cl-autowrap)
;;(ql:quickload :cffi/c2ffi)
(ql:quickload :trivial-shell)

(uiop:define-package :test
    (:use :common-lisp))

	  ;; :cffi))

(in-package :test)

(defparameter %null-ptr (cffi:null-pointer))

(cffi:define-foreign-library libsimple
    (t (:default "~/code/c2ffi/basic-sdl/problem-001/simple")))

(cffi:use-foreign-library libsimple)

;; check alter is defined
(cffi:foreign-symbol-pointer "alter")

(cffi:defcstruct rect
  (x :int)
  (y :int)
  (w :int)
  (h :int))


(cffi:defcfun "alter" :void
  (rect :pointer))

(cffi:defcfun "alter2" :void
  (w :int :pointer))

(cffi:defcfun "alter3" :void
  (w :int :pointer)
  (h :int :pointer))

;; my_add is c code my-my-add is lisp version
(cffi:defcfun ("my_add" my-my-add) :int
  (a :int)
  (b :int))


;; ok worked ok
(let ((ptr (cffi:foreign-alloc :int :initial-contents '(13 14 15 16))))
  (alter ptr)
  (let ((x (cffi:mem-aref ptr :int 0))
	(y (cffi:mem-aref ptr :int 1))
	(w (cffi:mem-aref ptr :int 2))
	(h (cffi:mem-aref ptr :int 3)))
    (format t "should be 13 14 15 16 : x = ~a : y = ~a : width => ~a : height => ~a ~%" x y w h)	
    (cffi:foreign-free ptr)))

#|

(let ((ptr (cffi:foreign-alloc :int :initial-contents '(0 0 0 0))))
  ;;(alter2 (cffi:mem-aref ptr :int 0) (cffi:mem-aref ptr :int 1))
  (format t "ptr = ~a ~%" ptr)
  (alter2 (cffi:mem-ref ptr :int))
  (let ((x (cffi:mem-aref ptr :int 0))
	(y (cffi:mem-aref ptr :int 1))
	(w (cffi:mem-aref ptr :int 2))
	(h (cffi:mem-aref ptr :int 3)))
    (format t "should be 32 : x = ~a : y = ~a : width => ~a : height => ~a ~%" x y w h)	
    (cffi:foreign-free ptr)))


ptr = [0 0 0 0]
cffi:mem-ref ptr :int - null ptr exception 


(cffi:with-foreign-object (p1 :pointer)
  (let ((ptr (cffi:foreign-alloc :int :initial-contents '(0 0 0 0))))
    (setf (cffi:mem-aref p1 :pointer) ptr)
    ;;(alter2 (cffi:mem-aref ptr :int 0) (cffi:mem-aref ptr :int 1))
    ;;(format t "ptr = ~a ~%" ptr)
    (alter2 p1)
    (let ((x (cffi:mem-aref ptr :int 0))
	  (y (cffi:mem-aref ptr :int 1))
	  (w (cffi:mem-aref ptr :int 2))
	  (h (cffi:mem-aref ptr :int 3)))
      (format t "should be 32 : x = ~a : y = ~a : width => ~a : height => ~a ~%" x y w h)	
      (cffi:foreign-free ptr))))
|#
(cffi:defcstruct rect
  (x :int)
  (y :int)
  (w :int)
  (h :int))

(format t "foregin slot offet of rect.x = ~a ~%" (cffi:foreign-slot-offset 'rect 'x))
(format t "foregin slot offet of rect.y = ~a ~%" (cffi:foreign-slot-offset 'rect 'y))
(format t "foregin slot offet of rect.w = ~a ~%" (cffi:foreign-slot-offset 'rect 'w))
(format t "foregin slot offet of rect.h = ~a ~%" (cffi:foreign-slot-offset 'rect 'h))

(cffi:with-foreign-object (ptr 'rect)
  (format t "foregin slot pointer rect.x = ~a ~%" (cffi:foreign-slot-pointer ptr 'rect 'x))
  (format t "foregin slot pointer rect.y = ~a ~%" (cffi:foreign-slot-pointer ptr 'rect 'y))
  (format t "foregin slot pointer rect.w = ~a ~%" (cffi:foreign-slot-pointer ptr 'rect 'w))
  (format t "foregin slot pointer rect.h = ~a ~%" (cffi:foreign-slot-pointer ptr 'rect 'h))
  )

;; (cffi:with-foreign-object (pa (:pointer :int) :initial-contents '(0 0 0 0))
;;   (alter2 pa))


#|
;; this works but - really over flow into unknown memory regions
(cffi:with-foreign-object (pa :int)
  (alter pa))
|#







;; void alter(struct Rect *p){
;;   p->x = 1234;
;;   p->y = 5678;
;;   p->w = 9012;
;;   p->h = 3456;  
;; }
;; pass a structure by pointer : set each element : see mutated result
(defun foo-1 ()
  (cffi:with-foreign-object (ptr '(:struct rect))
    (alter ptr)
    (format t "[alpha] : x = ~a : y = ~a : w = ~a : h = ~a ~%"
	    (cffi:foreign-slot-value ptr '(:struct rect) 'x)
	    (cffi:foreign-slot-value ptr '(:struct rect) 'y)
	    (cffi:foreign-slot-value ptr '(:struct rect) 'w)
	    (cffi:foreign-slot-value ptr '(:struct rect) 'h))))

(defun foo-2 ()
  (cffi:with-foreign-object (ptr '(:struct rect))
    (alter2 (cffi:pointer-address ptr))
    (format t "[beta] : cffi:mem ref ptr = ~a ~%" (cffi:mem-aref ptr :int 0)))
  )

(defun foo-3 ()
  (cffi:with-foreign-object (ptr '(:struct rect))
    (alter2 (cffi:pointer-address (cffi:foreign-slot-pointer ptr '(:struct rect) 'x)))
    (format t "[charlie] : cffi:mem ref ptr = ~a ~%" (cffi:mem-aref ptr :int 0)))
  )



;; fixed deprecated message about bare 'rect now '(:struct rect)
(cffi:with-foreign-object (ptr '(:struct rect))
  (alter3 (cffi:pointer-address (cffi:foreign-slot-pointer ptr '(:struct rect) 'w))
	  (cffi:pointer-address (cffi:foreign-slot-pointer ptr '(:struct rect) 'h)))
  (format t "[delta] : w = ~a : h = ~a ~%"
	  (cffi:foreign-slot-value ptr '(:struct rect) 'w)
	  (cffi:foreign-slot-value ptr '(:struct rect) 'h)))




#|
  CFFI> (cffi:foreign-slot-offset 'timeval 'tv-secs)
  => 0
  CFFI> (cffi:foreign-slot-offset 'timeval 'tv-usecs)
=> 4
|#




#|
(cffi:with-foreign-object (p1 :int)
    (alter2 (cffi:mem-ref p1 :pointer))
    (let ((x (cffi:mem-aref ptr :int 0)))
      (format t "should be 32 : x = ~a~%" x)))

|#



  

#|
(let ((ptr (cffi:foreign-alloc :int :initial-contents '(0 0 0 0)))
      (ptr2 (cffi:foreign-alloc :int :initial-contents '(0 0 0 0))))
  ;;(alter2 (cffi:mem-aref ptr :int 0) (cffi:mem-aref ptr :int 1))
  (alter3 ptr ptr2)
  (let ((x (cffi:mem-aref ptr :int 0))
	(y (cffi:mem-aref ptr2 :int 0)))
    (format t "should be 57 89 : x = ~a : y = ~a ~%" x y)	
    (cffi:foreign-free ptr)
    (cffi:foreign-free ptr2)
    ))
|#









