![screenshot](/image.png)

## rust todomvc desktop app

Demo how to use [yew](https://github.com/yewstack/yew) for a [todomvc](http://todomvc.com) implementation written in **rust** that compiles to **wasm** and is bundled as a lightweight desktop app using [web-view](https://github.com/Boscop/web-view) and serves it's static files using [hyper](https://github.com/hyperium/hyper).

This prduces a slim **~2 mb** executable compared to hundreds with [electron](https://github.com/electron/electron).

## run

use `make run` to try it.
this requires `cargo web` to be installed.