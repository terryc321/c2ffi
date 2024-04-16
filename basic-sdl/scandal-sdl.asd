;;;; scandal-sdl.asd

(asdf:defsystem #:scandal-sdl
  :description "Describe scandal-sdl here"
  :author "Your Name <your.name@example.com>"
  :license  "Specify license here"
  :version "0.0.1"
  :serial t
  :depends-on (#:cffi #:cffi/c2ffi #:cffi-libffi)
  :components
  ((:file "package")
   (:file "scandal-sdl")
   (:module "spec"
    :components
    ((:cffi/c2ffi-file
      "/usr/include/SDL2/SDL.h" ;; SDL2 version
      :cffi-executable "/home/terry/code/c2ffi/c2ffi"
      :package #:scandal-sdl.lib
      :foreign-libary-name "scandal-sdl.lib::libsdl"
      :ffi-name-transformer "scandal-sdl.prelude::ffi-name-transformer"
      :include-sources ()
      :foreign-library-spec ((t (:default "/usr/lib/x86_64-linux-gnu/libSDL.so"))))))))


