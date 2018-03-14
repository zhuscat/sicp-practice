; version 1
(define (square-list items)
  (if (null? items)
      nil
      (cons (* (car items) (car items)) (square-list (cdr items)))))

; version 2
(define (square-list items)
  (map (lambda (x) (* x x)) items))
