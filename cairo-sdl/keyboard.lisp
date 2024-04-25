#|


(ql:quickload :cairo-sdl)
(cairo-sdl::demo)
(cairo-sdl::keyboard-demo)


keyboard.lisp
demonstration we can read the keyboard correctly , not withstanding the window manager intercepting keypresses
from extra keys like volume up / down buttons
initially assume all keys are not pressed ? is that a correct assumption ?
display a visual representation of keyboard top row , next row , next row ... space bar etc ...
this is going to be similar in typed language like ocaml ffi

interesting fact : modifier keys do not appear to generate repeat key events unlike keyboard does

interesting fact : alt keys do not seem to behave as modifier keys nor do they repeat
could be an offset error in the structure reading of the keyboard - if offset is wrong then decoding bits
will lead to think no alt key pressed , when there is.

essential keys

ESCAPE F1 F2 F3 F4 F5 F6 F7 F8 F9 F10 F11 F12

array holds whether key is pressed or not
depending on combination what the "text editor" will see

|#


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


(defun keyboard-demo ()
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

      ;; ;; redraw screen

      ;; row 1  - top row of keys 
      (let* ((x 100)(dx 16)(width 25)(dy 24)(y (+ (* 1 dy) 25)))
	(draw-key 41 (+ x (* dx 0)) y "esc")
	(draw-key 58 (+ x (* dx 2)) y "f1")
	(draw-key 59 (+ x (* dx 4)) y "f2")
	(draw-key 60 (+ x (* dx 6)) y "f3")
	(draw-key 61 (+ x (* dx 8)) y "f4")
	(draw-key 62 (+ x (* dx 10)) y "f5")
	(draw-key 63 (+ x (* dx 12)) y "f6")
	(draw-key 64 (+ x (* dx 14)) y "f7")
	(draw-key 65 (+ x (* dx 16)) y "f8")
	(draw-key 66 (+ x (* dx 18)) y "f9")
	(draw-key 67 (+ x (* dx 20)) y "f10")
	(draw-key 68 (+ x (* dx 22)) y "f11")
	(draw-key 69 (+ x (* dx 24)) y "f12")
	)

      (let* ((x 100)(dx 16)(width 25)(dy 24)(y (+ (* 2 25) dy)))
	(draw-key 53 (+ x (* dx 0)) y "`")
	(draw-key 30 (+ x (* dx 2)) y "1")
	(draw-key 31 (+ x (* dx 4)) y "2")
	(draw-key 32 (+ x (* dx 6)) y "3")
	(draw-key 33 (+ x (* dx 8)) y "4")
	(draw-key 34 (+ x (* dx 10)) y "5")
	(draw-key 35 (+ x (* dx 12)) y "6")
	(draw-key 36 (+ x (* dx 14)) y "7")
	(draw-key 37 (+ x (* dx 16)) y "8")
	(draw-key 38 (+ x (* dx 18)) y "9")
	(draw-key 39 (+ x (* dx 20)) y "0")
	(draw-key 45 (+ x (* dx 22)) y "-")
	(draw-key 46 (+ x (* dx 24)) y "+")
	(draw-key 42 (+ x (* dx 26)) y "bspc")	
	)
      
      (let* ((x 100)(dx 16)(width 25)(dy 24)(y (+ (* 3 25) dy)))
	(draw-key 43 (+ x (* dx 0)) y "tab")
	(draw-key 20 (+ x (* dx 2)) y "q")
	(draw-key 26 (+ x (* dx 4)) y "w")
	(draw-key 8 (+ x (* dx 6)) y "e")
	(draw-key 21 (+ x (* dx 8)) y "r")
	(draw-key 23 (+ x (* dx 10)) y "t")
	(draw-key 28 (+ x (* dx 12)) y "y")
	(draw-key 24 (+ x (* dx 14)) y "u")
	(draw-key 12 (+ x (* dx 16)) y "i");;
	(draw-key 18 (+ x (* dx 18)) y "o")
	(draw-key 19 (+ x (* dx 20)) y "p")
	(draw-key 47 (+ x (* dx 22)) y "[");;
	(draw-key 48 (+ x (* dx 24)) y "]")
	(draw-key 40 (+ x (* dx 26)) y "ret")	
	)

      
      (let* ((x 100)(dx 16)(width 25)(dy 24)(y (+ (* 4 25) dy)))
	(draw-key 57 (+ x (* dx 0)) y  "caps")
	(draw-key 4 (+ x (* dx 2)) y  "a")
	(draw-key 22 (+ x (* dx 4)) y  "s")
	(draw-key 7 (+ x (* dx 6)) y   "d")
	(draw-key 9 (+ x (* dx 8)) y  "f") ;;
	(draw-key 10 (+ x (* dx 10)) y "g")
	(draw-key 11 (+ x (* dx 12)) y "h")
	(draw-key 13 (+ x (* dx 14)) y "j")
	(draw-key 14 (+ x (* dx 16)) y "k");;
	(draw-key 15 (+ x (* dx 18)) y "l")
	(draw-key 51 (+ x (* dx 20)) y ";")
	(draw-key 52 (+ x (* dx 22)) y "'");;
	(draw-key 49 (+ x (* dx 24)) y "#")
	)
      

      (let* ((x 100)(dx 16)(width 25)(dy 24)(y (+ (* 5 25) dy)))
	(draw-key 225 (+ x (* dx 0)) y  "Lsf")
	(draw-key 100 (+ x (* dx 2)) y   "\\")
	(draw-key 29 (+ x (* dx 4)) y  "z")
	(draw-key 27 (+ x (* dx 6)) y   "x")
	(draw-key 6 (+ x (* dx 8)) y   "c") ;;
	(draw-key 25 (+ x (* dx 10)) y "v")
	(draw-key 5 (+ x (* dx 12)) y "b")
	(draw-key 17 (+ x (* dx 14)) y "n")
	(draw-key 16 (+ x (* dx 16)) y "m");;
	(draw-key 54 (+ x (* dx 18)) y ",")
	(draw-key 55 (+ x (* dx 20)) y ".")
	(draw-key 56 (+ x (* dx 22)) y "/");;
	(draw-key 229 (+ x (* dx 24)) y "Rsf")
	)
      

      (let* ((x 100)(dx 16)(width 25)(dy 24)(y (+ (* 6 25) dy)))
	(draw-key 224 (+ x (* dx 0)) y  "Lct")
	(draw-key 227 (+ x (* dx 2)) y   "Lwin")
	(draw-key 226 (+ x (* dx 4)) y  "Lalt")
	(draw-key 44 (+ x (* dx 6)) y   "spc")
	(draw-key 230 (+ x (* dx 8)) y   "Ralt") ;;
	(draw-key 231 (+ x (* dx 10)) y "Rwin")
	(draw-key 101 (+ x (* dx 12)) y "Calc")
	(draw-key 228 (+ x (* dx 14)) y "Rctl")
	)
      
      (let* ((x 100)(dx 16)(width 25)(dy 24)(y (+ (* 7 25) dy)))
	(draw-key 80 (+ x (* dx 0)) y  "lft")
	(draw-key 79 (+ x (* dx 2)) y   "rgt")
	(draw-key 81 (+ x (* dx 6)) y   "down")
	(draw-key 82 (+ x (* dx 4)) y  "up")
	)
      
      (let* ((x 100)(dx 16)(width 25)(dy 24)(y (+ (* 8 25) dy)))
	;;(draw-key 224 (+ x (* dx 0)) y  "Scrl") ;;; Print key unable to get as xfce took it	
	(draw-key 71 (+ x (* dx 0)) y  "Scrl")
	(draw-key 72 (+ x (* dx 2)) y   "Pas")
	(draw-key 73 (+ x (* dx 4)) y  "Ins")
	(draw-key 74 (+ x (* dx 6)) y   "Hom")
	(draw-key 75 (+ x (* dx 8)) y   "Pgup") ;;
	(draw-key 76 (+ x (* dx 10)) y "Del")
	(draw-key 77 (+ x (* dx 12)) y "End")
	(draw-key 78 (+ x (* dx 14)) y "Pgdn")
	)

      ;; ;; calc 266
      ;; 	  83 numlock
      ;; 	  84 kp-div
      ;; 	  85 kp mul
      ;; 	  42 backspace
      ;; 	  95 kp7
      ;; 	  96 kp8
      ;; 	  97 kp9
      ;; 	  86 kp-
      ;; 	  92 kp4
      ;; 	  93 kp5
      ;; 	  94 kp6
      ;; 	  87 kp+
      ;; 	  89 kp1
      ;; 	  90 kp2
      ;; 	  91 kp3
      ;; 	  88 kpEnter
      ;; 	  98 kp0
      ;; 	  99 kpPeriod
	 
      (let* ((x 700)(dx 16)(width 25)(dy 24)(y (+ (* 1 25) dy)))
	;;(draw-key 224 (+ x (* dx 0)) y  "Scrl") ;;; Print key unable to get as xfce took it	
	(draw-key 83 (+ x (* dx 0)) y   "num")
	(draw-key 84 (+ x (* dx 2)) y   "kp/")
	(draw-key 85 (+ x (* dx 4)) y   "kp*")
	(draw-key 42 (+ x (* dx 6)) y   "bck")
	
	(draw-key 95 (+ x (* dx 0)) (+ y dy)  "kp7") ;;
	(draw-key 96 (+ x (* dx 2)) (+ y dy)  "kp8")
	(draw-key 97 (+ x (* dx 4)) (+ y dy)  "kp9")
	(draw-key 86 (+ x (* dx 6)) (+ y dy)  "kp-")
	
	(draw-key 92 (+ x (* dx 0)) (+ y (* 2 dy))    "kp4")
	(draw-key 93 (+ x (* dx 2)) (+ y (* 2 dy))    "kp5")
	(draw-key 94 (+ x (* dx 4)) (+ y (* 2 dy))   "kp6")
	(draw-key 87 (+ x (* dx 6)) (+ y (* 2 dy))   "kp+")
	
	(draw-key 89 (+ x (* dx 0))  (+ y (* 3 dy))  "kp1") ;;
	(draw-key 90 (+ x (* dx 2)) (+ y (* 3 dy))  "kp2")
	(draw-key 91 (+ x (* dx 4)) (+ y (* 3 dy))  "kp3")
	(draw-key 88 (+ x (* dx 6)) (+ y (* 3 dy))  "kpE")
	
	(draw-key 98 (+ x (* dx 0)) (+ y (* 4 dy))  "kp0")
	(draw-key 99 (+ x (* dx 2)) (+ y (* 4 dy))  "kp.")
	
	)

      
        
      ;; (if (aref *keys* 41)
      ;; 	  (cairo-set-source-rgb cr 1.0d0 0.0d0 0.0d0)
      ;; 	  (cairo-set-source-rgb cr 0.0d0 0.0d0 1.0d0)
      ;; 	  )
      ;; (cairo-rectangle cr 100d0 100d0 25d0 25d0)
      ;; (cairo-fill cr)
  

      ;; (if (aref *keys* 58)
      ;; 	  (cairo-set-source-rgb cr 1.0d0 0.0d0 0.0d0)
      ;; 	  (cairo-set-source-rgb cr 0.0d0 0.0d0 1.0d0)
      ;; 	  )
      ;; (cairo-rectangle cr 125d0 25d0 25d0 25d0)
      ;; (cairo-fill cr)
  
      
	  
      
      ;; f1
      ;; f2
      ;; f3
      ;; f4
      ;; f5
      ;; f6
      ;; f7
      ;; f8
      ;; f9
      ;; f10
      ;; f11
      ;; f12
      
      
      ;; ;; fill the 640 x 480 area with a black filled rectangle - ie a black background
      ;; (cairo-set-source-rgb cr 0.0d0 0.0d0 0.0d0)
      ;; (cairo-rectangle cr  0d0  0d0 640d0 480d0);
      ;; (cairo-fill cr);


      ;; (cairo-set-line-width cr 0.1d0)
      ;; (cairo-set-source-rgb cr 0.0d0 1.0d0 0.0d0)
      ;; (cairo-rectangle cr 100d0 100d0 125d0 125d0)
      ;; (cairo-stroke cr)

      
      ;; cairo_set_source_rgb (cr, 0, 0, 0);
      ;; cairo_rectangle (cr, 0.25, 0.25, 0.5, 0.5);
      ;; cairo_stroke (cr);


      ;; doing this seems extremely slow 
      ;; (sdl-set-render-draw-color render 255 0 0 0) ;; RED BACKGROUND ?
      ;; (sdl-renderclear render)      
      ;; (sdl-renderpresent render)
      
      ;; draw a line

      
      ;; ;; draw a rectangle
      ;; ;;(cairo_set_source_rgba cr  1 1 1 1.0);
      ;; (cairo-set-source-rgb cr 0.5d0 0.3d0 1.0d0)
      ;; (cairo-rectangle cr  0d0  0d0 320d0 240d0); half 640 x 480 screen
      ;; (cairo-fill cr);
      
      
      ;; ;;(setq cr (cairo-create surface))
      ;; ;;(setq cr (cairo-create surface))
      ;; (cairo-select-font-face cr "serif" +cairo-font-slant-normal+ +cairo-font-weight-bold+)
      ;; (cairo-set-font-size cr 32.0d0)
      ;; (cairo-set-source-rgb cr 0.0d0 0.0d0 1.0d0)
      ;; (cairo-move-to cr 10.0d0 50.0d0)
      ;; (cairo-show-text cr "Hello, world!")
      ;; ;;(cairo-fill cr);
      ;; (cairo-stroke cr)

      ;; ;;; more noise
      ;; (noisy cr)
      
      ;; ;; flush cairo surface
      ;; (cairo-surface-flush cr)

      ;;(sdl-set-render-draw-color render 0 255 0 0) ;; Green drawing color ?
      ;;(sdl-renderclear render)

      
      ;; ;; some cairo stuff
      ;; (cairo-set-source-rgba cr 1.0d0 0.0d0 0.0d0 1.0d0)
      ;; ;;(my-cairo-report cr "cairo-set-source-rgba")
      ;; ;;(cairo-rectangle cr  50d0  50d0 30d0 30d0); half 640 x 480 screen

      ;; ;; red box at player x,y width 30 height 30 pixels
      ;; (cairo-rectangle cr
      ;; 		       (+ 0.0d0 (* 100 *player-x*))
      ;; 		       (+ 0.0d0 (* 100 *player-y*))
      ;; 		       30d0
      ;; 		       30d0)
      ;; ;;(my-cairo-report cr "cairo rectangle 0 0 to 320 240")
      ;; (cairo-fill cr);
      ;; ;;(my-cairo-report cr "cairo flll")

      

      ;; ;; blue 
      ;; (cairo-set-source-rgba cr 0.0d0 0.0d0 1.0d0 1.0d0)
      ;; (cairo-rectangle cr
      ;; 		       (+ -15.0d0 *mouse-x*)
      ;; 		       (+ -15.0d0 *mouse-y*)
      ;; 		       30d0
      ;; 		       30d0)
      ;; (cairo-fill cr);

      ;;(cairo-surface-flush cairo-surface)
      ;;(my-cairo-report cr "cairo flush to cairo surface -> ")

      ;;(cairo-surface-flush cr)
      ;;(my-cairo-report cr "cairo flush")
      
      ;; (sdl-unlock-surface cr) ;; lock to use software rendering ??
      ;;(sdl-set-render-draw-color render 0 0 255 0) ;; Lets have a blue color
      ;;(sdl-render-draw-line render 0 0 *mouse-x* *mouse-y*)
      ;; (sdl-lock-surface cr) ;; huh ??


      ;; ;; try get triangle 
      ;; (cairo-set-source-rgba cr 0.8d0 0.1d0 0.9d0 1.0d0)
      ;; ;; automatic double float conversion required > asap
      ;; (cairo-move-to cr 340d0 40d0)
      ;; (cairo-line-to cr 340d0 160d0)
      ;; (cairo-line-to cr 450d0 160d0)
      ;; (cairo-close-path cr)
      ;; (cairo-stroke-preserve cr)      
      ;; (cairo-fill cr)

      
      ;; (cairo-set-source-rgb cr 0.1d0 0.9d0 0.7d0)
      ;; ;; automatic double float conversion required > asap
      ;; (cairo-move-to cr 380d0 140d0)
      ;; (cairo-line-to cr 380d0 260d0)
      ;; (cairo-line-to cr 450d0 260d0)
      ;; (cairo-curve-to cr 440d0 255d0 380d0 245d0 380d0 140d0)
      ;; (cairo-stroke-preserve cr)      
      ;; (cairo-fill cr)
      
      
      ;; (cairo-set-source-rgba cr 0.2d0 0.5d0 0.2d0 1.0d0)
      ;; (cairo-rectangle cr
      ;; 		       (+ -15.0d0 *mouse-x*)
      ;; 		       (+ -15.0d0 *mouse-y*)
      ;; 		       30d0
      ;; 		       30d0)
      ;; (cairo-fill cr);

      
      ;; ;;
      ;; (poem cr)
      


      ;; 
      
      ;;(setq texture (sdl-createtexturefromsurface render cr))
      (setq texture (sdl-createtexturefromsurface render sdl-surface))
      
      ;; texture 
      
      ;; texture2 --- will that not just write over it ?
      (sdl-rendercopy render texture %null-ptr %null-ptr)

      ;; free the texture
      (sdl-destroy-texture texture)
      
      ;; show line
      (sdl-renderpresent render)

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
			(decf *player-y*))
		      (when (= scancode +sdl-scancode-down+)
			(incf *player-y*))
		      (when (= scancode +sdl-scancode-left+)
			(decf *player-x*))
		      (when (= scancode +sdl-scancode-right+)
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


;; -------- start demo
(format t "(cairo-sdl::demo) to start demo~%")

;;(demo)


