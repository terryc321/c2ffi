;;;; cairo-sdl.asd


;; compile this file C-c C-k , then (ql:quickload :cairo-sdl)

(asdf:defsystem #:cairo-sdl
  :description "Describe cairo-sdl here"
  :author "Your Name <your.name@example.com>"
  :license  "Specify license here"
  :version "0.0.1"
  :serial t
  :depends-on (#:uiop
	       ;;#:swank
	       #:cffi
	       #:trivial-shell)
  :components ((:file "package")
               (:file "cairo-sdl")))







