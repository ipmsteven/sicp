#lang sicp

(define (double a) (+ a a))
(define (halve a) (/ a 2))
(define (fast_multi a b)
  (fast_multi_iter a b 0)
  )

(define (fast_multi_iter a b product)
  (cond ((= b 0) product)
        ((even? b) (fast_multi_iter a (halve b) (+ (double a) product)))
        (else (fast_multi_iter a (- b 1) (+ a product)))))

(fast_multi 5 6)
(fast_multi 7 6)
