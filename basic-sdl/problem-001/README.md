
### problem-001

[SDL2 QueryTexture C Reference](https://wiki.libsdl.org/SDL2/SDL_QueryTexture)

```C
SDL_Rect r;
SDL_QueryTexture( texture, NULL, NULL, &r.w , &r.h);

/* 
format NULL do not need
access NULL do not need
r.w now has width of texture
r.h now has height of texture
*/
```

```common-lisp
(defcstruct rect
  (x :int)
  (y :int)
  (w :int)
  (h :int))
```


