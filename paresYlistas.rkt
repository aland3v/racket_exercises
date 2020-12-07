#lang racket
; PARES
(define par (cons 1 "hola"))

(define (extraerCabeza par)
  (display (car par))
  )

(define (extraerCola par)
  (display (cdr par))
  )

;(extraerCabeza par)
;(extraerCola par)

; Pares anidados
(define Par2 (cons 1 (cons 2 (cons 3 (cons 4 5)))))

; LISTAS
(define milista (list 4 8 5 3 2))

; Adicionar 10 elementos a la lista
(define (AdicionLista ListNum Pos)
  (if (<= Pos 10)
      (AdicionLista (append ListNum(list Pos))(+ Pos 1))
      ListNum
      )
  )
;(AdicionLista milista 0)

;Imprimir todos los elementos de una lista
(define (ImprimeList milista)
  (if(not(null? milista))
     (begin
       (display(car milista))
       (newline)
       (ImprimeList(cdr milista))
       )
     (display "")
     )
  )

; Leer los elementos de la lista
(define (Agregar lista leer)
  (if(equal? leer -1)
     (display lista)
     (Agregar (append lista (list leer)) (read))
     )
  )
;(Agregar (list) (read))