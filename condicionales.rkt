#lang racket
(define(mayor n1 n2)
  (if(> (+ n1 n2) 10)
     (begin
       (display(+ n1 n2))
       (display " Es mayor que 10")
       )
     (begin
       (display (+ n1 n2))
       (display " No es mayor que 10")
       )
     )
  )

(define(mayor2 n1 n2)
  (cond
    [(> (+ n1 n2) 10)
     (begin
       (display(+ n1 n2))
       (display " Es mayor que 10")
       )
     ]
    [( = (+ n1 n2) 10)
     (begin
       (display(+ n1 n2))
       (display " Es igual que 10")
       )
     ]
    (else
     (begin
       (display (+ n1 n2))
       (display " Es menor que 10")
       )
     )
    )
  )

; programa que recibe input y
; determina si esta entre 1 y 3
(define(leer)
  (begin
    (display "Ingrese Numero: ")
    (read)
    )
  )

(define (intervalo a)
  (cond
    [(and (<= a 3) (>= a 1))
     (display "El numero se encuentra en el intervalo 1-3")
     ]
    (else "El numero no se encuentra en el intervalo 1-3")
    )
  )