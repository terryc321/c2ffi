;;;; cairo-sdl.asd

(asdf:defsystem #:cairo-sdl
  :description "Describe cairo-sdl here"
  :author "Your Name <your.name@example.com>"
  :license  "Specify license here"
  :version "0.0.1"
  :serial t
  :depends-on (#:uiop
	       #:cffi
	       #:trivial-shell)
  :components ((:file "package")
               (:file "cairo-sdl")))

