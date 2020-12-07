#lang racket
; sumar los elementos de una lista
(define milista (list 4 8 4 9 2 1 2))
(define (sumarElementos milista)
  (if(not(null? milista))
       (+ (car milista) (sumarElementos (cdr milista)))
       0
     )
   )


; construir un programa que reciba una lista
; y cuente de forma recursiva el numero de elems
(define (tamanioLista milista)
  (if(not(null? milista))
       (begin
         (+ 1 (tamanioLista (cdr milista)))         
         )
       0
     )
   )

; funcion que adicione un elemento al final
; de una lista, siempre que el elemento aún no
; se encuentre presente en la lista
(define (adicionaElem milista elem)
  (if(and (not(null? milista)) (not(= (car milista) elem)))
       (begin
         (adicionaElem (cdr milista) elem)
         )
       0
     )
   )

; buscar dentro de la lista un elemento dado
(define (buscarElem milista elem)
  (if(not(null? milista))
       (begin
         (if (not (= elem (car milista)))
         (+ 1 (buscarElem (cdr milista) elem))
         0
         )
         )
       0
     )
   )