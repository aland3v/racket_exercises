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

; imprimir los numeros del 1 al 10 recursivamente
(define(suma x)
  (if(= x 10)
     (display x)
     (begin
       (display x)
       (suma (+ x 1))
       )
     )
  )