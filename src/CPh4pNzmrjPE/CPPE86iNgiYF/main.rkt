
(module ROOT/CPh4pNzmrjPE/CPPE86iNgiYF racket 
  (require rackunit 'CODEPOD "../../../ROOT/CPh4pNzmrjPE/CPPE86iNgiYF/CPfqbAB7zapi/main.rkt")
  (provide cc foo bb
    
    
    )
  ; (define cc 5)
; cc


(define-syntax-rule (cc x)
  (+ x 1))
; (define cc 111)

(enter! #)
(reset-module ROOT/CPPE86iNgiYF cc foo bb)


(expand-once #'(reset-module ROOT/CPPE86iNgiYF cc foo bb))

(enter! #f)
(module ROOT/CPPE86iNgiYF racket (require rackunit) (provide cc foo bb) (define cc "PLACEHOLDER") (define foo "PLACEHOLDER") (define bb "PLACEHOLDER"))

(module ROOT/CPPE86iNgiYF racket
  (provide foo)
  (define foo "PLACE2"))

; (enter! #f)
(define (foo x)
  (+ x 4))

(define (foo x)
  (+ x 5))

foo

cc


  )
    