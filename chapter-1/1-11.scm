#lang sicp

(define (f n)
  (cond
    ((< n 3) n)
    (else (+ (f (- n 1))
             (* 2 (f (- n 2)))
             (* 3 (f (- n 3)))))
    )
  )

(f 2)
(f 3)
(f 6)


(define (f1 n)
  (cond
    ((< n 3) n)
    (else  (f_iteration 0 1 2 (- n 3)))
    )
  )

(define (f_iteration a b c n)
  (cond
    ((= n 0) (+ c (* 2 b) (* 3 a)))
    (else (f_iteration b
                       c
                       (+ c (* 2 b) (* 3 a))
                       (- n 1)))
  ))
(f1 2)
(f1 3)
(f1 6)
(f1 666)
