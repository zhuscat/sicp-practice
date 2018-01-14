(define (cuberoot x)
  (cuberoot-iter 1.0 x))

(define (cuberoot-iter guess x)
  (if (good-enough? guess (improve guess x))
      (improve guess x)
      (cuberoot-iter (improve guess x)
                     x)))

(define (improve guess x)
  (/ (+ (/ x (square guess)) (* 2 guess)) 3))

(define (good-enough? old-guess new-guess)
  (< (/ (abs (- new-guess old-guess)) old-guess) 0.001))

(define (square x)
  (* x x))
