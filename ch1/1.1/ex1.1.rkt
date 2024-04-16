#lang racket 

10 ;10 
(+ 5 3 4) ;12
(- 9 1) ;8 
(/ 6 2) ;3 
(+ (* 2 4) (- 4 6)) ;10 wrong, subtract right from left! 
(define a 3)
(define b (+ a 1)) 
(+ a b (* a b)) ; 19 
(= a b) ; false 
(if (and (> b a) (< b (* a b)))
    b
    a) ; 3 wrong,  read as operand operator operand 
(cond ((= a 4) 6)
      ((= b 4) (+ 6 7 a))
      (else 25)) ; 16
(+ 2 (if (> b a) b a)) ; 9, wrong don't know why
(* (cond ((> a b) a)
         ((< a b) b)
         (else -1))
   (+ a 1)) ; 16