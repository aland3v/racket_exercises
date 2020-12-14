#lang racket
; llenar un vector V de 10 elementos
; con cuadrados de los 10 primeros elementos
(define mivector (vector 8 12 3 4 5 6 7 8 9 10)) ; se define vector a usar
(define (llevarACuadrados vec pos)
  (if(= (vector-length vec) pos)
     vec
     (begin
       (vector-set! vec pos (* (vector-ref vec pos) (vector-ref vec pos)))
       (llevarACuadrados vec (+ pos 1))
      )
     )
  )

;Ejecucion: (llevarACuadrados mivector 0)


(define milista (list 4 8 4 9 2 1 2))
(define (sumarElementos milista)
  (if(not(null? milista))
       (+ (car milista) (sumarElementos (cdr milista)))
       0
     )
   )
;Ejecucion: (sumarElementos milista)


; Devolver de la cadena recibida solo vocales
(define(DesplegarVocales CAD Long POS)
  (if(= Long POS)
     (display "")
     (begin
       (if(or
           (char-ci=?(string-ref CAD POS) #\a)
           (char-ci=?(string-ref CAD POS) #\e)
           (char-ci=?(string-ref CAD POS) #\i)
           (char-ci=?(string-ref CAD POS) #\o)
           (char-ci=?(string-ref CAD POS) #\u))
           (display (string-ref CAD POS))
           (display "")
           )
       (DesplegarVocales CAD Long(+ POS 1))
       )
     )
  )
(define(Vocales Cadena)
  (display "Vocales: ")
  (display #\newline)
  (DesplegarVocales Cadena (string-length Cadena) 0)
  )
; Ejecucion: (Vocales "abecedario")


; Programa para hacer Sumatoria
(define (Sumatoria a n)
  (if (> a n)
      0
      (begin        
        (+ (/ 1 (+ (* a a) 1)) (Sumatoria (+ a 1) n))
       )
      )
  )
;Ejecucion: (Sumatoria 3 6)