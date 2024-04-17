
#|

portability
computer says no...

clisp - ql unknown - quicklisp not installed
ecl   - ql unknown - quicklisp not installed
ccl   - ql unknown -
clasp - ql unknown
sbcl  - quicklisp is installed - so works

event identified - some rudimentary form of escape hatch opening when window close button pressed

opens and closes window using mouse cross on window top right.
has keyboard key identification
looking at modifier of keypress now - namely ALT left , CTRL left , CTRL right , ALT right , SHIFT left , SHIFT right 

|#

;; maximum safety , maximum debugging
;;(declaim (optimize (speed 0) (debug 3) (safety 3)))
;;(declaim (optimize (speed 0) (debug 3) (safety 0)))
;;(declaim (optimize (speed 3) (debug 0) (safety 3)))
;;(declaim (optimize (speed 3) (debug 0) (safety 0)))


(ql:quickload :cffi)
;;(ql:quickload :cl-autowrap)
;;(ql:quickload :cffi/c2ffi)
(ql:quickload :trivial-shell)


(uiop:define-package :temp
    (:use :common-lisp))

(in-package :temp)

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
(cffi:defcfun "SDL_Init" :int  (flags :unsigned-int))

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
(cffi:defcfun "SDL_Quit" :void)

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
(cffi:defcfun "SDL_CreateWindow" :pointer
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
(cffi:defcfun "SDL_CreateRenderer" :pointer
  (window :pointer) (index :int) (flags :unsigned-int))

;; -----------------------------------------------------------------------
(DEFPARAMETER +IMG-INIT-JPG+ 1) ;; ok
(DEFPARAMETER +IMG-INIT-PNG+ 2) ;; ok
(DEFPARAMETER +IMG-INIT-TIF+ 4) ;; ok 
(DEFPARAMETER +IMG-INIT-WEBP+ 8) ;; ok
(DEFPARAMETER +IMG-INIT-JXL+ 16) ;; --- no
(DEFPARAMETER +IMG-INIT-AVIF+ 32) ;; --- no


;; from SDL2_image 
(cffi:defcfun "IMG_Init" :int
  (flags :int))

(cffi:defcfun "IMG_Load" :pointer
  (filename :string))

(cffi:defcfun "IMG_Quit" :void)



    ;; (DEFINE-FOREIGN-FUNCTION '(SDL-RENDER-CLEAR "SDL_RenderClear") ':INT
    ;;                          '((|renderer| (:POINTER SDL-RENDERER))))
(cffi:defcfun "SDL_RenderClear" :int
  (render :pointer))

    ;; (DEFINE-FOREIGN-FUNCTION '(SDL-RENDER-COPY "SDL_RenderCopy") ':INT
    ;;                          '((|renderer| (:POINTER SDL-RENDERER))
    ;;                            (|texture| (:POINTER SDL-TEXTURE))
    ;;                            (|srcrect| (:POINTER SDL-RECT))
    ;;                            (|dstrect| (:POINTER SDL-RECT))))
(cffi:defcfun "SDL_RenderCopy" :int
  (render :pointer)
  (texture :pointer)
  (srcrect :pointer)
  (dstrect :pointer))

;;
;; (DEFINE-FOREIGN-FUNCTION '(SDL-RENDER-PRESENT "SDL_RenderPresent") ':VOID
;;                          '((|renderer| (:POINTER SDL-RENDERER))))
(cffi:defcfun "SDL_RenderPresent" :void
  (render :pointer))

    ;; (DEFINE-FOREIGN-FUNCTION
    ;;  '(SDL-CREATE-TEXTURE-FROM-SURFACE "SDL_CreateTextureFromSurface")
    ;;  '(:POINTER SDL-TEXTURE)
    ;;  '((|renderer| (:POINTER SDL-RENDERER))
    ;;    (|surface| (:POINTER SDL-SURFACE))))
(cffi:defcfun "SDL_CreateTextureFromSurface" :pointer
  (render :pointer) (surface :pointer))

;; forgetting to put :pointer and not :int

    ;; (DEFINE-FOREIGN-FUNCTION '(SDL-FREE-SURFACE "SDL_FreeSurface") ':VOID
    ;;                          '((|surface| (:POINTER SDL-SURFACE))))
(cffi:defcfun "SDL_FreeSurface" :void
  (surface :pointer))

  ;; // destroy texture
  ;;   SDL_DestroyTexture(tex);
;; (DEFINE-FOREIGN-FUNCTION '(SDL-DESTROY-TEXTURE "SDL_DestroyTexture") ':VOID
;;   '((|texture| (:POINTER SDL-TEXTURE))))
(cffi:defcfun "SDL_DestroyTexture" :void
  (texture :pointer))


;;   // destroy renderer
  ;;   SDL_DestroyRenderer(rend);
;; (DEFINE-FOREIGN-FUNCTION '(SDL-DESTROY-RENDERER "SDL_DestroyRenderer")
;;   ':VOID '((|renderer| (:POINTER SDL-RENDERER))))
(cffi:defcfun "SDL_DestroyRenderer" :void
  (renderer :pointer))
 
;;   // destroy window
;;   SDL_DestroyWindow(win);
;; (DEFINE-FOREIGN-FUNCTION '(SDL-DESTROY-WINDOW "SDL_DestroyWindow") ':VOID
;;                          '((|window| (:POINTER SDL-WINDOW))))
(cffi:defcfun "SDL_DestroyWindow" :void
  (window :pointer))

;;(DEFINE-FOREIGN-FUNCTION '(SDL-DELAY "SDL_Delay") ':VOID '((|ms| UINT32)))
(cffi:defcfun "SDL_Delay" :void
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

(cffi:defcstruct sdl-rect
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
(cffi:defcfun ("SDL_QueryTexture" %sdl-query-texture) :int
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
(cffi:defcfun "SDL_PollEvent" :int
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
(cffi:defcfun ("SDL_SetRenderDrawColor" sdl-set-render-draw-color) :int
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

(cffi:defcstruct sdl-mouse-motion-event
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



;; typedef struct SDL_KeyboardEvent
;; {
;;     Uint32 type;        /**< ::SDL_KEYDOWN or ::SDL_KEYUP */
;;     Uint32 timestamp;   /**< In milliseconds, populated using SDL_GetTicks() */
;;     Uint32 windowID;    /**< The window with keyboard focus, if any */
;;     Uint8 state;        /**< ::SDL_PRESSED or ::SDL_RELEASED */
;;     Uint8 repeat;       /**< Non-zero if this is a key repeat */
;;     Uint8 padding2;
;;     Uint8 padding3;
;;     SDL_Keysym keysym;  /**< The key that was pressed or released */
;; } SDL_KeyboardEvent;
;; keysym is also a structure perhaps

;; typedef struct SDL_Keysym
;; {
;;     SDL_Scancode scancode;      /**< SDL physical key code - see ::SDL_Scancode for details */
;;     SDL_Keycode sym;            /**< SDL virtual key code - see ::SDL_Keycode for details */
;;     Uint16 mod;                 /**< current key modifiers */
;;     Uint32 unused;
;; } SDL_Keysym;

;; typedef enum SDL_Scancode
;; {
;;     SDL_SCANCODE_UNKNOWN = 0,

;;     /**
;;      *  \name Usage page 0x07
;;      *
;;      *  These values are from usage page 0x07 (USB keyboard page).
;;      */
;;     /* @{ */

;;     SDL_SCANCODE_A = 4,
;;     SDL_SCANCODE_B = 5,
;;     SDL_SCANCODE_C = 6,
;;     SDL_SCANCODE_D = 7,
;;     SDL_SCANCODE_E = 8,
;;     SDL_SCANCODE_F = 9,
;;     SDL_SCANCODE_G = 10,
;;     SDL_SCANCODE_H = 11,
;;     SDL_SCANCODE_I = 12,
;;     SDL_SCANCODE_J = 13,
;;     SDL_SCANCODE_K = 14,
;;     SDL_SCANCODE_L = 15,
;;     SDL_SCANCODE_M = 16,
;;     SDL_SCANCODE_N = 17,
;;     SDL_SCANCODE_O = 18,
;;     SDL_SCANCODE_P = 19,
;;     SDL_SCANCODE_Q = 20,
;;     SDL_SCANCODE_R = 21,
;;     SDL_SCANCODE_S = 22,
;;     SDL_SCANCODE_T = 23,
;;     SDL_SCANCODE_U = 24,
;;     SDL_SCANCODE_V = 25,
;;     SDL_SCANCODE_W = 26,
;;     SDL_SCANCODE_X = 27,
;;     SDL_SCANCODE_Y = 28,
;;     SDL_SCANCODE_Z = 29,

;;     SDL_SCANCODE_1 = 30,
;;     SDL_SCANCODE_2 = 31,
;;     SDL_SCANCODE_3 = 32,
;;     SDL_SCANCODE_4 = 33,
;;     SDL_SCANCODE_5 = 34,
;;     SDL_SCANCODE_6 = 35,
;;     SDL_SCANCODE_7 = 36,
;;     SDL_SCANCODE_8 = 37,
;;     SDL_SCANCODE_9 = 38,
;;     SDL_SCANCODE_0 = 39,

;;     SDL_SCANCODE_RETURN = 40,
;;     SDL_SCANCODE_ESCAPE = 41,
;;     SDL_SCANCODE_BACKSPACE = 42,
;;     SDL_SCANCODE_TAB = 43,
;;     SDL_SCANCODE_SPACE = 44,

;;     SDL_SCANCODE_MINUS = 45,
;;     SDL_SCANCODE_EQUALS = 46,
;;     SDL_SCANCODE_LEFTBRACKET = 47,
;;     SDL_SCANCODE_RIGHTBRACKET = 48,
;;     SDL_SCANCODE_BACKSLASH = 49, /**< Located at the lower left of the return
;;                                   *   key on ISO keyboards and at the right end
;;                                   *   of the QWERTY row on ANSI keyboards.
;;                                   *   Produces REVERSE SOLIDUS (backslash) and
;;                                   *   VERTICAL LINE in a US layout, REVERSE
;;                                   *   SOLIDUS and VERTICAL LINE in a UK Mac
;;                                   *   layout, NUMBER SIGN and TILDE in a UK
;;                                   *   Windows layout, DOLLAR SIGN and POUND SIGN
;;                                   *   in a Swiss German layout, NUMBER SIGN and
;;                                   *   APOSTROPHE in a German layout, GRAVE
;;                                   *   ACCENT and POUND SIGN in a French Mac
;;                                   *   layout, and ASTERISK and MICRO SIGN in a
;;                                   *   French Windows layout.
;;                                   */
;;     SDL_SCANCODE_NONUSHASH = 50, /**< ISO USB keyboards actually use this code
;;                                   *   instead of 49 for the same key, but all
;;                                   *   OSes I've seen treat the two codes
;;                                   *   identically. So, as an implementor, unless
;;                                   *   your keyboard generates both of those
;;                                   *   codes and your OS treats them differently,
;;                                   *   you should generate SDL_SCANCODE_BACKSLASH
;;                                   *   instead of this code. As a user, you
;;                                   *   should not rely on this code because SDL
;;                                   *   will never generate it with most (all?)
;;                                   *   keyboards.
;;                                   */
;;     SDL_SCANCODE_SEMICOLON = 51,
;;     SDL_SCANCODE_APOSTROPHE = 52,
;;     SDL_SCANCODE_GRAVE = 53, /**< Located in the top left corner (on both ANSI
;;                               *   and ISO keyboards). Produces GRAVE ACCENT and
;;                               *   TILDE in a US Windows layout and in US and UK
;;                               *   Mac layouts on ANSI keyboards, GRAVE ACCENT
;;                               *   and NOT SIGN in a UK Windows layout, SECTION
;;                               *   SIGN and PLUS-MINUS SIGN in US and UK Mac
;;                               *   layouts on ISO keyboards, SECTION SIGN and
;;                               *   DEGREE SIGN in a Swiss German layout (Mac:
;;                               *   only on ISO keyboards), CIRCUMFLEX ACCENT and
;;                               *   DEGREE SIGN in a German layout (Mac: only on
;;                               *   ISO keyboards), SUPERSCRIPT TWO and TILDE in a
;;                               *   French Windows layout, COMMERCIAL AT and
;;                               *   NUMBER SIGN in a French Mac layout on ISO
;;                               *   keyboards, and LESS-THAN SIGN and GREATER-THAN
;;                               *   SIGN in a Swiss German, German, or French Mac
;;                               *   layout on ANSI keyboards.
;;                               */
;;     SDL_SCANCODE_COMMA = 54,
;;     SDL_SCANCODE_PERIOD = 55,
;;     SDL_SCANCODE_SLASH = 56,

;;     SDL_SCANCODE_CAPSLOCK = 57,

;;     SDL_SCANCODE_F1 = 58,
;;     SDL_SCANCODE_F2 = 59,
;;     SDL_SCANCODE_F3 = 60,
;;     SDL_SCANCODE_F4 = 61,
;;     SDL_SCANCODE_F5 = 62,
;;     SDL_SCANCODE_F6 = 63,
;;     SDL_SCANCODE_F7 = 64,
;;     SDL_SCANCODE_F8 = 65,
;;     SDL_SCANCODE_F9 = 66,
;;     SDL_SCANCODE_F10 = 67,
;;     SDL_SCANCODE_F11 = 68,
;;     SDL_SCANCODE_F12 = 69,

;;     SDL_SCANCODE_PRINTSCREEN = 70,
;;     SDL_SCANCODE_SCROLLLOCK = 71,
;;     SDL_SCANCODE_PAUSE = 72,
;;     SDL_SCANCODE_INSERT = 73, /**< insert on PC, help on some Mac keyboards (but
;;                                    does send code 73, not 117) */
;;     SDL_SCANCODE_HOME = 74,
;;     SDL_SCANCODE_PAGEUP = 75,
;;     SDL_SCANCODE_DELETE = 76,
;;     SDL_SCANCODE_END = 77,
;;     SDL_SCANCODE_PAGEDOWN = 78,
;;     SDL_SCANCODE_RIGHT = 79,
;;     SDL_SCANCODE_LEFT = 80,
;;     SDL_SCANCODE_DOWN = 81,
;;     SDL_SCANCODE_UP = 82,

;;     SDL_SCANCODE_NUMLOCKCLEAR = 83, /**< num lock on PC, clear on Mac keyboards
;;                                      */
;;     SDL_SCANCODE_KP_DIVIDE = 84,
;;     SDL_SCANCODE_KP_MULTIPLY = 85,
;;     SDL_SCANCODE_KP_MINUS = 86,
;;     SDL_SCANCODE_KP_PLUS = 87,
;;     SDL_SCANCODE_KP_ENTER = 88,
;;     SDL_SCANCODE_KP_1 = 89,
;;     SDL_SCANCODE_KP_2 = 90,
;;     SDL_SCANCODE_KP_3 = 91,
;;     SDL_SCANCODE_KP_4 = 92,
;;     SDL_SCANCODE_KP_5 = 93,
;;     SDL_SCANCODE_KP_6 = 94,
;;     SDL_SCANCODE_KP_7 = 95,
;;     SDL_SCANCODE_KP_8 = 96,
;;     SDL_SCANCODE_KP_9 = 97,
;;     SDL_SCANCODE_KP_0 = 98,
;;     SDL_SCANCODE_KP_PERIOD = 99,

;;     SDL_SCANCODE_NONUSBACKSLASH = 100, /**< This is the additional key that ISO
;;                                         *   keyboards have over ANSI ones,
;;                                         *   located between left shift and Y.
;;                                         *   Produces GRAVE ACCENT and TILDE in a
;;                                         *   US or UK Mac layout, REVERSE SOLIDUS
;;                                         *   (backslash) and VERTICAL LINE in a
;;                                         *   US or UK Windows layout, and
;;                                         *   LESS-THAN SIGN and GREATER-THAN SIGN
;;                                         *   in a Swiss German, German, or French
;;                                         *   layout. */
;;     SDL_SCANCODE_APPLICATION = 101, /**< windows contextual menu, compose */
;;     SDL_SCANCODE_POWER = 102, /**< The USB document says this is a status flag,
;;                                *   not a physical key - but some Mac keyboards
;;                                *   do have a power key. */
;;     SDL_SCANCODE_KP_EQUALS = 103,
;;     SDL_SCANCODE_F13 = 104,
;;     SDL_SCANCODE_F14 = 105,
;;     SDL_SCANCODE_F15 = 106,
;;     SDL_SCANCODE_F16 = 107,
;;     SDL_SCANCODE_F17 = 108,
;;     SDL_SCANCODE_F18 = 109,
;;     SDL_SCANCODE_F19 = 110,
;;     SDL_SCANCODE_F20 = 111,
;;     SDL_SCANCODE_F21 = 112,
;;     SDL_SCANCODE_F22 = 113,
;;     SDL_SCANCODE_F23 = 114,
;;     SDL_SCANCODE_F24 = 115,
;;     SDL_SCANCODE_EXECUTE = 116,
;;     SDL_SCANCODE_HELP = 117,    /**< AL Integrated Help Center */
;;     SDL_SCANCODE_MENU = 118,    /**< Menu (show menu) */
;;     SDL_SCANCODE_SELECT = 119,
;;     SDL_SCANCODE_STOP = 120,    /**< AC Stop */
;;     SDL_SCANCODE_AGAIN = 121,   /**< AC Redo/Repeat */
;;     SDL_SCANCODE_UNDO = 122,    /**< AC Undo */
;;     SDL_SCANCODE_CUT = 123,     /**< AC Cut */
;;     SDL_SCANCODE_COPY = 124,    /**< AC Copy */
;;     SDL_SCANCODE_PASTE = 125,   /**< AC Paste */
;;     SDL_SCANCODE_FIND = 126,    /**< AC Find */
;;     SDL_SCANCODE_MUTE = 127,
;;     SDL_SCANCODE_VOLUMEUP = 128,
;;     SDL_SCANCODE_VOLUMEDOWN = 129,
;; /* not sure whether there's a reason to enable these */
;; /*     SDL_SCANCODE_LOCKINGCAPSLOCK = 130,  */
;; /*     SDL_SCANCODE_LOCKINGNUMLOCK = 131, */
;; /*     SDL_SCANCODE_LOCKINGSCROLLLOCK = 132, */
;;     SDL_SCANCODE_KP_COMMA = 133,
;;     SDL_SCANCODE_KP_EQUALSAS400 = 134,

;;     SDL_SCANCODE_INTERNATIONAL1 = 135, /**< used on Asian keyboards, see
;;                                             footnotes in USB doc */
;;     SDL_SCANCODE_INTERNATIONAL2 = 136,
;;     SDL_SCANCODE_INTERNATIONAL3 = 137, /**< Yen */
;;     SDL_SCANCODE_INTERNATIONAL4 = 138,
;;     SDL_SCANCODE_INTERNATIONAL5 = 139,
;;     SDL_SCANCODE_INTERNATIONAL6 = 140,
;;     SDL_SCANCODE_INTERNATIONAL7 = 141,
;;     SDL_SCANCODE_INTERNATIONAL8 = 142,
;;     SDL_SCANCODE_INTERNATIONAL9 = 143,
;;     SDL_SCANCODE_LANG1 = 144, /**< Hangul/English toggle */
;;     SDL_SCANCODE_LANG2 = 145, /**< Hanja conversion */
;;     SDL_SCANCODE_LANG3 = 146, /**< Katakana */
;;     SDL_SCANCODE_LANG4 = 147, /**< Hiragana */
;;     SDL_SCANCODE_LANG5 = 148, /**< Zenkaku/Hankaku */
;;     SDL_SCANCODE_LANG6 = 149, /**< reserved */
;;     SDL_SCANCODE_LANG7 = 150, /**< reserved */
;;     SDL_SCANCODE_LANG8 = 151, /**< reserved */
;;     SDL_SCANCODE_LANG9 = 152, /**< reserved */

;;     SDL_SCANCODE_ALTERASE = 153,    /**< Erase-Eaze */
;;     SDL_SCANCODE_SYSREQ = 154,
;;     SDL_SCANCODE_CANCEL = 155,      /**< AC Cancel */
;;     SDL_SCANCODE_CLEAR = 156,
;;     SDL_SCANCODE_PRIOR = 157,
;;     SDL_SCANCODE_RETURN2 = 158,
;;     SDL_SCANCODE_SEPARATOR = 159,
;;     SDL_SCANCODE_OUT = 160,
;;     SDL_SCANCODE_OPER = 161,
;;     SDL_SCANCODE_CLEARAGAIN = 162,
;;     SDL_SCANCODE_CRSEL = 163,
;;     SDL_SCANCODE_EXSEL = 164,

;;     SDL_SCANCODE_KP_00 = 176,
;;     SDL_SCANCODE_KP_000 = 177,
;;     SDL_SCANCODE_THOUSANDSSEPARATOR = 178,
;;     SDL_SCANCODE_DECIMALSEPARATOR = 179,
;;     SDL_SCANCODE_CURRENCYUNIT = 180,
;;     SDL_SCANCODE_CURRENCYSUBUNIT = 181,
;;     SDL_SCANCODE_KP_LEFTPAREN = 182,
;;     SDL_SCANCODE_KP_RIGHTPAREN = 183,
;;     SDL_SCANCODE_KP_LEFTBRACE = 184,
;;     SDL_SCANCODE_KP_RIGHTBRACE = 185,
;;     SDL_SCANCODE_KP_TAB = 186,
;;     SDL_SCANCODE_KP_BACKSPACE = 187,
;;     SDL_SCANCODE_KP_A = 188,
;;     SDL_SCANCODE_KP_B = 189,
;;     SDL_SCANCODE_KP_C = 190,
;;     SDL_SCANCODE_KP_D = 191,
;;     SDL_SCANCODE_KP_E = 192,
;;     SDL_SCANCODE_KP_F = 193,
;;     SDL_SCANCODE_KP_XOR = 194,
;;     SDL_SCANCODE_KP_POWER = 195,
;;     SDL_SCANCODE_KP_PERCENT = 196,
;;     SDL_SCANCODE_KP_LESS = 197,
;;     SDL_SCANCODE_KP_GREATER = 198,
;;     SDL_SCANCODE_KP_AMPERSAND = 199,
;;     SDL_SCANCODE_KP_DBLAMPERSAND = 200,
;;     SDL_SCANCODE_KP_VERTICALBAR = 201,
;;     SDL_SCANCODE_KP_DBLVERTICALBAR = 202,
;;     SDL_SCANCODE_KP_COLON = 203,
;;     SDL_SCANCODE_KP_HASH = 204,
;;     SDL_SCANCODE_KP_SPACE = 205,
;;     SDL_SCANCODE_KP_AT = 206,
;;     SDL_SCANCODE_KP_EXCLAM = 207,
;;     SDL_SCANCODE_KP_MEMSTORE = 208,
;;     SDL_SCANCODE_KP_MEMRECALL = 209,
;;     SDL_SCANCODE_KP_MEMCLEAR = 210,
;;     SDL_SCANCODE_KP_MEMADD = 211,
;;     SDL_SCANCODE_KP_MEMSUBTRACT = 212,
;;     SDL_SCANCODE_KP_MEMMULTIPLY = 213,
;;     SDL_SCANCODE_KP_MEMDIVIDE = 214,
;;     SDL_SCANCODE_KP_PLUSMINUS = 215,
;;     SDL_SCANCODE_KP_CLEAR = 216,
;;     SDL_SCANCODE_KP_CLEARENTRY = 217,
;;     SDL_SCANCODE_KP_BINARY = 218,
;;     SDL_SCANCODE_KP_OCTAL = 219,
;;     SDL_SCANCODE_KP_DECIMAL = 220,
;;     SDL_SCANCODE_KP_HEXADECIMAL = 221,

;;     SDL_SCANCODE_LCTRL = 224,
;;     SDL_SCANCODE_LSHIFT = 225,
;;     SDL_SCANCODE_LALT = 226, /**< alt, option */
;;     SDL_SCANCODE_LGUI = 227, /**< windows, command (apple), meta */
;;     SDL_SCANCODE_RCTRL = 228,
;;     SDL_SCANCODE_RSHIFT = 229,
;;     SDL_SCANCODE_RALT = 230, /**< alt gr, option */
;;     SDL_SCANCODE_RGUI = 231, /**< windows, command (apple), meta */

;;     SDL_SCANCODE_MODE = 257,    /**< I'm not sure if this is really not covered
;;                                  *   by any of the above, but since there's a
;;                                  *   special KMOD_MODE for it I'm adding it here
;;                                  */

;;     /* @} *//* Usage page 0x07 */

;;     /**
;;      *  \name Usage page 0x0C
;;      *
;;      *  These values are mapped from usage page 0x0C (USB consumer page).
;;      *  See https://usb.org/sites/default/files/hut1_2.pdf
;;      *
;;      *  There are way more keys in the spec than we can represent in the
;;      *  current scancode range, so pick the ones that commonly come up in
;;      *  real world usage.
;;      */
;;     /* @{ */

;;     SDL_SCANCODE_AUDIONEXT = 258,
;;     SDL_SCANCODE_AUDIOPREV = 259,
;;     SDL_SCANCODE_AUDIOSTOP = 260,
;;     SDL_SCANCODE_AUDIOPLAY = 261,
;;     SDL_SCANCODE_AUDIOMUTE = 262,
;;     SDL_SCANCODE_MEDIASELECT = 263,
;;     SDL_SCANCODE_WWW = 264,             /**< AL Internet Browser */
;;     SDL_SCANCODE_MAIL = 265,
;;     SDL_SCANCODE_CALCULATOR = 266,      /**< AL Calculator */
;;     SDL_SCANCODE_COMPUTER = 267,
;;     SDL_SCANCODE_AC_SEARCH = 268,       /**< AC Search */
;;     SDL_SCANCODE_AC_HOME = 269,         /**< AC Home */
;;     SDL_SCANCODE_AC_BACK = 270,         /**< AC Back */
;;     SDL_SCANCODE_AC_FORWARD = 271,      /**< AC Forward */
;;     SDL_SCANCODE_AC_STOP = 272,         /**< AC Stop */
;;     SDL_SCANCODE_AC_REFRESH = 273,      /**< AC Refresh */
;;     SDL_SCANCODE_AC_BOOKMARKS = 274,    /**< AC Bookmarks */

;;     /* @} *//* Usage page 0x0C */

;;     /**
;;      *  \name Walther keys
;;      *
;;      *  These are values that Christian Walther added (for mac keyboard?).
;;      */
;;     /* @{ */

;;     SDL_SCANCODE_BRIGHTNESSDOWN = 275,
;;     SDL_SCANCODE_BRIGHTNESSUP = 276,
;;     SDL_SCANCODE_DISPLAYSWITCH = 277, /**< display mirroring/dual display
;;                                            switch, video mode switch */
;;     SDL_SCANCODE_KBDILLUMTOGGLE = 278,
;;     SDL_SCANCODE_KBDILLUMDOWN = 279,
;;     SDL_SCANCODE_KBDILLUMUP = 280,
;;     SDL_SCANCODE_EJECT = 281,
;;     SDL_SCANCODE_SLEEP = 282,           /**< SC System Sleep */

;;     SDL_SCANCODE_APP1 = 283,
;;     SDL_SCANCODE_APP2 = 284,

;;     /* @} *//* Walther keys */

;;     /**
;;      *  \name Usage page 0x0C (additional media keys)
;;      *
;;      *  These values are mapped from usage page 0x0C (USB consumer page).
;;      */
;;     /* @{ */

;;     SDL_SCANCODE_AUDIOREWIND = 285,
;;     SDL_SCANCODE_AUDIOFASTFORWARD = 286,

;;     /* @} *//* Usage page 0x0C (additional media keys) */

;;     /**
;;      *  \name Mobile keys
;;      *
;;      *  These are values that are often used on mobile phones.
;;      */
;;     /* @{ */

;;     SDL_SCANCODE_SOFTLEFT = 287, /**< Usually situated below the display on phones and
;;                                       used as a multi-function feature key for selecting
;;                                       a software defined function shown on the bottom left
;;                                       of the display. */
;;     SDL_SCANCODE_SOFTRIGHT = 288, /**< Usually situated below the display on phones and
;;                                        used as a multi-function feature key for selecting
;;                                        a software defined function shown on the bottom right
;;                                        of the display. */
;;     SDL_SCANCODE_CALL = 289, /**< Used for accepting phone calls. */
;;     SDL_SCANCODE_ENDCALL = 290, /**< Used for rejecting phone calls. */

;;     /* @} *//* Mobile keys */

;;     /* Add any other keys here. */

;;     SDL_NUM_SCANCODES = 512 /**< not a key, just marks the number of scancodes
;;                                  for array bounds */
;; } SDL_Scancode;

;; typedef Sint32 SDL_Keycode;

;; hash-table but an array is more suitable

;; keyboard scancode decode chart

(defparameter *scancode-table* (make-array 1024 :initial-element "unknown"))



;; a special one off - key definition - just 255 more to go ...
(defparameter +sdl-scancode-escape+ 41)

(defparameter *scancodes* 
  '(
    (SDL_SCANCODE_A  4);
    (SDL_SCANCODE_B  5);
    (SDL_SCANCODE_C  6);
    (SDL_SCANCODE_D  7);
    (SDL_SCANCODE_E  8);
    (SDL_SCANCODE_F  9);
    (SDL_SCANCODE_G  10);
    (SDL_SCANCODE_H  11);
    (SDL_SCANCODE_I  12);
    (SDL_SCANCODE_J  13);
    (SDL_SCANCODE_K  14);
    (SDL_SCANCODE_L  15);
    (SDL_SCANCODE_M  16);
    (SDL_SCANCODE_N  17);
    (SDL_SCANCODE_O  18);
    (SDL_SCANCODE_P  19);
    (SDL_SCANCODE_Q  20);
    (SDL_SCANCODE_R  21);
    (SDL_SCANCODE_S  22);
    (SDL_SCANCODE_T  23);
    (SDL_SCANCODE_U  24);
    (SDL_SCANCODE_V  25);
    (SDL_SCANCODE_W  26);
    (SDL_SCANCODE_X  27);
    (SDL_SCANCODE_Y  28);
    (SDL_SCANCODE_Z  29);
    (SDL_SCANCODE_1  30);
    (SDL_SCANCODE_2  31);
    (SDL_SCANCODE_3  32);
    (SDL_SCANCODE_4  33);
    (SDL_SCANCODE_5  34);
    (SDL_SCANCODE_6  35);
    (SDL_SCANCODE_7  36);
    (SDL_SCANCODE_8  37);
    (SDL_SCANCODE_9  38);
    (SDL_SCANCODE_0  39);
    (SDL_SCANCODE_RETURN  40);
    (SDL_SCANCODE_ESCAPE  41);
    (SDL_SCANCODE_BACKSPACE  42);
    (SDL_SCANCODE_TAB  43);
    (SDL_SCANCODE_SPACE  44);
    (SDL_SCANCODE_MINUS  45);
    (SDL_SCANCODE_EQUALS  46);
    (SDL_SCANCODE_LEFTBRACKET  47);
    (SDL_SCANCODE_RIGHTBRACKET  48);
    (SDL_SCANCODE_BACKSLASH  49); 
    (SDL_SCANCODE_NONUSHASH  50); 
    (SDL_SCANCODE_SEMICOLON  51);
    (SDL_SCANCODE_APOSTROPHE  52);
    (SDL_SCANCODE_GRAVE  53); 
    (SDL_SCANCODE_COMMA  54);
    (SDL_SCANCODE_PERIOD  55);
    (SDL_SCANCODE_SLASH  56);
    (SDL_SCANCODE_CAPSLOCK  57);
    (SDL_SCANCODE_F1  58);
    (SDL_SCANCODE_F2  59);
    (SDL_SCANCODE_F3  60);
    (SDL_SCANCODE_F4  61);
    (SDL_SCANCODE_F5  62);
    (SDL_SCANCODE_F6  63);
    (SDL_SCANCODE_F7  64);
    (SDL_SCANCODE_F8  65);
    (SDL_SCANCODE_F9  66);
    (SDL_SCANCODE_F10  67);
    (SDL_SCANCODE_F11  68);
    (SDL_SCANCODE_F12  69);
    (SDL_SCANCODE_PRINTSCREEN  70);
    (SDL_SCANCODE_SCROLLLOCK  71);
    (SDL_SCANCODE_PAUSE  72);
    (SDL_SCANCODE_INSERT  73);
    (SDL_SCANCODE_HOME  74);
    (SDL_SCANCODE_PAGEUP  75);
    (SDL_SCANCODE_DELETE  76);
    (SDL_SCANCODE_END  77);
    (SDL_SCANCODE_PAGEDOWN  78);
    (SDL_SCANCODE_RIGHT  79);
    (SDL_SCANCODE_LEFT  80);
    (SDL_SCANCODE_DOWN  81);
    (SDL_SCANCODE_UP  82);
    (SDL_SCANCODE_NUMLOCKCLEAR  83);
    (SDL_SCANCODE_KP_DIVIDE  84);
    (SDL_SCANCODE_KP_MULTIPLY  85);
    (SDL_SCANCODE_KP_MINUS  86);
    (SDL_SCANCODE_KP_PLUS  87);
    (SDL_SCANCODE_KP_ENTER  88);
    (SDL_SCANCODE_KP_1  89);
    (SDL_SCANCODE_KP_2  90);
    (SDL_SCANCODE_KP_3  91);
    (SDL_SCANCODE_KP_4  92);
    (SDL_SCANCODE_KP_5  93);
    (SDL_SCANCODE_KP_6  94);
    (SDL_SCANCODE_KP_7  95);
    (SDL_SCANCODE_KP_8  96);
    (SDL_SCANCODE_KP_9  97);
    (SDL_SCANCODE_KP_0  98);
    (SDL_SCANCODE_KP_PERIOD  99);
    (SDL_SCANCODE_NONUSBACKSLASH  100);
    (SDL_SCANCODE_APPLICATION  101); 
    (SDL_SCANCODE_POWER  102);
    (SDL_SCANCODE_KP_EQUALS  103);
    (SDL_SCANCODE_F13  104);
    (SDL_SCANCODE_F14  105);
    (SDL_SCANCODE_F15  106);
    (SDL_SCANCODE_F16  107);
    (SDL_SCANCODE_F17  108);
    (SDL_SCANCODE_F18  109);
    (SDL_SCANCODE_F19  110);
    (SDL_SCANCODE_F20  111);
    (SDL_SCANCODE_F21  112);
    (SDL_SCANCODE_F22  113);
    (SDL_SCANCODE_F23  114);
    (SDL_SCANCODE_F24  115);
    (SDL_SCANCODE_EXECUTE  116);
    (SDL_SCANCODE_HELP  117);    
    (SDL_SCANCODE_MENU  118);    
    (SDL_SCANCODE_SELECT  119);
    (SDL_SCANCODE_STOP  120);    
    (SDL_SCANCODE_AGAIN  121);   
    (SDL_SCANCODE_UNDO  122);    
    (SDL_SCANCODE_CUT  123);     
    (SDL_SCANCODE_COPY  124);    
    (SDL_SCANCODE_PASTE  125);   
    (SDL_SCANCODE_FIND  126);    
    (SDL_SCANCODE_MUTE  127);
    (SDL_SCANCODE_VOLUMEUP  128);
    (SDL_SCANCODE_VOLUMEDOWN  129);
    (SDL_SCANCODE_LOCKINGCAPSLOCK  130);  
    (SDL_SCANCODE_LOCKINGNUMLOCK  131); 
    (SDL_SCANCODE_LOCKINGSCROLLLOCK  132); 
    (SDL_SCANCODE_KP_COMMA  133);
    (SDL_SCANCODE_KP_EQUALSAS400  134);
    (SDL_SCANCODE_INTERNATIONAL1  135);
    (SDL_SCANCODE_INTERNATIONAL2  136);
    (SDL_SCANCODE_INTERNATIONAL3  137); /**< Yen */
    (SDL_SCANCODE_INTERNATIONAL4  138);
    (SDL_SCANCODE_INTERNATIONAL5  139);
    (SDL_SCANCODE_INTERNATIONAL6  140);
    (SDL_SCANCODE_INTERNATIONAL7  141);
    (SDL_SCANCODE_INTERNATIONAL8  142);
    (SDL_SCANCODE_INTERNATIONAL9  143);
    (SDL_SCANCODE_LANG1  144); /**< Hangul/English toggle */
    (SDL_SCANCODE_LANG2  145); /**< Hanja conversion */
    (SDL_SCANCODE_LANG3  146); /**< Katakana */
    (SDL_SCANCODE_LANG4  147); /**< Hiragana */
    (SDL_SCANCODE_LANG5  148); /**< Zenkaku/Hankaku */
    (SDL_SCANCODE_LANG6  149); /**< reserved */
    (SDL_SCANCODE_LANG7  150); /**< reserved */
    (SDL_SCANCODE_LANG8  151); /**< reserved */
    (SDL_SCANCODE_LANG9  152); /**< reserved */
    (SDL_SCANCODE_ALTERASE  153);    /**< Erase-Eaze */
    (SDL_SCANCODE_SYSREQ  154);
    (SDL_SCANCODE_CANCEL  155);      /**< AC Cancel */
    (SDL_SCANCODE_CLEAR  156);
    (SDL_SCANCODE_PRIOR  157);
    (SDL_SCANCODE_RETURN2  158);
    (SDL_SCANCODE_SEPARATOR  159);
    (SDL_SCANCODE_OUT  160);
    (SDL_SCANCODE_OPER  161);
    (SDL_SCANCODE_CLEARAGAIN  162);
    (SDL_SCANCODE_CRSEL  163);
    (SDL_SCANCODE_EXSEL  164);
    (SDL_SCANCODE_KP_00  176);
    (SDL_SCANCODE_KP_000  177);
    (SDL_SCANCODE_THOUSANDSSEPARATOR  178);
    (SDL_SCANCODE_DECIMALSEPARATOR  179);
    (SDL_SCANCODE_CURRENCYUNIT  180);
    (SDL_SCANCODE_CURRENCYSUBUNIT  181);
    (SDL_SCANCODE_KP_LEFTPAREN  182);
    (SDL_SCANCODE_KP_RIGHTPAREN  183);
    (SDL_SCANCODE_KP_LEFTBRACE  184);
    (SDL_SCANCODE_KP_RIGHTBRACE  185);
    (SDL_SCANCODE_KP_TAB  186);
    (SDL_SCANCODE_KP_BACKSPACE  187);
    (SDL_SCANCODE_KP_A  188);
    (SDL_SCANCODE_KP_B  189);
    (SDL_SCANCODE_KP_C  190);
    (SDL_SCANCODE_KP_D  191);
    (SDL_SCANCODE_KP_E  192);
    (SDL_SCANCODE_KP_F  193);
    (SDL_SCANCODE_KP_XOR  194);
    (SDL_SCANCODE_KP_POWER  195);
    (SDL_SCANCODE_KP_PERCENT  196);
    (SDL_SCANCODE_KP_LESS  197);
    (SDL_SCANCODE_KP_GREATER  198);
    (SDL_SCANCODE_KP_AMPERSAND  199);
    (SDL_SCANCODE_KP_DBLAMPERSAND  200);
    (SDL_SCANCODE_KP_VERTICALBAR  201);
    (SDL_SCANCODE_KP_DBLVERTICALBAR  202);
    (SDL_SCANCODE_KP_COLON  203);
    (SDL_SCANCODE_KP_HASH  204);
    (SDL_SCANCODE_KP_SPACE  205);
    (SDL_SCANCODE_KP_AT  206);
    (SDL_SCANCODE_KP_EXCLAM  207);
    (SDL_SCANCODE_KP_MEMSTORE  208);
    (SDL_SCANCODE_KP_MEMRECALL  209);
    (SDL_SCANCODE_KP_MEMCLEAR  210);
    (SDL_SCANCODE_KP_MEMADD  211);
    (SDL_SCANCODE_KP_MEMSUBTRACT  212);
    (SDL_SCANCODE_KP_MEMMULTIPLY  213);
    (SDL_SCANCODE_KP_MEMDIVIDE  214);
    (SDL_SCANCODE_KP_PLUSMINUS  215);
    (SDL_SCANCODE_KP_CLEAR  216);
    (SDL_SCANCODE_KP_CLEARENTRY  217);
    (SDL_SCANCODE_KP_BINARY  218);
    (SDL_SCANCODE_KP_OCTAL  219);
    (SDL_SCANCODE_KP_DECIMAL  220);
    (SDL_SCANCODE_KP_HEXADECIMAL  221);
    (SDL_SCANCODE_LCTRL  224);
    (SDL_SCANCODE_LSHIFT  225);
    (SDL_SCANCODE_LALT  226); /**< alt); option */
    (SDL_SCANCODE_LGUI  227); /**< windows); command (apple)); meta */
    (SDL_SCANCODE_RCTRL  228);
    (SDL_SCANCODE_RSHIFT  229);
    (SDL_SCANCODE_RALT  230); /**< alt gr); option */
    (SDL_SCANCODE_RGUI  231); /**< windows); command (apple)); meta */
    (SDL_SCANCODE_MODE  257);   
    (SDL_SCANCODE_AUDIONEXT  258);
    (SDL_SCANCODE_AUDIOPREV  259);
    (SDL_SCANCODE_AUDIOSTOP  260);
    (SDL_SCANCODE_AUDIOPLAY  261);
    (SDL_SCANCODE_AUDIOMUTE  262);
    (SDL_SCANCODE_MEDIASELECT  263);
    (SDL_SCANCODE_WWW  264);             /**< AL Internet Browser */
    (SDL_SCANCODE_MAIL  265);
    (SDL_SCANCODE_CALCULATOR  266);      /**< AL Calculator */
    (SDL_SCANCODE_COMPUTER  267);
    (SDL_SCANCODE_AC_SEARCH  268);       /**< AC Search */
    (SDL_SCANCODE_AC_HOME  269);         /**< AC Home */
    (SDL_SCANCODE_AC_BACK  270);         /**< AC Back */
    (SDL_SCANCODE_AC_FORWARD  271);      /**< AC Forward */
    (SDL_SCANCODE_AC_STOP  272);         /**< AC Stop */
    (SDL_SCANCODE_AC_REFRESH  273);      /**< AC Refresh */
    (SDL_SCANCODE_AC_BOOKMARKS  274);    /**< AC Bookmarks */
    (SDL_SCANCODE_BRIGHTNESSDOWN  275);
    (SDL_SCANCODE_BRIGHTNESSUP  276);
    (SDL_SCANCODE_DISPLAYSWITCH  277); 
    (SDL_SCANCODE_KBDILLUMTOGGLE  278);
    (SDL_SCANCODE_KBDILLUMDOWN  279);
    (SDL_SCANCODE_KBDILLUMUP  280);
    (SDL_SCANCODE_EJECT  281);
    (SDL_SCANCODE_SLEEP  282);           /**< SC System Sleep */
    (SDL_SCANCODE_APP1  283);
    (SDL_SCANCODE_APP2  284);
    (SDL_SCANCODE_AUDIOREWIND  285);
    (SDL_SCANCODE_AUDIOFASTFORWARD  286);
    (SDL_SCANCODE_SOFTLEFT  287); 
    (SDL_SCANCODE_SOFTRIGHT  288);
    (SDL_SCANCODE_CALL  289); /**< Used for accepting phone calls. */
    (SDL_SCANCODE_ENDCALL  290); /**< Used for rejecting phone calls. */
    (SDL_NUM_SCANCODES  512) 
    ))


(dolist (pr *scancodes*)
  (let ((sym (car pr))
	(val (cadr pr)))
    (setf (aref *scancode-table* val) (string sym))))


(defun decode-keyboard-scancode (n)
  (cond
    ((not (integerp n)) (error "golf - expected int"))
    ((< n 0) (error "golf - expected int >= 0"))
    ((>= n 512) (error "golf - expected int < 512"))
    (t (aref *scancode-table* n))))



;; (cffi:defcstruct sdl-keysym
;;   (scancode :int16)  ;; guessed (scancode sdl-scancode) ;; ? how big ?? ;; 
;;   (sym      :int32)  ;;(sym      sdl-keycode) ;; signed int 32 ;; 4 
;;   (mod      :uint16)  ;; 2 
;;   (unused   :uint32)) ;; 4 unused

;; (cffi:defcstruct sdl-keyboard-event
;;   (type :uint32) ; /**< ::SDL_KEYDOWN or ::SDL_KEYUP */ 4
;;   (timestamp :uint32) ; /**< In milliseconds, populated using SDL_GetTicks() */4
;;   (window-id :uint32) ;  /**< The window with keyboard focus, if any */ 4
;;   (state :uint8) ; /**< ::SDL_PRESSED or ::SDL_RELEASED */ 1
;;   (repeat :uint8) ; /**< Non-zero if this is a key repeat */ 1
;;   (padding2 :uint8) ;; 1
;;   (padding3 :uint8) ;; 1
;;   (keysym sdl-keysym)) ;  /**< The key that was pressed or released */ ;; 16 upto here leaves 

(cffi:defcstruct sdl-keyboard-event
  (type :uint32) ; /**< ::SDL_KEYDOWN or ::SDL_KEYUP */ 
  (timestamp :uint32) ; /**< In milliseconds, populated using SDL_GetTicks() */
  (window-id :uint32) ;  /**< The window with keyboard focus, if any */ 
  (state :uint8) ; /**< ::SDL_PRESSED or ::SDL_RELEASED */ 
  (repeat :uint8) ; /**< Non-zero if this is a key repeat */ 
  (padding2 :uint8) ;; 
  (padding3 :uint8) ;;
  (scancode :int32)  ;; <<<< !!!! guessed (scancode sdl-scancode) ;; ? how big ?? ;; 
  (sym      :int32)  ;;(sym      sdl-keycode) ;; signed int 32 ;; 4 
  (modifier :uint8)  ;; 2 
  (unused   :uint32)) ;; 4 unused




;; typedef enum SDL_Keymod
;; {
;;     KMOD_NONE = 0x0000,
;;     KMOD_LSHIFT = 0x0001,
;;     KMOD_RSHIFT = 0x0002,
;;     KMOD_LCTRL = 0x0040,
;;     KMOD_RCTRL = 0x0080,
;;     KMOD_LALT = 0x0100,
;;     KMOD_RALT = 0x0200,
;;     KMOD_LGUI = 0x0400,
;;     KMOD_RGUI = 0x0800,
;;     KMOD_NUM = 0x1000,
;;     KMOD_CAPS = 0x2000,
;;     KMOD_MODE = 0x4000,
;;     KMOD_SCROLL = 0x8000,
;;     KMOD_CTRL = KMOD_LCTRL | KMOD_RCTRL, ;; if either left or right ctrl is pressed - kmod ctrl is pressed
;;     KMOD_SHIFT = KMOD_LSHIFT | KMOD_RSHIFT,
;;     KMOD_ALT = KMOD_LALT | KMOD_RALT,
;;     KMOD_GUI = KMOD_LGUI | KMOD_RGUI,
;;     KMOD_RESERVED = KMOD_SCROLL /* This is for source-level compatibility with SDL 2.0.0. */
;; } SDL_Keymod;


(defparameter +KMOD-NONE+  #x0000); 
(defparameter +KMOD-LSHIFT+  #x0001); 
(defparameter +KMOD-RSHIFT+  #x0002); 
(defparameter +KMOD-LCTRL+  #x0040); 
(defparameter +KMOD-RCTRL+  #x0080); 
(defparameter +KMOD-LALT+  #x0100); 
(defparameter +KMOD-RALT+  #x0200); 
(defparameter +KMOD-LGUI+  #x0400); 
(defparameter +KMOD-RGUI+  #x0800); 
(defparameter +KMOD-NUM+  #x1000); 
(defparameter +KMOD-CAPS+  #x2000); 
(defparameter +KMOD-MODE+  #x4000); 
(defparameter +KMOD-SCROLL+  #x8000); 
(defparameter +KMOD-CTRL+   (logior +KMOD-LCTRL+ +KMOD-RCTRL+));  ;; if either left or right ctrl is pressed - kmod ctrl is pressed
(defparameter +KMOD-SHIFT+  (logior +KMOD-LSHIFT+  +KMOD-RSHIFT+)); 
(defparameter +KMOD-ALT+    (logior +KMOD-LALT+  +KMOD-RALT+)); 
(defparameter +KMOD-GUI+    (logior +KMOD-LGUI+  +KMOD-RGUI+)); 
(defparameter +KMOD-RESERVED+  +KMOD-SCROLL+) ; /* This is for source-level compatibility with SDL 2.0.0. */


(defun lam (p q)
  (> (logand p q) 0))


(defun decode-keyboard-modifier (mod)
  (cond
    ((= mod +kmod-none+) '("no modifiers"))
    (t
     (append
      (when (lam mod +kmod-lshift+) '() '("left shift"))
      (when (lam mod +kmod-rshift+) '() '("right shift"))
      (when (lam mod +kmod-lctrl+)  '() '("left control"))
      (when (lam mod +kmod-rctrl+)  '() '("right control"))
      (when (lam mod +kmod-lalt+)   '() '("left alt"))
      (when (lam mod +kmod-ralt+)   '() '("right alt"))
      (when (lam mod +kmod-lgui+)   '() '("left gui"))
      (when (lam mod +kmod-rgui+)   '() '("right gui"))
      (when (lam mod +kmod-num+)    '() '("num lock?"))
      (when (lam mod +kmod-caps+)   '() '("caps"))
      (when (lam mod +kmod-mode+)   '() '("mode"))
      (when (lam mod +kmod-scroll+) '() '("scroll"))
      (when (lam mod +kmod-ctrl+)   '() '("any ctrl"))
      (when (lam mod +kmod-shift+)  '() '("any shift"))
      (when (lam mod +kmod-alt+)    '() '("any alt"))
      (when (lam mod +kmod-gui+)    '() '("any gui") )))))
    
    
    
;; typedef struct SDL_MouseButtonEvent
;; {
;;     Uint32 type;        /**< ::SDL_MOUSEBUTTONDOWN or ::SDL_MOUSEBUTTONUP */
;;     Uint32 timestamp;   /**< In milliseconds, populated using SDL_GetTicks() */
;;     Uint32 windowID;    /**< The window with mouse focus, if any */
;;     Uint32 which;       /**< The mouse instance id, or SDL_TOUCH_MOUSEID */
;;     Uint8 button;       /**< The mouse button index */
;;     Uint8 state;        /**< ::SDL_PRESSED or ::SDL_RELEASED */
;;     Uint8 clicks;       /**< 1 for single-click, 2 for double-click, etc. */
;;     Uint8 padding1;
;;     Sint32 x;           /**< X coordinate, relative to window */
;;     Sint32 y;           /**< Y coordinate, relative to window */
;; } SDL_MouseButtonEvent;
			
(cffi:defcstruct sdl-mouse-button-event
  (type :uint32);     
  (timestamp :uint32);
  (window-id :uint32);
  (which :uint32);    
  (button :uint8);
  (state :uint8);
  (clicks :uint8);
  (padding1 :uint8);
  (x :int32);
  (y :int32)
  )



    ;; (DEFINE-FOREIGN-FUNCTION '(SDL-RENDER-DRAW-LINE "SDL_RenderDrawLine") ':INT
    ;;                          '((|renderer| (:POINTER SDL-RENDERER)) (|x1| :INT)
    ;;                            (|y1| :INT) (|x2| :INT) (|y2| :INT)))
;; int SDL_RenderDrawLine(SDL_Renderer * renderer,  int x1, int y1, int x2, int y2);
(cffi:defcfun ("SDL_RenderDrawLine" sdl-render-draw-line) :int
  (renderer :pointer)
  (x1 :int)
  (y1 :int)
  (x2 :int)
  (y2 :int)
  )


(defparameter *mouse-x* 0)
(defparameter *mouse-y* 0)



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
	(sdl-rendercopy render texture %null-ptr %null-ptr)
	
	(sdl-set-render-draw-color render 0 0 255 0) ;; Lets have a blue color
	(sdl-render-draw-line render 0 0 *mouse-x* *mouse-y*)
    
	(sdl-renderpresent render)

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
		   (format t "event type ~a ~%" ev-type)
		   (cond
		      ;; exit fast by throwing 
		     ((= ev-type +sdl-quit+)
		      (format t "quitting !~%")
		      (setq has-poll-event nil)
		      (setq *close* t)
		      (throw 'poll-events t))

		     
		     ((= ev-type +sdl-mousemotion+)
		      ;;(format t "mouse moving !~%")
		      
		      ;; read off respective indices manually from ev-ptr
		      (let ((x (cffi:mem-aref ev-ptr :int 5))
			    (y (cffi:mem-aref ev-ptr :int 6)))
			(format t "mouse motion v1.0 : mouse at position ~a ~a ~%" x y)
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
			
			(format t "mouse v2.0 [~a,~a,~a,~a,~a] : pos [~a,~a,~a,~a]~%"
				type timestamp window-id which state x y xrel yrel))
		      
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
			
			(format t "mdown [~a,~a,~a,~a,~a] : pos [~a,~a,~a,~a]~%"
				type timestamp window-id which state
				(cond ((= button 1) "left")
				      ((= button 2) "middle")
				      ((= button 3) "right")
				      (t "none"))
				x y clicks)
			
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
			
			(format t "mup [~a,~a,~a,~a,~a] : pos [~a,~a,~a,~a]~%"
				type timestamp window-id which state
				(cond ((= button 1) 'left)
				      ((= button 2) 'middle)
				      ((= button 3) 'right)
				      (t 'none))
				x y clicks)

		      )) ;; --- mouse up ---

		     ((= ev-type +sdl-keyup+)
		      
		      ;; possible got whole thing topsy-turvey
		      (let ((type (cffi:foreign-slot-value ev-ptr '(:struct sdl-keyboard-event) 'type))
			    (timestamp (cffi:foreign-slot-value ev-ptr '(:struct sdl-keyboard-event) 'timestamp))
			    (window-id (cffi:foreign-slot-value ev-ptr '(:struct sdl-keyboard-event) 'window-id))
			    (state (cffi:foreign-slot-value ev-ptr '(:struct sdl-keyboard-event) 'state))
			    (repeat (cffi:foreign-slot-value ev-ptr '(:struct sdl-keyboard-event) 'repeat))
			    (scancode (cffi:foreign-slot-value ev-ptr '(:struct sdl-keyboard-event) 'scancode))
			    (sym (cffi:foreign-slot-value ev-ptr '(:struct sdl-keyboard-event) 'sym))
			    (modifier (cffi:foreign-slot-value ev-ptr '(:struct sdl-keyboard-event) 'modifier)))
			
			(format t "key up : scancode ~a => ~a : modifier ~a => ~a ~%"
				scancode
				(decode-keyboard-scancode scancode)
				modifier
				(decode-keyboard-modifier modifier)
				)

			;; if lift key up - do something ... land mine keys ?? 
			

		      )) ;; ---- key up ------
		     
		     ((= ev-type +sdl-keydown+)

		      ;; possible got whole thing topsy-turvey
		      (let ((type (cffi:foreign-slot-value ev-ptr '(:struct sdl-keyboard-event) 'type))
			    (timestamp (cffi:foreign-slot-value ev-ptr '(:struct sdl-keyboard-event) 'timestamp))
			    (window-id (cffi:foreign-slot-value ev-ptr '(:struct sdl-keyboard-event) 'window-id))
			    (state (cffi:foreign-slot-value ev-ptr '(:struct sdl-keyboard-event) 'state))
			    (repeat (cffi:foreign-slot-value ev-ptr '(:struct sdl-keyboard-event) 'repeat))
			    (scancode (cffi:foreign-slot-value ev-ptr '(:struct sdl-keyboard-event) 'scancode))
			    (sym (cffi:foreign-slot-value ev-ptr '(:struct sdl-keyboard-event) 'sym))
			    (modifier (cffi:foreign-slot-value ev-ptr '(:struct sdl-keyboard-event) 'modifier)))			    
			(format t "key down : scancode ~a => ~a : modifier ~a => ~a~%"
				scancode
				(decode-keyboard-scancode scancode)
				modifier
				(decode-keyboard-modifier modifier)
				)

			;; alt keys do not seem to be detected correctly on cherry keyboard ...
			
		       ;; if press escape key
		      (when (= scancode +sdl-scancode-escape+)
			(setq *close* t)
			(throw 'poll-events t))
		      
		      )) ;; --- keydown ---
		     
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
(format t "(temp::demo) to start demo~%")
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
