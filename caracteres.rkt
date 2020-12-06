#lang racket
; dado el char x, responder con la calificacion
; adecuada sin importar mayusculas o minusculas
(define(Notas x)
  (cond
    [(char-ci=? #\e x) (display "Excelente")]
    [(char-ci=? #\s x) (display "Sobresaliente")]
    [(char-ci=? #\a x) (display "Aceptable")]
    [(char-ci=? #\i x) (display "Insuficiente")]
    [(char-ci=? #\d x) (display "Deficiente")]
    (else(display "No es nota valida"))
    )
  )

; imprimir los caracteres que equivalen a los
; numeros hasta el 1024
(define(CodASCII Cont)
  (if(= Cont 1024)
     (display (integer->char Cont))
     (begin
       (display (integer->char Cont))
       (display " ")
       (CodASCII(+ 1 Cont))
       )
     )
  )

; Realice un programa que pida un número y saque por
; pantalla su tabla de multiplicar
(define (TablaMultiplicar a b)
  (if (= b 10)
      (begin
        (display a)
        (display " * ")
        (display b)
        (display " = ")
        (display (* a b))
        )
      (begin
        (display a)
        (display " * ")
        (display b)
        (display " = ")
        (display (* a b))(newline)
        (TablaMultiplicar a (+ 1 b))
        )
      )
  )