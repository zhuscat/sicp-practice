(define (double x)
  (* 2 x))

(define (halve x)
  (/ x 2))

(define (even? n)
  (= (remainder n 2) 0))

(define (fast-multiply x y)
  (cond ((or (= 0 x) (= 0 y)) 0)
        ((even? x) (fast-multiply (halve x) (double y)))
        (else (+ y (fast-multiply (- x 1) y)))))
