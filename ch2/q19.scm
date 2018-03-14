(define us-coins (list 50 25 10 5 1))
(define uk-coins (list 100 50 20 10 5 2 1 0.5))

; money to exchange
; list of available coin
(define (cc amount coin-values)
  (cond ((= amount 0) 1)
        ((or (< amount 0) (no-more? coin-values)) 0)
        (else
          (+ (cc amount (except-first-denomination coin-values))
             (cc (- amount (first-denomination coin-values)) coin-values)))))

; write `no-more?` `except-first-denomination` and `first-denomination` yourself
(define (no-more? coin-values)
  (null? coin-values))

(define (first-denomination coin-values)
  (car coin-values))

(define (except-frist-denomination coin-values)
  (cdr coin-values))
