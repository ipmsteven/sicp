#lang sicp

(define (square_root x) (square_root_iteration x 1))

(define (square_root_iteration x approximation)
  (if (good_enough? x approximation)
      approximation
      (square_root_iteration x (square_root_improve x approximation))))

(define (good_enough? x approximation)
  (< (abs (- approximation (square_root_improve x approximation))) 0.0001))

(define (square_root_improve x approximation)
  (/ (+ approximation (/ x approximation)) 2)
  )

(define (square x) (* x x))

(square_root 1000000)