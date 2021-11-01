
(module ROOT/CPmxLGUfd7eN racket 
  (require rackunit 'CODEPOD "../../ROOT/CPmxLGUfd7eN/CPP4Py79E9fy/main.rkt")
  (provide 
    
    
    )
  (displayln "hello")
(displayln "hello")
(displayln "hello")
(+ 1 2)


(require (for-syntax syntax/parse racket))
(define-syntax (reset-module stx)
  (syntax-parse
    stx
    [(_ ns names ...)
    #`(module ns racket
        (provide names ...)
        (define names "PLACEHOLDER") ...)]))


(define (reset-module ns names)
  (eval 
    `(module ,(string->symbol ns) racket/base 
        (void))))

(require (for-syntax syntax/parse racket))

(define-syntax (reset-module stx)
  (syntax-parse
    stx
    [(_ ns names ...)
    #`(module ns racket
        (provide names ...)
        (define names "PLACEHOLDER") ...)]))

; (module aaa/bbb racket (void))
; (string->symbol "aaa/bbb")
; 'aaa/bbb
(string->symbol (syntax->datum #'"hell"))

(reset-module aaa/bbb/ccc foo bar)
; ns->ensure-module
; (enter! #f)
  )
    