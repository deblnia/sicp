#lang racket 
#| 1.7 |#

#| 

    The good-enough? test used in computing square roots will not be very effective for finding the square roots of very small numbers.

    Also, in real computers, arithmetic operations are almost always performed with limited precision. This makes our test inadequate for very large numbers. 

|#

(define (average x y) 
  (/ (+ x y) 2))

(define (improve guess x)
  (average guess (/ x guess)))

(define (good-enough? guess x)
  (< (abs (- (square guess) x)) 0.001))

(define (sqrt-iter guess x)
  (if (good-enough? guess x)
      guess
      (sqrt-iter (improve guess x) x)))

(define (sqrt x)
  (sqrt-iter 1.0 x))

(sqrt 0.00000000123)

(sqrt 12345678901230)