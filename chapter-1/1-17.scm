#lang sicp

(define (double a) (+ a a))
(define (halve a) (/ a 2))
(define (fast_multi a b)
  (if (= b 0)
      0
      (
       cond ((even? b) (fast_multi (double a) (halve b)))
            (else (+ a (fast_multi a (- b 1))))
            )
      ))

(fast_multi 5 6)