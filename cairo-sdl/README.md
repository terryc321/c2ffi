# cairo-sdl

mouse up / down , mouse motion , key press up down detection , rectangles , text 


![sdl and cairo together](./cairo-sdl/cairo-sdl-Screenshot_2024-04-18_08-01-57.png)

here is a keyboard scancode sdl example in common lisp

![keyboard](./cairo-sdl/keyboard-Screenshot_2024-04-25_23-59-31.png)


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

