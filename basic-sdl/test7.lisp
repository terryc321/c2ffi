
#|

event identified - some rudimentary form of escape hatch opening when window close button pressed

opens and closes window using mouse cross on window top right.


|#

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
(DEFPARAMETER +SDL-WINDOWPOS-CENTERED+ 805240832)

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

    ;; (DEFINE-FOREIGN-FUNCTION '(SDL-FREE-SURFACE "SDL_FreeSurface") ':VOID
    ;;                          '((|surface| (:POINTER SDL-SURFACE))))
(defcfun "SDL_FreeSurface" :void
  (surface :pointer))

  ;; // destroy texture
  ;;   SDL_DestroyTexture(tex);
;; (DEFINE-FOREIGN-FUNCTION '(SDL-DESTROY-TEXTURE "SDL_DestroyTexture") ':VOID
;;   '((|texture| (:POINTER SDL-TEXTURE))))
(defcfun "SDL_DestroyTexture" :void
  (texture :pointer))


;;   // destroy renderer
  ;;   SDL_DestroyRenderer(rend);
;; (DEFINE-FOREIGN-FUNCTION '(SDL-DESTROY-RENDERER "SDL_DestroyRenderer")
;;   ':VOID '((|renderer| (:POINTER SDL-RENDERER))))
(defcfun "SDL_DestroyRenderer" :void
  (renderer :pointer))
 
;;   // destroy window
;;   SDL_DestroyWindow(win);
;; (DEFINE-FOREIGN-FUNCTION '(SDL-DESTROY-WINDOW "SDL_DestroyWindow") ':VOID
;;                          '((|window| (:POINTER SDL-WINDOW))))
(defcfun "SDL_DestroyWindow" :void
  (window :pointer))

;;(DEFINE-FOREIGN-FUNCTION '(SDL-DELAY "SDL_Delay") ':VOID '((|ms| UINT32)))
(defcfun "SDL_Delay" :void
  (ms :uint32))

;; SDL_Rect 
;; struct {
;; int x ;
;; int y ;
;; int w ;
;; int h ;
;; }
;; (DEFINE-FOREIGN-RECORD 'SDL-RECT :STRUCT 128 32
;;                            '((:X :INT :BIT-SIZE 32 :BIT-OFFSET 0 :BIT-ALIGNMENT
;;                               32)
;;                              (:Y :INT :BIT-SIZE 32 :BIT-OFFSET 32
;;                               :BIT-ALIGNMENT 32)
;;                              (:W :INT :BIT-SIZE 32 :BIT-OFFSET 64
;;                               :BIT-ALIGNMENT 32)
;;                              (:H :INT :BIT-SIZE 32 :BIT-OFFSET 96
;;                               :BIT-ALIGNMENT 32)))

(defcstruct sdl-rect
  "Rectangle structure."
  (x :int)
  (y :int)
  (w :int)
  (h :int))

;; make a rectangle to be 1/6th size of texture 
;; SDL_Rect dest;
;;SDL_QueryTexture(tex, NULL, NULL, &dest.w, &dest.h);
;; (DEFINE-FOREIGN-FUNCTION '(SDL-QUERY-TEXTURE "SDL_QueryTexture") ':INT
;;                          '((|texture| (:POINTER SDL-TEXTURE))
;;                            (|format| (:POINTER UINT32))
;;                            (|access| (:POINTER :INT)) (|w| (:POINTER :INT))
;;                            (|h| (:POINTER :INT))))


;; receive value int dest.w dest.h
(defcfun ("SDL_QueryTexture" %sdl-query-texture) :int
  (texture :pointer)
  (format :pointer)
  (access (:pointer :int))
  (w (:pointer :int))
  (h (:pointer :int)))


;; sdl-event is a union type ... ok ...
;; (DEFINE-FOREIGN-RECORD 'SDL-EVENT :UNION 448 64
;;                        '((:TYPE UINT32 :BIT-SIZE 32 :BIT-OFFSET 0
;;                           :BIT-ALIGNMENT 32)
;;                          (:COMMON SDL-COMMON-EVENT :BIT-SIZE 64 :BIT-OFFSET
;;                           0 :BIT-ALIGNMENT 32)
;;                          (:DISPLAY SDL-DISPLAY-EVENT :BIT-SIZE 160
;;                           :BIT-OFFSET 0 :BIT-ALIGNMENT 32)
;;                          (:WINDOW SDL-WINDOW-EVENT :BIT-SIZE 192
;;                           :BIT-OFFSET 0 :BIT-ALIGNMENT 32)
;;                          (:KEY SDL-KEYBOARD-EVENT :BIT-SIZE 256 :BIT-OFFSET
;;                           0 :BIT-ALIGNMENT 32)
;;                          (:EDIT SDL-TEXT-EDITING-EVENT :BIT-SIZE 416
;;                           :BIT-OFFSET 0 :BIT-ALIGNMENT 32)
;;                          (:EDIT-EXT SDL-TEXT-EDITING-EXT-EVENT :BIT-SIZE
;;                           256 :BIT-OFFSET 0 :BIT-ALIGNMENT 64)
;;                          (:TEXT SDL-TEXT-INPUT-EVENT :BIT-SIZE 352
;;                           :BIT-OFFSET 0 :BIT-ALIGNMENT 32)
;;                          (:MOTION SDL-MOUSE-MOTION-EVENT :BIT-SIZE 288
;;                           :BIT-OFFSET 0 :BIT-ALIGNMENT 32)
;;                          (:BUTTON SDL-MOUSE-BUTTON-EVENT :BIT-SIZE 224
;;                           :BIT-OFFSET 0 :BIT-ALIGNMENT 32)
;;                          (:WHEEL SDL-MOUSE-WHEEL-EVENT :BIT-SIZE 352
;;                           :BIT-OFFSET 0 :BIT-ALIGNMENT 32)
;;                          (:JAXIS SDL-JOY-AXIS-EVENT :BIT-SIZE 160
;;                           :BIT-OFFSET 0 :BIT-ALIGNMENT 32)
;;                          (:JBALL SDL-JOY-BALL-EVENT :BIT-SIZE 160
;;                           :BIT-OFFSET 0 :BIT-ALIGNMENT 32)
;;                          (:JHAT SDL-JOY-HAT-EVENT :BIT-SIZE 128 :BIT-OFFSET
;;                           0 :BIT-ALIGNMENT 32)
;;                          (:JBUTTON SDL-JOY-BUTTON-EVENT :BIT-SIZE 128
;;                           :BIT-OFFSET 0 :BIT-ALIGNMENT 32)
;;                          (:JDEVICE SDL-JOY-DEVICE-EVENT :BIT-SIZE 96
;;                           :BIT-OFFSET 0 :BIT-ALIGNMENT 32)
;;                          (:JBATTERY SDL-JOY-BATTERY-EVENT :BIT-SIZE 128
;;                           :BIT-OFFSET 0 :BIT-ALIGNMENT 32)
;;                          (:CAXIS SDL-CONTROLLER-AXIS-EVENT :BIT-SIZE 160
;;                           :BIT-OFFSET 0 :BIT-ALIGNMENT 32)
;;                          (:CBUTTON SDL-CONTROLLER-BUTTON-EVENT :BIT-SIZE
;;                           128 :BIT-OFFSET 0 :BIT-ALIGNMENT 32)
;;                          (:CDEVICE SDL-CONTROLLER-DEVICE-EVENT :BIT-SIZE 96
;;                           :BIT-OFFSET 0 :BIT-ALIGNMENT 32)
;;                          (:CTOUCHPAD SDL-CONTROLLER-TOUCHPAD-EVENT
;;                           :BIT-SIZE 256 :BIT-OFFSET 0 :BIT-ALIGNMENT 32)
;;                          (:CSENSOR SDL-CONTROLLER-SENSOR-EVENT :BIT-SIZE
;;                           320 :BIT-OFFSET 0 :BIT-ALIGNMENT 64)
;;                          (:ADEVICE SDL-AUDIO-DEVICE-EVENT :BIT-SIZE 128
;;                           :BIT-OFFSET 0 :BIT-ALIGNMENT 32)
;;                          (:SENSOR SDL-SENSOR-EVENT :BIT-SIZE 384
;;                           :BIT-OFFSET 0 :BIT-ALIGNMENT 64)
;;                          (:QUIT SDL-QUIT-EVENT :BIT-SIZE 64 :BIT-OFFSET 0
;;                           :BIT-ALIGNMENT 32)
;;                          (:USER SDL-USER-EVENT :BIT-SIZE 256 :BIT-OFFSET 0
;;                           :BIT-ALIGNMENT 64)
;;                          (:SYSWM SDL-SYS-WM-EVENT :BIT-SIZE 128 :BIT-OFFSET
;;                           0 :BIT-ALIGNMENT 64)
;;                          (:TFINGER SDL-TOUCH-FINGER-EVENT :BIT-SIZE 384
;;                           :BIT-OFFSET 0 :BIT-ALIGNMENT 64)
;;                          (:MGESTURE SDL-MULTI-GESTURE-EVENT :BIT-SIZE 320
;;                           :BIT-OFFSET 0 :BIT-ALIGNMENT 64)
;;                          (:DGESTURE SDL-DOLLAR-GESTURE-EVENT :BIT-SIZE 320
;;                           :BIT-OFFSET 0 :BIT-ALIGNMENT 64)
;;                          (:DROP SDL-DROP-EVENT :BIT-SIZE 192 :BIT-OFFSET 0
;;                           :BIT-ALIGNMENT 64)
;;                          (:PADDING (:ARRAY UINT8 56) :BIT-SIZE 448
;;                           :BIT-OFFSET 0 :BIT-ALIGNMENT 8)))
;; (DEFINE-FOREIGN-ALIAS 'SDL-EVENT '(:UNION (SDL-EVENT)))
;; (DEFINE-FOREIGN-FUNCTION '(SDL-PUMP-EVENTS "SDL_PumpEvents") ':VOID 'NIL)


;; polling ...
;; returns int 1 if pending event , 0 no event pending 
;; (DEFINE-FOREIGN-FUNCTION '(SDL-POLL-EVENT "SDL_PollEvent") ':INT
;;                          '((|event| (:POINTER SDL-EVENT))))
(defcfun "SDL_PollEvent" :int
  (event :pointer))


;; should close the sdl window 
(defparameter *close* nil)


;; SDL events
(DEFPARAMETER +SDL-FIRSTEVENT+ 0)
(DEFPARAMETER +SDL-QUIT+ 256)
(DEFPARAMETER +SDL-APP-TERMINATING+ 257)
(DEFPARAMETER +SDL-APP-LOWMEMORY+ 258)
(DEFPARAMETER +SDL-APP-WILLENTERBACKGROUND+ 259)
(DEFPARAMETER +SDL-APP-DIDENTERBACKGROUND+ 260)
(DEFPARAMETER +SDL-APP-WILLENTERFOREGROUND+ 261)
(DEFPARAMETER +SDL-APP-DIDENTERFOREGROUND+ 262)
(DEFPARAMETER +SDL-LOCALECHANGED+ 263)
(DEFPARAMETER +SDL-DISPLAYEVENT+ 336)
(DEFPARAMETER +SDL-WINDOWEVENT+ 512)
(DEFPARAMETER +SDL-SYSWMEVENT+ 513)
(DEFPARAMETER +SDL-KEYDOWN+ 768)
(DEFPARAMETER +SDL-KEYUP+ 769)
(DEFPARAMETER +SDL-TEXTEDITING+ 770)
(DEFPARAMETER +SDL-TEXTINPUT+ 771)
(DEFPARAMETER +SDL-KEYMAPCHANGED+ 772)
(DEFPARAMETER +SDL-TEXTEDITING-EXT+ 773)
(DEFPARAMETER +SDL-MOUSEMOTION+ 1024)
(DEFPARAMETER +SDL-MOUSEBUTTONDOWN+ 1025)
(DEFPARAMETER +SDL-MOUSEBUTTONUP+ 1026)
(DEFPARAMETER +SDL-MOUSEWHEEL+ 1027)
(DEFPARAMETER +SDL-JOYAXISMOTION+ 1536)
(DEFPARAMETER +SDL-JOYBALLMOTION+ 1537)
(DEFPARAMETER +SDL-JOYHATMOTION+ 1538)
(DEFPARAMETER +SDL-JOYBUTTONDOWN+ 1539)
(DEFPARAMETER +SDL-JOYBUTTONUP+ 1540)
(DEFPARAMETER +SDL-JOYDEVICEADDED+ 1541)
(DEFPARAMETER +SDL-JOYDEVICEREMOVED+ 1542)
(DEFPARAMETER +SDL-JOYBATTERYUPDATED+ 1543)
(DEFPARAMETER +SDL-CONTROLLERAXISMOTION+ 1616)
(DEFPARAMETER +SDL-CONTROLLERBUTTONDOWN+ 1617)
(DEFPARAMETER +SDL-CONTROLLERBUTTONUP+ 1618)
(DEFPARAMETER +SDL-CONTROLLERDEVICEADDED+ 1619)
(DEFPARAMETER +SDL-CONTROLLERDEVICEREMOVED+ 1620)
(DEFPARAMETER +SDL-CONTROLLERDEVICEREMAPPED+ 1621)
(DEFPARAMETER +SDL-CONTROLLERTOUCHPADDOWN+ 1622)
(DEFPARAMETER +SDL-CONTROLLERTOUCHPADMOTION+ 1623)
(DEFPARAMETER +SDL-CONTROLLERTOUCHPADUP+ 1624)
(DEFPARAMETER +SDL-CONTROLLERSENSORUPDATE+ 1625)
(DEFPARAMETER +SDL-CONTROLLERUPDATECOMPLETE-RESERVED-FOR-SDL3+ 1626)
(DEFPARAMETER +SDL-CONTROLLERSTEAMHANDLEUPDATED+ 1627)
(DEFPARAMETER +SDL-FINGERDOWN+ 1792)
(DEFPARAMETER +SDL-FINGERUP+ 1793)
(DEFPARAMETER +SDL-FINGERMOTION+ 1794)
(DEFPARAMETER +SDL-DOLLARGESTURE+ 2048)
(DEFPARAMETER +SDL-DOLLARRECORD+ 2049)
(DEFPARAMETER +SDL-MULTIGESTURE+ 2050)
(DEFPARAMETER +SDL-CLIPBOARDUPDATE+ 2304)
(DEFPARAMETER +SDL-DROPFILE+ 4096)
(DEFPARAMETER +SDL-DROPTEXT+ 4097)
(DEFPARAMETER +SDL-DROPBEGIN+ 4098)
(DEFPARAMETER +SDL-DROPCOMPLETE+ 4099)
(DEFPARAMETER +SDL-AUDIODEVICEADDED+ 4352)
(DEFPARAMETER +SDL-AUDIODEVICEREMOVED+ 4353)
(DEFPARAMETER +SDL-SENSORUPDATE+ 4608)
(DEFPARAMETER +SDL-RENDER-TARGETS-RESET+ 8192)
(DEFPARAMETER +SDL-RENDER-DEVICE-RESET+ 8193)
(DEFPARAMETER +SDL-POLLSENTINEL+ 32512)
(DEFPARAMETER +SDL-USEREVENT+ 32768)
(DEFPARAMETER +SDL-LASTEVENT+ 65535)

	     
;;SDL_SetRenderDrawColor(renderer, 242, 242, 242, 255);
;; (DEFINE-FOREIGN-FUNCTION
;;  '(SDL-SET-RENDER-DRAW-COLOR "SDL_SetRenderDrawColor") ':INT
;;  '((|renderer| (:POINTER SDL-RENDERER)) (|r| UINT8) (|g| UINT8) (|b| UINT8)
;;    (|a| UINT8)))
;; should we prefix foreign code with % sign ??
(defcfun ("SDL_SetRenderDrawColor" sdl-set-render-draw-color) :int
  (renderer :pointer)
  (r :uint8);red  
  (g :uint8);green
  (b :uint8);blue
  (a :uint8);alpha
  )


;; typedef struct SDL_MouseMotionEvent
;; {
;;     Uint32 type;        /**< ::SDL_MOUSEMOTION */
;;     Uint32 timestamp;   /**< In milliseconds, populated using SDL_GetTicks() */
;;     Uint32 windowID;    /**< The window with mouse focus, if any */
;;     Uint32 which;       /**< The mouse instance id, or SDL_TOUCH_MOUSEID */
;;     Uint32 state;       /**< The current button state */
;;     Sint32 x;           /**< X coordinate, relative to window */
;;     Sint32 y;           /**< Y coordinate, relative to window */
;;     Sint32 xrel;        /**< The relative motion in the X direction */
;;     Sint32 yrel;        /**< The relative motion in the Y direction */
;; } SDL_MouseMotionEvent;

(defcstruct sdl-mouse-motion-event
  (type :uint32);     0    /**< ::SDL_MOUSEMOTION */
  (timestamp :uint32);1   /**< In milliseconds, populated using SDL_GetTicks() */
  (window-id :uint32);2    /**< The window with mouse focus, if any */
  (which :uint32);    3   /**< The mouse instance id, or SDL_TOUCH_MOUSEID */
  (state :uint32);    4   /**< The current button state */
  (x :int32 );        5   /**< X coordinate, relative to window */
  (y :int32);         6  /**< Y coordinate, relative to window */
  (xrel :int32);      7  /**< The relative motion in the X direction */
  (yrel :int32);      8  /**< The relative motion in the Y direction */
  )



(defun demo ()
  (let ((window nil)
	(render nil)
	(surface nil)
	(texture nil))
    (sdl-init (logior +sdl-init-video+ +sdl-init-events+))
    (img-init (logior +img-init-png+))

    ;;centred window - splash screen maybe
    ;; (setq window (sdl-createwindow "my title"
    ;; 				   +sdl-windowpos-centered+
    ;; 				   +sdl-windowpos-centered+				   
    ;; 				   640
    ;; 				   480 (logior
    ;; 					+sdl-window-shown+
    ;; 					+sdl-window-resizable+)))
    (setq window (sdl-createwindow "my title"
				   0
				   0				   
				   640
				   480 (logior
					+sdl-window-shown+
					+sdl-window-resizable+)))
    

    (setq render (let ((render-flags (logior +sdl-renderer-accelerated+
					     +sdl-renderer-targettexture+))
		       (index -1))
		   (sdl-createrenderer window index render-flags)))
    (format t "render = ~a ~%" render)

    (setq surface (img-load "/home/terry/code/c2ffi/basic-sdl/woman3.jpeg"))
    (format t "surface = ~a ~%" surface)
    
    (setq texture (sdl-createtexturefromsurface render surface))
    (format t "texture = ~a ~%" texture)

    ;; free surface as not used no more
    (sdl-freesurface surface)

    ;; working code to get width and height of a texture - i.e image size width x height
    (cffi:with-foreign-object (ptr '(:struct sdl-rect))
      (%sdl-query-texture
       texture 
       (cffi:null-pointer) ;; NULL
       (cffi:null-pointer) ;; NULL
       (cffi:foreign-slot-pointer ptr '(:struct sdl-rect) 'w)
       (cffi:foreign-slot-pointer ptr '(:struct sdl-rect) 'h))       
      (format t "texture width and height is : w = ~a : h = ~a ~%"
	      (cffi:foreign-slot-value ptr '(:struct sdl-rect) 'w)
	      (cffi:foreign-slot-value ptr '(:struct sdl-rect) 'h)))
    
    (sdl-set-render-draw-color render 255 0 0 0) ;; RED BACKGROUnd ??
    (sdl-renderclear render)
    ;;(sdl-rendercopy render texture %null-ptr %null-ptr)
    (sdl-renderpresent render)

    ;; https://wiki.libsdl.org/SDL2/SDL_Event
    
    ;; the event loop
    ;;(loop while (not *close*) do

    
    ;; assuming char is same as byte 
    ;; know SDL_Event is 56 bytes ? int is 4 bytes , 56 / 4 => 14
    ;;(cffi:with-foreign-object (ev-ptr :int 14) t)
    (setq *close* nil)

    ;; int4 * 64 => 256 bytes , only 56 bytes needed for event
    (cffi:with-foreign-object (ev-ptr :int 64) 
      (loop while (not *close*) do

	;; ;; redraw screen
	
	(sdl-set-render-draw-color render 255 0 0 0) ;; RED BACKGROUND ?
	(sdl-renderclear render)
	;;(sdl-rendercopy render texture %null-ptr %null-ptr)
	(sdl-renderpresent render)

	;; process events ...
	(catch 'poll-events
	  (loop while t do
	    (let ((poll (sdl-pollevent ev-ptr)))
	      (cond
		((zerop poll) (throw 'poll-events t))
		(t
		 ;; switch event type 
		 (let ((ev-type (cffi:mem-aref ev-ptr :int 0)))
		   (format t "event type ~a ~%" ev-type)
		   (cond
		     ((= ev-type +sdl-quit+)
		      (format t "quitting !~%")
		      (setq has-poll-event nil)
		      (setq *close* t))
		     
		     ((= ev-type +sdl-mousemotion+)
		      ;;(format t "mouse moving !~%")
		      ;; read off respective index from ev-ptr

		      (let ((x (cffi:mem-aref ev-ptr :int 5))
			    (y (cffi:mem-aref ev-ptr :int 6)))
			(format t "mouse motion v1.0 : mouse at position ~a ~a ~%" x y))
		      
		      (let ((type (cffi:foreign-slot-value ev-ptr '(:struct sdl-mouse-motion-event) 'type))
			    (timestamp (cffi:foreign-slot-value ev-ptr '(:struct sdl-mouse-motion-event) 'timestamp))
			    (window-id (cffi:foreign-slot-value ev-ptr '(:struct sdl-mouse-motion-event) 'window-id))
			    (which (cffi:foreign-slot-value ev-ptr '(:struct sdl-mouse-motion-event) 'which))
			    (state (cffi:foreign-slot-value ev-ptr '(:struct sdl-mouse-motion-event) 'state))
			    (x (cffi:foreign-slot-value ev-ptr '(:struct sdl-mouse-motion-event) 'x))
			    (y (cffi:foreign-slot-value ev-ptr '(:struct sdl-mouse-motion-event) 'y))
			    (xrel (cffi:foreign-slot-value ev-ptr '(:struct sdl-mouse-motion-event) 'xrel))
			    (yrel (cffi:foreign-slot-value ev-ptr '(:struct sdl-mouse-motion-event) 'yrel)))			    
			(format t "mouse v2.0 [~a,~a,~a,~a,~a] : pos [~a,~a,~a,~a]~%" type timestamp window-id which state x y xrel yrel))
		      
		      );; --- mouse motion ----
		      
		     ((= ev-type +sdl-mousebuttondown+)
		      (format t "mouse down !~%"))

		     ((= ev-type +sdl-mousebuttonup+)
		      (format t "mouse up !~%"))

		     ((= ev-type +sdl-keyup+)
		      (format t "key up !~%"))
		     
		     ((= ev-type +sdl-keyup+)
		      (format t "key up !~%"))
		     
		     ((= ev-type +sdl-keydown+)
		      (format t "key down !~%"))
		     
		     )))))))))
	
    
    ;; roughly 1 60th of a second
    ;; (sdl-delay (floor (/ 1000 60)))
    ;;(sleep 3)
    
    (sdl-destroytexture texture)
    (sdl-destroyrenderer render)
    (sdl-destroywindow window)

    (img-quit)
    (sdl-quit)
    ))


;; -------- start demo
(format t "(demo) to start demo~%")
;;(demo)



#|
;; foreign memory pointers
;; &a  mem-aref ptr :int 0
;; a   value mem-aref ptr :int 0
(let ((ptr (foreign-alloc :int :count 8)))
  (setf (mem-aref ptr :int 0) 2)
  (setf (mem-aref ptr :int 1) 3)
  (setf (mem-aref ptr :int 2) 5)
  (setf (mem-aref ptr :int 3) 7)
  ;;
  (format t "ptr = ~a ~%" ptr)
  ;; refs
  (format t "ptr = ~a ~%" (+ (mem-ref ptr :int 0)))
  (format t "ptr = ~a ~%" (+ (mem-ref ptr :int 1)))
  (format t "ptr = ~a ~%" (+ (mem-ref ptr :int 2)))
  (format t "ptr = ~a ~%" (+ (mem-ref ptr :int 3)))
  ;; arefs 
  (format t "a = ~A~%" (mem-aref ptr :int 0))
  (format t "b = ~a~%" (mem-aref ptr :int 1))
  (format t "c = ~a~%" (mem-aref ptr :int 2))
(format t "d = ~a~%" (mem-aref ptr :int 3)))

    (let ((ptr (foreign-alloc :int :initial-contents '(2 3 5 7))))
      (format t "~a ~a ~a ~a~%"
	      (mem-aref ptr :int 0)
	      (mem-aref ptr :int 1)
	      (mem-aref ptr :int 2)
	      (mem-aref ptr :int 3)))
    
    ;; little bit complicated 
    ;; ;; get width height of texture
    (let ((ptr (foreign-alloc :int :initial-contents '(0 0 0 0))))
      ;;(sdl-querytexture texture %null-ptr %null-ptr &dest.w &dest.h)
      ;; SDL_QueryTexture(texture,NULL,NULL,&dest.w , &dest.h)
      (sdl-querytexture texture
			%null-ptr
			%null-ptr
			(mem-aref (mem-aref ptr :int) :int 2)
			(mem-aref (mem-aref ptr :int) :int 3))
      (let ((w (mem-ref ptr :int 2))
	    (h (mem-ref ptr :int 3)))
	(format t "width => ~a : height => ~a ~%" w h)
	(foreign-free ptr)))
    


|#


  
  
  
  


  
  
  




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
