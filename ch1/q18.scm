(define (fast-multiply x y)
  (fast-multiply-iter x y 0))

(define (fast-multiply-iter x y t)
  (cond ((or (= 0 x) (= 0 y)) t)
        ((even? x) (fast-multiply-iter (halve x) (double y) t))
        (else (fast-multiply-iter (- x 1) y (+ t y)))))

(define (double x)
  (* 2 x))

(define (halve x)
  (/ x 2))

(define (even? n)
  (= (remainder n 2) 0))
