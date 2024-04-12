# Structure and Interpretation of Computer Programs 

Learning to program but for real this time

- Book: https://sarabander.github.io/sicp/html/index.xhtml
- VSCode Racket setup curtesy of [0li](https://github.com/oli-clive-griffin), and reproduced below! 

  1. [install racket](https://download.racket-lang.org/)
  2. add path/to/racket/bin to your PATH so that the racket executables are available
     1. _This took me like an embarassingly long time, [this](https://beautifulracket.com/setting-the-mac-os-path.html) was helpful_ 
  3. install [this](https://marketplace.visualstudio.com/items?itemName=evzen-wybitul.magic-racket) extension
  4. create a .rkt file in vscode, highlighting, lsp, etc. should work! :)
demo program (just cos the need for # lang racket surprised me)

```racket
#lang racket

(displayln "hello world")

``` 
You should be able to Go to definition of displayln if everything's working
