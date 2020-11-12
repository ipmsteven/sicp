#lang sicp

;; 1
;; 1   1
;; 1   2   1
;; 1   3   3   1
;; 1   4   6   4   1

(define (pascal_triangle row col)
  (cond
    ((or (= col 1) (= row col)) 1)
    (else (+ (pascal_triangle (- row 1) (- col 1))
             (pascal_triangle (- row 1)  col)
          )
    )
  ))

(pascal_triangle 1 1)
(pascal_triangle 3 2)
(pascal_triangle 4 3)


;; display
(define (display-pascal-row n)
  (define (column-iter i)
    (display (pascal_triangle n i)) (display "  ")
    (if (= i n)
        (newline)
        (column-iter (+ i 1))))
  (column-iter 1))

(define (display-pascal n)
  (define (display-pascal-iter i)
    (display-pascal-row i)
    (if (= i n)
        (newline)
        (display-pascal-iter (+ i 1))))
  (display-pascal-iter 1))


(display-pascal 20)
