#lang racket 
#| 1.7 |#

#| 

    The good-enough? test used in computing square roots will not be very effective for finding the square roots of very small numbers.

      The program terminates early because we can't have an accurate answer below the hardcoded precision of 0.001. 


    Also, in real computers, arithmetic operations are almost always performed with limited precision. This makes our test inadequate for very large numbers. 

      The program never finishes for large numbers because the guess gets very close to the actual result. The rounding makes it so that improve-guess can't improve the guess more than 0.001, leading to really big errors. 

|#


(define (square x) (* x x))

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

;(sqrt 12345678901234) ; does not finish 

(sqrt 0.00000000123)
(square (sqrt 0.00000000123)) ;really wrong 
