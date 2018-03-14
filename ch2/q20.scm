(define (odd? x) (= (remainder x 2) 1))
(define (even? x) (= (remainder x 2) 0))

(define (filter predicate items)
  (cond ((null? items) '())
        ((predicate (car items)) (cons (car items) (filter predicate (cdr items))))
        (else (filter predicate (cdr items)))))

(define (same-parity x . args)
  (if (odd? x)
      (cons x (filter odd? args))
      (cons x (filter even? args))))
