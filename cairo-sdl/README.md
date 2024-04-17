# cairo-sdl

mouse up / down , mouse motion , key press up down detection , rectangles , text 


![sdl and cairo together](./success-screenshot-2024-04-17.png)

need to do a simple c program to see how to do SDL stuff and CAIRO stuff together simplest possible.

## cairo-sdl setup 

this places a symbolic link to actual cairo-sdl in code directory

```bash
	ln -sv /home/terry/code/c2ffi/cairo-sdl/cairo-sdl.asd /home/terry/quicklisp/local-projects/cairo-sdl.asd 
```

```lisp
> rlwrap sbcl

(ql:quickload :cairo-sdl)
(cairo-sdl::demo)
```

## debugging a lisp -> c program is painful

slime server will crash every time c program crashes

can we even do step debugging using slime ? how ?


```lisp
> (ql:quickload #:quickproject)

> (quickproject:make-project "/home/terry/code/c2ffi/cairo-sdl/" :depends-on '(uiop cffi))
"cairo-sdl"
```



### _Your Name <your.name@example.com>_

This is a project to do ... something.

## License

Specify license here

