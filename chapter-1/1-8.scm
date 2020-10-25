#lang sicp

(define (cube_root x) (cube_root_iteration x 1))

(define (cube_root_iteration x approximation)
  (if (good_enough? x approximation)
      approximation
      (cube_root_iteration x (cube_root_improve x approximation))))

(define (good_enough? x approximation)
  (< (abs (- approximation (cube_root_improve x approximation))) 0.0001))

(define (cube_root_improve x approximation)
  (/ (+ (/ x (* approximation approximation)) (* 2 approximation)) 3)
  )


(cube_root 100)