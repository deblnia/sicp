#lang racket 

#| 
    If the interpreter users applicative order evalution, Ben will see the interpreter evaluate the arguments in order and then apply. 

    If the interpreter uses normal order evaluation, the interpreter will fully expand the then reduce (delaying evaluating operands until values are needed). 

    More details: https://sicp-solutions.net/post/sicp-solution-exercise-1-5/

|#