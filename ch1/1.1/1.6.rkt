#lang racket 

#| 1.6 |#

#| 
    new-if is a function, so each parameter subexpression will be evaluated before the procedure is applied. This means that new-if will evaluate both branches every time - and because one of the branches refers to itself, the program will get stuck in an infinte loop. 

|#