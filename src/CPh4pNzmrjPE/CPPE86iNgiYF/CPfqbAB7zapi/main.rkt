
(module ROOT/CPh4pNzmrjPE/CPPE86iNgiYF/CPfqbAB7zapi racket 
  (require rackunit 'CODEPOD )
  (provide 
    
    
    )
  (require 'ROOT/CPh4pNzmrjPE/CPPE86iNgiYF)
; (require/expose 'ROOT/CPPE86iNgiYF)
; (enter! #f)
; cc
(foo 1)


(enter! #f)
(my-ns-enter! "ROOT/CPPE86iNgiYF")
cc

(enter! #f)
(define (CODEPOD-ADD-IMPORT from to name)
  (let ([name (string->symbol name)])
    ;; this must not be in a begin form together with (define ...)s
    ; (eval (ns->enter to))
    (my-ns-enter! to)
    ;; FIXME I cannot require it here, otherwise this file is not loaded
    ;; (eval (require rackunit))
    ; (eval `(define ,name (dynamic-require/expose '',(string->symbol from) ',name)))
    ; (eval `(require/expose ',(string->symbol from) (,name)))
    (eval `(require ',(string->symbol from)))
    ;; if no return expression, iracket will not send anything back
    "OK"))

(enter! #f)
; (require rackunit)
; (CODEPOD-ADD-IMPORT "CPPE86iNgiYF" "xxx" "aa")
(CODEPOD-ADD-IMPORT "ROOT/CPPE86iNgiYF" "ROOT/CPPE86iNgiYF/CPfqbAB7zapi" "cc")
cc

cc

(require rackunit)
  )
    