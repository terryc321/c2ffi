
;; ---------------------------------------------------
;; <-- LEM is a programmable text editor -->
;; --------------------------------------------------
;; to run this file open this file in the lem editor
;; compile file C-c C-k
;; then run command M-x welcome
;; ---------------------------------------------------
(defpackage :lem.welcome
  (:use :cl
        :lem)
  (:local-nicknames (:gfx :lem-sdl2))
  (:export))


;; (defpackage :mypackage
;;   (:use :cl)
;;   (:local-nicknames (:nickname :original-package-name)
;;                     (:alex :alexandria)
;;                     (:re :cl-ppcre)))

(in-package :lem.welcome)

;; ------ welcome mode ------
(define-major-mode welcome-mode nil
    (:name "welcome"
     :keymap *welcome-mode-keymap*))

(defvar *welcome-buffer*)

;; timer gets stopped if something throws an error
;; or we quit playing by pressing q
(defvar *timer*)

;; are we playing ?
(defvar *playing-p* nil)

;; some notion of position of player perhaps
(defvar *point-x*)
(defvar *point-y*)

(defvar *scale-x* 10)
(defvar *scale-y* 10)


(defvar *score*)
(defvar *level*)
(defvar *lines*)

(defconstant +field-width+ 30)
(defconstant +field-height+ 30)

;; ------- some colours ------------

(defparameter *block-attributes*
  (map 'vector (lambda (color-name)
                 (make-attribute :foreground color-name :reverse t))
       '("black" "cyan" "yellow" "green" "red" "blue" "white" "magenta")))

(defparameter *wall-attribute*
  (make-attribute :foreground "gray" :reverse t))

(defparameter *grass-attribute*
  (make-attribute :foreground "green" :reverse t))

(defparameter *tree-attribute*
  (make-attribute :foreground "brown" :reverse t))

(defparameter *color-3* (make-color 176 208 233))

;; draw clears buffer ... calls draw other things ...
(defun draw ()
  
  ;;(erase-buffer *welcome-buffer*)
  ;;clear-drawables *welcome-buffer*)
  (lem-sdl2/graphics:clear-drawables *welcome-buffer*)
  (lem-sdl2/graphics:draw-rectangle *welcome-buffer*
                                    (* *scale-x* *point-x*) 
                                    (* *scale-y* *point-y*)
                                    100 
                                    100
                                    :filled t
                                    :color *color-3*)
  ;(display-buffer *welcome-buffer*)
  ;;(lem-sdl2/display:update-display
  
  ;;(draw-next)
  ;;(draw-field)
  ;;(draw-score)
  )





(defun init-player ()
  (setq *point-x* 15)
  (setq *point-y* 15))


;;(apropos "clear-drawables")

(defun init-field ()
  (lem-sdl2/graphics:clear-drawables  *welcome-buffer*)
  (setq *score* 100)
  (setq *lines* 200)
  (setq *level* 300)
  )


;; -------- commands ---------------
(define-command welcome-move-left () ()
  (when *playing-p*
    (decf *point-x*)
    (draw)))

(define-command welcome-move-right () ()
  (when *playing-p*
    (incf *point-x*)
    (draw)))

(define-command welcome-move-up () ()
  (when *playing-p*
    (decf *point-y*)
    (draw)))

(define-command welcome-move-down () ()
  (when *playing-p*
    (incf *point-y*)
    (draw)))

;; (define-command welcome-rotate () ()
;;   (when *playing-p*
;;     (rotate)
;;     (draw)))



(define-command welcome-quit () ()
  (setq *playing-p* nil)
  (stop-timer *timer*)
  ;;(kill-buffer *welcome-buffer*)
  )



;; ------------------------------

(defun insert-block (attribute)
  (insert-string (current-point) "  "
                 :attribute attribute))

(insert-character (current-point) #\newline)

(define-key *welcome-mode-keymap* "Left" 'welcome-move-left)
(define-key *welcome-mode-keymap* "Right" 'welcome-move-right)
(define-key *welcome-mode-keymap* "Down" 'welcome-move-down)
(define-key *welcome-mode-keymap* "Up" 'welcome-move-up)
(define-key *welcome-mode-keymap* "q" 'welcome-quit)

;; update routine -------------
(defun update (welcome-buffer)
  (when (and (eq (current-buffer) welcome-buffer)
             *playing-p*)
    (cond (
           ;;(ride-p)
           ;;(fix)
           ;;(reset-player)
           (draw)
           )
          (t
           (welcome-move-down)))))



(define-command welcome () ()
  (setf *welcome-buffer* (make-buffer "*welcome*"))
  (switch-to-buffer *welcome-buffer*)
  ;; change major mode 
  (welcome-mode)
  ;; kill buffer if we quit 
  (add-hook (variable-value 'kill-buffer-hook :buffer *welcome-buffer*)
            #'(lambda (buffer) (declare (ignore buffer)) (welcome-quit)))

  (init-field)
  (init-player)

  (draw)

  (setq *playing-p* t)
  ;; this is some sort of event loop ...
  (setq *timer* (start-timer
                 (make-timer (lambda ()
                               (update *welcome-buffer*))
                             :handle-function (lambda (condition)
                                                (pop-up-backtrace condition)
                                                (stop-timer *timer*)))
                 1000
                 :repeat t)))


