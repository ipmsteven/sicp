#lang sicp

(define (cal_expt b n)
  (if (= n 0)
      1
      (* b (cal_expt b (- n 1)))))

(define (cal_expt_1 b n)
  (cal_expt_iter b n 1)
  )

(define (cal_expt_iter b n product)
  (if (= n 0)
      product
      (cal_expt_iter b (- n 1) (* product b))))

(cal_expt 5 3)
(cal_expt_1 5 3)



(define (fast-expt b n)
  (cond ((= n 0) 1)
        ((even? n) (square (fast-expt b (/ n 2))))
        (else (* b (fast-expt b (- n 1))))))

(define (square n) (* n n))

(fast-expt 5 3)
