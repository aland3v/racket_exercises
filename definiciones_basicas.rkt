#lang racket
; definiendo valores
(define Pi 3.1415)
(define max 50)
(define min 3)

; halla el cuadrado de x
(define (cuadrado x)
  (* x x)
  )

; retorna la suma de x + y
(define (sumar x y)
  (+ x y)
  )

; determina si x es menor que y
(define (esMenor x y)
  (if ( < x y)
      (display "Si es menor")
      (display "No es menor :("))
  )

; despliega el parametro
(define  (desplega n)
  (display n)
  )

; despliega la suma de x, y
(define (suma_despliega x y)
   (begin
     (display "La suma es: ")
     (display(+ x y))
     )
  )

; lee input del usuario (leer)
(define (leer)
  (begin
    (display "Introduzca Numero:")
    (read)
    )
  )

