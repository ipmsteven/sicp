#lang sicp
(define (square x) (* x x))

(define (my_func a b c) (cond
                          ((< a b) (cond
                                     ((> a c) (+ (square a) (square b)))
                                     (true (+ (square b) (square c)))))
                          (true (cond
                                     ((> b c) (+ (square a) (square b)))
                                     (true (+ (square a) (square c)))))
                          ))

(my_func 1 2 3)
(my_func 3 2 1)
(my_func 2 2 2)
