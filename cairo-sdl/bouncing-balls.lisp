

;; limit to number of squares that can be accomodated


;; do not know how this packaging stuff works really , cannot just load a file
;; surely be eaiser to wrap whole file in a big letrec

;; (load "register-asd.lisp")

;; (defpackage #:cairo-balls
;;   (:use #:cl #:cairo-sdl))

(in-package #:cairo-sdl)

(declaim (optimize (speed 0)(debug 3)(safety 3)))

(defparameter *screen-width* 1024)
(defparameter *screen-height* 960)

;; some weird representation of keyboard as an array
(defparameter *keys* (make-array 512 :initial-element nil))

(defmacro draw-key (index x y label)
  `(progn
     (if (aref *keys* ,index)
	 (cairo-set-source-rgb cr 1.0d0 0.0d0 0.0d0)
	 (cairo-set-source-rgb cr 0.0d0 0.0d0 1.0d0)
	 )
     (cairo-rectangle cr (+ 0.0d0 ,x) (+ 0.0d0 ,y) 25d0 25d0)
     (cairo-fill cr)
     (cairo-select-font-face cr "serif" +cairo-font-slant-normal+ +cairo-font-weight-bold+)
     (cairo-set-font-size cr 12.0d0)
     (cairo-set-source-rgb cr 1.0d0 1.0d0 1.0d0)
     (cairo-move-to cr (+ 2.0d0 ,x) (+ 16.0d0 ,y))
     (cairo-show-text cr ,label)
     ))

#|
conversion to double floating point for FFI or else all hell breaks loose
|#
(defmacro draw-ball (ball)
  `(progn
     (let ((x (second (assoc 'x ,ball)))
	   (y (second (assoc 'y ,ball)))
	   (r (second (assoc 'red ,ball)))
	   (g (second (assoc 'green ,ball)))
	   (b (second (assoc 'blue ,ball)))
	   (size (second (assoc 'size ,ball))))	   
     (cairo-set-source-rgb cr (+ 0.0d0 r) (+ 0.0d0 g) (+ 0.0d0 b))
     (cairo-rectangle cr (+ 0.0d0 x) (+ 0.0d0 y) (+ 0.0d0 size) (+ 0.0d0 size))
     ;;(cairo-circle cr (+ 0.0d0 ,x) (+ 0.0d0 ,y) 25d0 25d0)
     (cairo-fill cr)
       )))


(defun non-zero-random-number (n)
  (let ((rnd 0))
    (catch 'done
      (loop while t do
	(setq rnd (- (random (+ 1 (* 2 n))) n))
	(when (not (zerop rnd))
	  (throw 'done rnd))))))



(defun make-ball ()
  (let ((w *screen-width*)
	(h *screen-height*))
    `((x ,(random w))
      (y ,(random h))
      (vx ,(non-zero-random-number 20))
      (vy ,(non-zero-random-number 20))
      (size ,(+ 25 (random 5)))
      (red ,(random 1.0))
      (green ,(random 1.0))
      (blue ,(random 1.0)))))


;;
(defun tick-ball (ball time-step)
  (let ((w *screen-width*)
	(h *screen-height*)
	(x (second (assoc 'x ball)))
	(y (second (assoc 'y ball)))
	(vx (second (assoc 'vx ball)))
	(vy (second (assoc 'vy ball)))	   
	(r (second (assoc 'red ball)))
	(g (second (assoc 'green ball)))
	(b (second (assoc 'blue ball)))
	(size (second (assoc 'size ball))))
    
    (setq x (+ x (* time-step vx)))
    (setq y (+ y (* time-step vy)))
    
    (cond
      ((< x size) (setq vx (- vx)))
      ((> x (- w size)) (setq vx (- vx))))
    
    (cond
      ((< y size) (setq vy (- vy)))
      ((> y (- h size)) (setq vy (- vy))))
    
    `((x ,x)
      (y ,y)
      (vx ,vx)
      (vy ,vy)
      (size ,size)
      (red ,r)
      (green ,g)
      (blue ,b))))






(defparameter ball-1 (make-ball))
(defparameter ball-2 (make-ball))
(defparameter ball-3 (make-ball))

(defparameter n-balls 1)
(defparameter balls (make-array (+ 1 n-balls)))

;;(macro-expand-1 '(draw-ball ball-1))

(defparameter time-then (get-internal-real-time))
(defparameter time-now 0)
(defparameter time-difference 0)
(defparameter time-step 0.01)

(defun reboot-balls ()
  (when (< n-balls 1)
    (setq n-balls 1))    
  (setq balls (make-array n-balls))
  ;; make 10,000 balls
  (loop for i from 0 to (- n-balls 1) do
    (setf (aref balls i) (make-ball))))


(defun clear-screen (cr)
  (cairo-set-source-rgb cr 0.0d0 0.0d0 0.0d0)      
  ;;(cairo-set-source-rgb cr 1.0d0 1.0d0 1.0d0)      
  (cairo-rectangle cr  0d0  0d0 (+ 0d0 *screen-width*)
		   (+ 0d0 *screen-height*))
  (cairo-fill cr))




(defun balls-demo ()

  (reboot-balls)
  
  (sdl-init (logior +sdl-init-video+ +sdl-init-events+))
  (img-init (logior +img-init-png+))
  (setq window (sdl-createwindow "my title"
				 0
				 0				   
				 *screen-width*
				 *screen-height*
				 (logior
				      ;;+sdl-window-fullscreen-desktop+
				      +sdl-window-shown+
				      ;;+sdl-window-borderless+
				      +sdl-window-allow-highdpi+
				      ;;+sdl-window-fullscreen+
				      +sdl-window-resizable+
				      )))

  (setq render (let ((render-flags (logior
				    ;;+sdl-renderer-software+
				    ;;+sdl-renderer-presentvsync+
				    +sdl-renderer-accelerated+
				    +sdl-renderer-targettexture+
				    ))
		     (index -1))
		 (sdl-createrenderer window index render-flags)))
  (let ((width *screen-width*)
	(height *screen-height*)
	(flags 0) ;; flags always 0 unused
	(depth 32) 
	(red-mask #x00FF0000)
	(green-mask #x0000FF00)
	(blue-mask #x00000FF)
	(alpha-mask 0))
    (setq sdl-surface (sdl-create-rgb-surface flags
					      width
					      height
					      depth
					      red-mask
					      green-mask
					      blue-mask
					      alpha-mask)))
  
  (let* ((pitch (cffi:foreign-slot-value sdl-surface '(:struct sdl-surface-struct) 'pitch))
	 (width (cffi:foreign-slot-value sdl-surface '(:struct sdl-surface-struct) 'width))
	 (height (cffi:foreign-slot-value sdl-surface '(:struct sdl-surface-struct) 'height))
	 (pixels (cffi:foreign-slot-value sdl-surface '(:struct sdl-surface-struct) 'pixels))
	 ;;(stride (cairo-format-stride-for-width +cairo-format-rgb24+ width))
	 )

    ;; create cairo surface 
    (setq cairo-surface (cairo-image-surface-create-for-data			   
			 pixels
			 +cairo-format-rgb24+
			 width
			 height
			 pitch
			 )))
  
  (setq cr (cairo-create cairo-surface))

  (setq *close* nil)
  
  ;; int4 * 64 => 256 bytes , only 56 bytes needed for event
  (cffi:with-foreign-object (ev-ptr :int 64) 
    (loop while (not *close*) do

      (setq time-now (get-internal-real-time))
      (setq time-difference (- time-now time-then))

      ;;(format t "time difference ~a ~%" time-difference)
      
      ;; (when (> time-difference 1000000) ;; ------------------------- renderer held hostage 

      ;; 	;; update clock 
      ;; 	(setq time-then (get-internal-real-time))

	
      ;; -------- clear screen - draw a black background  ---------
      ;;(clear-screen cr)
      
      ;; -------- move the balls - bounce off walls - bounce off each other ------

      ;; -------- tick ? --------
      ;; (setq ball-1 (tick-ball ball-1 time-step))
      ;; (setq ball-2 (tick-ball ball-2 time-step))
      ;; (setq ball-3 (tick-ball ball-3 time-step))

      ;; tick each ball
      (loop for i from 0 to (- n-balls 1) do 
	(setf (aref balls i) (tick-ball (aref balls i) time-step))
	(draw-ball (aref balls i)))
      
      ;; --------------- drawing code goes here ----------------------
      ;;(draw-ball ball-1)
      ;;(draw-ball ball-2)      
      ;;(draw-ball ball-3)

      ;; some text information on 
     (cairo-select-font-face cr "helvetica" +cairo-font-slant-normal+ +cairo-font-weight-bold+)
     (cairo-set-font-size cr 32.0d0)
     (cairo-set-source-rgb cr 1.0d0 1.0d0 1.0d0)
     (cairo-move-to cr (+ 0d0 50) (+ 0d0 50))
     (cairo-show-text cr (format nil "ball details : ~a ~a : vel ~a ~a ~%"
				 (second (assoc 'x ball-1))
				 (second (assoc 'y ball-1))
				 (second (assoc 'vx ball-1))
				 (second (assoc 'vy ball-1))
				 ))
      
      ;; -------------- end of drawing code -------------------------
      ;;(setq texture (sdl-createtexturefromsurface render cr))
      (setq texture (sdl-createtexturefromsurface render sdl-surface))
      
      ;; texture 
      
      ;; texture2 --- will that not just write over it ?
      (sdl-rendercopy render texture %null-ptr %null-ptr)

      ;; free the texture
      (sdl-destroy-texture texture)
      
      ;; show line
      (sdl-renderpresent render)

;;      );; -------------------------------------- only render if certain time has elapsed 

      
      
      ;; ?? 
      ;;(sdl-destroy-texture texture)
      
      ;; process events ...
      (catch 'poll-events
	(loop while t do
	  (let ((poll (sdl-pollevent ev-ptr)))
	    (cond
	      ((zerop poll) ;; when no more events to poll 
	       (throw 'poll-events t))
	      (t
	       ;; switch event type 
	       (let ((ev-type (cffi:mem-aref ev-ptr :int 0)))
		 ;;(format t "event type ~a ~%" ev-type)
		 (cond
		   ;; exit fast by throwing 
		   ((= ev-type +sdl-quit+)
		    ;;(format t "quitting !~%")
		    ;;(setq has-poll-event nil)
		    (setq *close* t)
		    (throw 'poll-events t))

		   
		   ((= ev-type +sdl-mousemotion+)
		    ;;(format t "mouse moving !~%")
		    
		    ;; read off respective indices manually from ev-ptr
		    (let ((x (cffi:mem-aref ev-ptr :int 5))
			  (y (cffi:mem-aref ev-ptr :int 6)))
		      ;;(format t "mouse motion v1.0 : mouse at position ~a ~a ~%" x y)
		      (setq *mouse-x* x)
		      (setq *mouse-y* y)
		      )

		    ;; can use structure definition and read it off that
		    (let ((type (cffi:foreign-slot-value ev-ptr '(:struct sdl-mouse-motion-event) 'type))
			  (timestamp (cffi:foreign-slot-value ev-ptr '(:struct sdl-mouse-motion-event) 'timestamp))
			  (window-id (cffi:foreign-slot-value ev-ptr '(:struct sdl-mouse-motion-event) 'window-id))
			  (which (cffi:foreign-slot-value ev-ptr '(:struct sdl-mouse-motion-event) 'which))
			  (state (cffi:foreign-slot-value ev-ptr '(:struct sdl-mouse-motion-event) 'state))
			  (x (cffi:foreign-slot-value ev-ptr '(:struct sdl-mouse-motion-event) 'x))
			  (y (cffi:foreign-slot-value ev-ptr '(:struct sdl-mouse-motion-event) 'y))
			  (xrel (cffi:foreign-slot-value ev-ptr '(:struct sdl-mouse-motion-event) 'xrel))
			  (yrel (cffi:foreign-slot-value ev-ptr '(:struct sdl-mouse-motion-event) 'yrel)))
		      t
		      ;; (format t "mouse v2.0 [~a,~a,~a,~a,~a] : pos [~a,~a,~a,~a]~%"
		      ;; 	      type timestamp window-id which state x y xrel yrel)
		      
		      )
		    
		    );; --- mouse motion ----
		   
		   ((= ev-type +sdl-mousebuttondown+)
		    ;; (format t "mouse down !~%")		      
		    (let ((type (cffi:foreign-slot-value ev-ptr '(:struct sdl-mouse-button-event) 'type))
			  (timestamp (cffi:foreign-slot-value ev-ptr '(:struct sdl-mouse-button-event) 'timestamp))
			  (window-id (cffi:foreign-slot-value ev-ptr '(:struct sdl-mouse-button-event) 'window-id))
			  (which (cffi:foreign-slot-value ev-ptr '(:struct sdl-mouse-button-event) 'which))
			  (state (cffi:foreign-slot-value ev-ptr '(:struct sdl-mouse-button-event) 'state))
			  (button (cffi:foreign-slot-value ev-ptr '(:struct sdl-mouse-button-event) 'button))
			  (x (cffi:foreign-slot-value ev-ptr '(:struct sdl-mouse-button-event) 'x))
			  (y (cffi:foreign-slot-value ev-ptr '(:struct sdl-mouse-button-event) 'y))
			  (clicks (cffi:foreign-slot-value ev-ptr '(:struct sdl-mouse-button-event) 'clicks))
			  )

		      t
		      
		      ;; (format t "mdown [~a,~a,~a,~a,~a] : pos [~a,~a,~a,~a]~%"
		      ;; 	      type timestamp window-id which state
		      ;; 	      (cond ((= button 1) "left")
		      ;; 		    ((= button 2) "middle")
		      ;; 		    ((= button 3) "right")
		      ;; 		    (t "none"))
		      ;; 	      x y clicks)
		      
		      )) ;; --- mouse down ---

		   
		   ((= ev-type +sdl-mousebuttonup+)
		    ;;(format t "mouse up !~%")		      
		    (let ((type (cffi:foreign-slot-value ev-ptr '(:struct sdl-mouse-button-event) 'type))
			  (timestamp (cffi:foreign-slot-value ev-ptr '(:struct sdl-mouse-button-event) 'timestamp))
			  (window-id (cffi:foreign-slot-value ev-ptr '(:struct sdl-mouse-button-event) 'window-id))
			  (which (cffi:foreign-slot-value ev-ptr '(:struct sdl-mouse-button-event) 'which))
			  (state (cffi:foreign-slot-value ev-ptr '(:struct sdl-mouse-button-event) 'state))
			  (button (cffi:foreign-slot-value ev-ptr '(:struct sdl-mouse-button-event) 'button))
			  (x (cffi:foreign-slot-value ev-ptr '(:struct sdl-mouse-button-event) 'x))
			  (y (cffi:foreign-slot-value ev-ptr '(:struct sdl-mouse-button-event) 'y))
			  (clicks (cffi:foreign-slot-value ev-ptr '(:struct sdl-mouse-button-event) 'clicks))
			  )

		      t
		      ;; (format t "mup [~a,~a,~a,~a,~a] : pos [~a,~a,~a,~a]~%"
		      ;; 	      type timestamp window-id which state
		      ;; 	      (cond ((= button 1) 'left)
		      ;; 		    ((= button 2) 'middle)
		      ;; 		    ((= button 3) 'right)
		      ;; 		    (t 'none))
		      ;; 	      x y clicks)

		      )) ;; --- mouse up ---

		   ((= ev-type +sdl-keyup+)
		    
		    ;; possible got whole thing topsy-turvey
		    (let (;;(type (cffi:foreign-slot-value ev-ptr '(:struct sdl-keyboard-event) 'type))
			  ;;(timestamp (cffi:foreign-slot-value ev-ptr '(:struct sdl-keyboard-event) 'timestamp))
			  ;;(window-id (cffi:foreign-slot-value ev-ptr '(:struct sdl-keyboard-event) 'window-id))
			  ;;(state (cffi:foreign-slot-value ev-ptr '(:struct sdl-keyboard-event) 'state))
			  ;;(repeat (cffi:foreign-slot-value ev-ptr '(:struct sdl-keyboard-event) 'repeat))
			  (scancode (cffi:foreign-slot-value ev-ptr '(:struct sdl-keyboard-event) 'scancode))
			  ;;(sym (cffi:foreign-slot-value ev-ptr '(:struct sdl-keyboard-event) 'sym))
			  (modifier (cffi:foreign-slot-value ev-ptr '(:struct sdl-keyboard-event) 'modifier)))

		      t
		      
		      (format t "key up : scancode ~a => ~a : modifier ~a => ~a ~%"
			      scancode
			      (decode-keyboard-scancode scancode)
			      modifier
			      (decode-keyboard-modifier modifier)
			      )

		      ;; report this key is now not pressed
		      (setf (aref *keys* scancode) nil)
		      
		      ;; if lift key up - do something ... land mine keys ?? 
		      

		      )) ;; ---- key up ------
		   
		   ((= ev-type +sdl-keydown+)

		    ;; possible got whole thing topsy-turvey
		    (let (;;(type (cffi:foreign-slot-value ev-ptr '(:struct sdl-keyboard-event) 'type))
			  ;;(timestamp (cffi:foreign-slot-value ev-ptr '(:struct sdl-keyboard-event) 'timestamp))
			  ;;(window-id (cffi:foreign-slot-value ev-ptr '(:struct sdl-keyboard-event) 'window-id))
			  ;;(state (cffi:foreign-slot-value ev-ptr '(:struct sdl-keyboard-event) 'state))
			  ;;(repeat (cffi:foreign-slot-value ev-ptr '(:struct sdl-keyboard-event) 'repeat))
			  (scancode (cffi:foreign-slot-value ev-ptr '(:struct sdl-keyboard-event) 'scancode))
			  ;;(sym (cffi:foreign-slot-value ev-ptr '(:struct sdl-keyboard-event) 'sym))
			  (modifier (cffi:foreign-slot-value ev-ptr '(:struct sdl-keyboard-event) 'modifier)))

		      t

		      (format t "key down : scancode ~a => ~a : modifier ~a => ~a~%"
			      scancode
			      (decode-keyboard-scancode scancode)
			      modifier
			      (decode-keyboard-modifier modifier)
			      )

		      ;; report this is now pressed  -without modifiers 
		      (setf (aref *keys* scancode) t)

		      
		      ;; alt keys do not seem to be detected correctly on cherry keyboard ...

		      (when (= scancode +sdl-scancode-up+)
			(incf n-balls n-balls)
			(reboot-balls)
			(decf *player-y*))
		      
		      (when (= scancode +sdl-scancode-down+)
			(decf n-balls (floor (/ n-balls 2)))
			(reboot-balls)
			(incf *player-y*))

		      (when (= scancode +sdl-scancode-left+)
			(decf time-step (* 0.10 time-step))
			(decf *player-x*))

		      (when (= scancode +sdl-scancode-right+)
			(incf time-step (* 0.10 time-step))
			(incf *player-x*))

		      

		      
		      ;; if press escape key
		      (when (= scancode +sdl-scancode-escape+)
			(setq *close* t)
			(throw 'poll-events t))
		      
		      
		      )) ;; --- keydown ---
		   
		   )))))))))
  
  ;; roughly 1 60th of a second
  ;; (sdl-delay (floor (/ 1000 60)))
  ;;(sleep 3)
  
  ;;(sdl-destroytexture texture)
  (sdl-destroyrenderer render)
  (sdl-destroywindow window)

  (img-quit)
  (sdl-quit)
  )


;; -------- start bouncing balls demo
(format t "(cairo-sdl::ball-demo) to start the bouncing balls demo ~%")

;;(demo)


