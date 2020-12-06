#lang racket
; generar codigo de usuario en base al formato:
; ALEX RUIZ SANCHEZ -> ALERUISAN

(define(Codigo Nom Paterno Materno)
  (display(substring Nom 0 3))
  (display(substring Paterno 0 3))
  (display(substring Materno 0 3))
  )

; Devolver la cadena recibida sin vocales
(define (Tamanio cad)
  (string-length cad)
  )

(define(SinVocal CAD Long POS)
  (if(= Long POS)
     (display "")
     (begin
       (if(or
           (char-ci=?(string-ref CAD POS) #\a)
           (char-ci=?(string-ref CAD POS) #\e)
           (char-ci=?(string-ref CAD POS) #\i)
           (char-ci=?(string-ref CAD POS) #\o)
           (char-ci=?(string-ref CAD POS) #\u))
           (display "")
           (display(string-ref CAD POS))
           )
       (SinVocal CAD Long(+ POS 1))
       )
     )
  )
(define(Principal usrdef)
  (SinVocal usrdef (Tamanio usrdef) 0)
  )