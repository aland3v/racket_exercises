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

; Perimetro de la circunferencia 2.pi.r
(define (perimetro r)
  (begin
    (display "El perimetro es: ")
    (display (* 2 Pi r))
    )
  )

; Area de la circunferencia pi.r^2
(define (area r)
  (begin
    (display "El area es: ")
    (display (* Pi r r))
    )
  )

; calcular X^3 + Y^2
(define (func_1 x y)
  (begin
    (display "El resultado es: ")
    (display (+ (* x x x) (* y y)))
    )
  )

; calcular f(a) = (a+1)^2 + (a-1)^2
(define (func_2 a)
  (begin
    (display "El resultado es: ")
    (display (+ (* (+ a 1) (+ a 1)) (* (- a 1) (- a 1))))
    )
  )

; funcion que determine el mayor de 3 #'s
(define (max3 x y z)
  (begin
    (display "El maximo es: ")
    (display (max x (max y z)))
    )
  )
; Calcular potencia recursivamente x^y
;(define (potencia x y)
  
 ; )
