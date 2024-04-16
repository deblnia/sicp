#lang racket 

(define (cube x)
    (x * x * x)
)

(define (improve guess x)
  (/ (+ (/ x (* guess guess)) (* 2 guess)) 3)
)

(define (good-enough? previous-guess guess)
  (< (abs (/ (- guess previous-guess) guess)) 0.001))
; not super sure why this has to change from the previous sqrt implementation 


(define (cube-root-iter guess x)
  (if (good-enough? (improve guess x) guess)
      guess
      (cube-root-iter (improve guess x) x)))
; this is essentially checking that the improved guess is within tolerance (if it is, return guess else repeat procedure)

(define (cube-root x)
  (cube-root-iter 1.0 x))


(cube-root 27)









