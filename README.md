# c2ffi

## C2FFI 

built using LLVM 17 from llvm.sh needed a stable version of debian 

achieved using a chroot environment and downloading entire distribution just to build c2ffi

## SDL2 FFI Libraries

| spec |   package |    include-header-location              |       shared-library-location |
| ---  | ---       | ---                                     |  ---                                        |
| spec |   SDL2    |    /usr/include/SDL2/                   |       /usr/lib/x86_64-linux-gnu/              |
| ---  | ---       | ---                                     |  ---                                        |
| [X] | sdl2       |   SDL.h                                 |    libSDL2.so |
| [X] | sdl2-image |   SDL_image.h                           |    libSDL2_image.so |
| [X] | sdl2-mixer |   SDL_mixer.h                           |    libSDL2_mixer.so |
| [ ] | sdl2-ttf   |   SDL_ttf.h                             |    libSDL2_ttf.so |
| [ ] | sdl2-net   |   SDL_net.h                             |     libSDL2_net.so |
| [ ] | sdl2-gfx   |   SDL2_gfxPrimitives.h                  |   libSDL2_gfx.so |













