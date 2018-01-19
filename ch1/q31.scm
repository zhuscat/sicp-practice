; 递归版本
(define (product term a next b)
  (if (> a b)
      1
      (* (term a)
         (product term (next a) next b))))

; 迭代版本
(define (product term a next b)
  (define (iter a result)
    (if (> a b)
        result
        (iter (next a) (* (term a) result))))
  (iter a 1))

(define (even? x)
  (= (remainder x 2) 0))

(define (odd? x)
  (= (remainder x 2) 1))

(define (numerator i)
  (if (even? i)
      (+ i 2)
      (+ i 1)))

(define (denominator i)
  (if (even? i)
      (+ i 1)
      (+ i 2)))


(define (fraction i)
  (/ (numerator i) (denominator i)))

(define (identity x)
  x)

(define (inc i) (+ i 1))

(define (factorial n)
  (cond ((< n 0) (error "n is smaller than 0"))
        ((= n 0) 1)
        (else (product identity 1 inc n))))

(define (pi n)
  (product fraction 1 inc n))
