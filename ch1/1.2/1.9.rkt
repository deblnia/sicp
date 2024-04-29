#lang racket 

(define (inc x) (+ x 1))

(define (dec x) (- x 1))

(define (r+ a b)
  (if (= a 0) 
      b 
      (inc (+ (dec a) b))))

; (r+ 4 5)
; => (inc (r+ 3 5))
; => (inc (inc (r+ 2 5)))             ; expanding
; => (inc (inc (inc (r+ 1 5))))
; => (inc (inc (inc (inc (r+ 0 5))))) ; 4 deferred operations
; => (inc (inc (inc (inc 5))))
; => (inc (inc (inc 6)))              ; contracting
; => (inc (inc 7))
; => (inc 8)
; => 9

(define (i+ a b)
  (if (= a 0) 
      b 
      (+ (dec a) (inc b))))

; (i+ 4 5)
; => (i+ 3 6)
; => (i+ 2 7)
; => (i+ 1 8)
; => (i+ 0 9)
; => 9

(r+ 4 5)
(i+ 4 5)
