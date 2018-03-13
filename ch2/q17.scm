(define (last-pair items)
  (cond ((null? items) (error "list is empty"))
        ((null? (cdr items)) items)
        (else (last-pair (cdr items)))))
