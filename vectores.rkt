#lang racket
; Imprimir los elementos de un vector recursivamente
(define Vec_Num(vector 2 5 6 8 4 1 7 9 10))
(define (Desp_Vect Nom_Vec Pos)
  (if(= (- (vector-length Nom_Vec) 1) Pos)
     (display(vector-ref Nom_Vec Pos))
     (begin
       (display(vector-ref Nom_Vec Pos))
       (Desp_Vect Nom_Vec(+ Pos 1))
       )
     )
  )

;(Desp_Vect Vec_Num 0)