
;; ----- superman package ---------
(defpackage :lem.superman
  (:use :cl :lem)
  (:export))

(in-package :lem.superman)

;; ------ superman mode ------
(define-major-mode superman-mode nil
    (:name "superman"
     :keymap *superman-mode-keymap*))

(defvar *superman-buffer*)

;; timer gets stopped if something throws an error
;; or we quit playing by pressing q
(defvar *timer*)

;; are we playing ?
(defvar *playing-p* nil)

;; some notion of position of player perhaps
(defvar *point-x*)
(defvar *point-y*)

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


;; draw clears buffer ... calls draw other things ...
(defun draw ()
  (erase-buffer *superman-buffer*)
  ;;(draw-next)
  ;;(draw-field)
  ;;(draw-score)
  )

(defun init-player ()
  (setq *point-x* 15)
  (setq *point-y* 15))



(defun init-field ()
  (setq *score* 100)
  (setq *lines* 200)
  (setq *level* 300)
  )


;; -------- commands ---------------
(define-command superman-move-left () ()
  (when *playing-p*
    (decf *point-x*)
    (draw)))

(define-command superman-move-right () ()
  (when *playing-p*
    (incf *point-x*)
    (draw)))

(define-command superman-move-up () ()
  (when *playing-p*
    (decf *point-y*)
    (draw)))

(define-command superman-move-down () ()
  (when *playing-p*
    (incf *point-y*)
    (draw)))

;; (define-command superman-rotate () ()
;;   (when *playing-p*
;;     (rotate)
;;     (draw)))



(define-command superman-quit () ()
  (setq *playing-p* nil)
  (stop-timer *timer*)
  (kill-buffer *superman-buffer*)
  )


;; ------------------------------

(defun insert-block (attribute)
  (insert-string (current-point) "  "
                 :attribute attribute))

(insert-character (current-point) #\newline)

(define-key *superman-mode-keymap* "Left" 'superman-move-left)
(define-key *superman-mode-keymap* "Right" 'superman-move-right)
(define-key *superman-mode-keymap* "Down" 'superman-move-down)
(define-key *superman-mode-keymap* "Up" 'superman-rotate)
(define-key *superman-mode-keymap* "q" 'superman-quit)

;; update routine -------------
(defun update (superman-buffer)
  (when (and (eq (current-buffer) superman-buffer)
             *playing-p*)
    (cond (
           ;;(ride-p)
           ;;(fix)
           ;;(reset-player)
           (draw)
           )
          (t
           (superman-move-down)))))



(define-command superman () ()
  (setf *superman-buffer* (make-buffer "*superman*"))
  (switch-to-buffer *superman-buffer*)
  ;; change major mode 
  (superman-mode)
  ;; kill buffer if we quit 
  (add-hook (variable-value 'kill-buffer-hook :buffer *superman-buffer*)
            #'(lambda (buffer) (declare (ignore buffer)) (superman-quit)))

  (init-field)
  (init-player)

  (draw)

  (setq *playing-p* t)
  ;; this is some sort of event loop ...
  (setq *timer* (start-timer
                 (make-timer (lambda ()
                               (update *superman-buffer*))
                             :handle-function (lambda (condition)
                                                (pop-up-backtrace condition)
                                                (stop-timer *timer*)))
                 1000
                 :repeat t)))


