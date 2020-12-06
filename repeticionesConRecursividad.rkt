#lang racket
; factorial de un numero
(define(factorial n)
  (if (or (= n 0)(= n 1))
      1
      ( * n (factorial(- n 1)))
      )

  )

; fibonacci
(define(fib n)
  (cond((= n 0) 0)
       ((= n 1) 1)
       (else
        (+ (fib (- n 1)) (fib(- n 2)) )
        )
     )
  )