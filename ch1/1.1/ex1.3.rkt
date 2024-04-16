#lang racket 

(define (square x) (* x x))

(define (max a b) (if (> a b) a b))

(define (min a b) (if (< a b) a b))

(define (sum-of-squares-two-largest a b c)
   (+ (square (max a b)) (square (max c (min a b)))))

(sum-of-squares-two-largest 1 2 3)
(sum-of-squares-two-largest 1 2 1)
; borrowed from https://stackoverflow.com/questions/54165593/define-a-procedure-that-takes-three-numbers-as-arguments-and-returns-the-sum-of 
; sorrel and i might have paired on this one