#lang racket
; funcion que cuenta cuantas vocales
; hay en una cadena
(define(cuentaVocal CAD Long POS)
  (if(= Long POS)
     0
     (begin
       (if(or
           (char-ci=?(string-ref CAD POS) #\a)
           (char-ci=?(string-ref CAD POS) #\e)
           (char-ci=?(string-ref CAD POS) #\i)
           (char-ci=?(string-ref CAD POS) #\o)
           (char-ci=?(string-ref CAD POS) #\u))
           (+ 1 (cuentaVocal CAD Long (+ POS 1)))
           (+ 0 (cuentaVocal CAD Long (+ POS 1)))
           )
       )
     )
  )
(define(Principal CAD)
  (cuentaVocal CAD (string-length CAD) 0)
  )

; Ejecicion: (Principal "unafrasesinvocales")

; funcion que cuenta cuantos espacios hay
; en una cadena
(define(cuentaEspacios CAD Long POS)
  (if(= Long POS)
     0
     (begin
       (if(char=?(string-ref CAD POS) #\space)
           (+ 1 (cuentaEspacios CAD Long (+ POS 1)))
           (+ 0 (cuentaEspacios CAD Long (+ POS 1)))
           )
       )
     )
  )
(define(Principal2 CAD)
  (cuentaEspacios CAD (string-length CAD) 0)
  )

; Ejecicion: (Principal2 "una frase con espacios ")