#lang racket
; Dado un vector solo con numeros
; realizar la suma de sus elementos
(define mivector (vector 4 8 4 9 2 1 2))
(define (sumarElementos vec pos)
 (if(= (vector-length vec) pos)
    0
    (begin
       (+ (vector-ref vec pos) (sumarElementos vec (+ pos 1)))
       )
     )
  )
;Ejecución: (sumarElementos mivector 0)

; llenar un vector V de 10 elementos
; con cuadrados de los 10 primeros elementos
(define mivector2 (vector 1 2 3 4 5 6 7 8 9 10))
(define (llevarACuadrados vec pos)
  (if(= (vector-length vec) pos)
     vec
     (begin
       (vector-set! vec pos (* (vector-ref vec pos) (vector-ref vec pos)))
       (llevarACuadrados vec (+ pos 1))
      )
     )
  )

;Ejecucion: (llevarACuadrados mivector2 0)