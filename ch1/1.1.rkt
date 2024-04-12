#lang racket 

#| 1.1 |#

; 10 ;10 
; (+ 5 3 4) ;12
; (- 9 1) ;8 
; (/ 6 2) ;3 
; (+ (* 2 4) (- 4 6)) ;10 wrong, subtract right from left! 
; (define a 3)
; (define b (+ a 1)) 
; (+ a b (* a b)) ; 19 
; (= a b) ; false 
; (if (and (> b a) (< b (* a b)))
;     b
;     a) ; 3 wrong,  read as operand operator operand 
; (cond ((= a 4) 6)
;       ((= b 4) (+ 6 7 a))
;       (else 25)) ; 16
; (+ 2 (if (> b a) b a)) ; 9, wrong don't know why
; (* (cond ((> a b) a)
;          ((< a b) b)
;          (else -1))
;    (+ a 1)) ; 16


#| 1.2 |#

; (/ (+ 5 4 (- 2 (- 3 (+ 6 (/ 4 5))))) (* 3 (- 6 2) (- 2 7)))
; how do i pretty print 


#| 1.3 |#

; (define (square x) (* x x))

; (define (max a b) (if (> a b) a b))

; (define (min a b) (if (< a b) a b))

; (define (sum-of-squares-two-largest a b c)
;    (+ (square (max a b)) (square (max c (min a b)))))

; (sum-of-squares-two-largest 1 2 3)
; (sum-of-squares-two-largest 1 2 1)
; borrowed from https://stackoverflow.com/questions/54165593/define-a-procedure-that-takes-three-numbers-as-arguments-and-returns-the-sum-of 
; sorrel and i might have paired on this one 

#| 1.4 |#

; a + b if b > 0, a - b if b <= 0 
(define (a-plus-abs-b a b)
  ((if (> b 0) + -) a b))

(a-plus-abs-b 2 -4)
