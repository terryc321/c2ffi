
## Problem getting SDL and Cairo to agree on surface

```C
SDL_Surface *sdlsurf = SDL_CreateRGBSurface (
    flags, width, height, 32,
    0x00FF0000, /* Rmask */
    0x0000FF00, /* Gmask */
    0x000000FF, /* Bmask */
    0); /* Amask */

/* ... make sure sdlsurf is locked or doesn't need locking ... */

cairo_surface_t *cairosurf = cairo_image_surface_create_for_data (
    sdlsurf->pixels,
    CAIRO_FORMAT_RGB24,
    sdlsurf->w,
    sdlsurf->h,
    sdlsurf->pitch);

/* ... normal cairo calls ... */
```



