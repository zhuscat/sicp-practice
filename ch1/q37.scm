; 递归形式
(define (cont-frac n d k)
  (define (cf i)
    (if (= i k)
        (/ (n i) (d i))
        (/ (n i) (+ (d i) (cf (+ i 1))))))
  (cf 1))

; 迭代形式
(define (cont-frac n d k)
  (define (cont-frac-iter i result)
    (if (= i 0)
        result
        (cont-frac-iter (- i 1) (/ (n i) (+ (d i) result)))))
  (cont-frac-iter k 0))
