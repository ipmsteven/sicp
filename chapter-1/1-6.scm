#lang sicp

(define (new-if predicate then-clause else-clause)
  (cond (predicate then-clause)
        (else else-clause)))

(define (square_root x) (square_root_iteration x 1))

(define (square_root_iteration x approximation)
  (new-if (good_enough? x approximation)
      approximation
      (square_root_iteration x (square_root_improve x approximation))))

(define (good_enough? x approximation)
  (< (abs (- x (square approximation))) 0.1))

(define (square_root_improve x approximation)
  (/ (+ approximation (/ x approximation)) 2)
  )

(define (square x) (* x x))

(square_root 2)

;; new-if is a procedure, and Scheme uses applicative-order evaluation (1.1.5), so even before new-if is actually performed,
;; it has to evaluate all the arguments first, which are approximation and (square_root-iteration (improve x approximation) x).
;; You can see that the latter argument is a recursion, which calls a new new-if procedure, this is how the infinite loop occurs.
;;
;; The ordinary if need not evaluate its arguments first, just go along the way, this is the difference between if and new-if. :)