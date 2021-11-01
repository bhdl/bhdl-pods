
(module ROOT/CPkwWP4EWjQa racket 
  (require rackunit 'CODEPOD "../../ROOT/CPkwWP4EWjQa/CPhdjeB6cEQ6/main.rkt")
  (provide 
    
    
    )
  (require (for-syntax syntax/parse)
         racket)


(define-syntax (syn1 stx)
  (syntax-parse 
    stx
    [(_ a) #`(+ a 1)]))


(define-syntax-rule (syn1 x y)
  (+ x y))

(begin-for-syntax
  (eval 'syn1))

(syn1 3 3)

(module aaa racket
  (provide foo)
  ; (define foo #f)
  (define (foo a b) (+ a b 1))
  (define-syntax-rule (myadd x y)
    (+ x y)))

(enter! #f)
(my-ns-enter! "aaa")
; myadd
; (define-syntax-rule (foo x)
;     (+ x 1))
; (myadd 1)
(define foo #f)
; (define (foo a b) (+ a b 10))

(my-ns-enter! "aaa")
(foo 2 3)

; CODEPOD-EVAL
(enter! #f)

(module aaa racket
  (require (for-syntax syntax/parse))
  (define (foo a) (+ a 1))
  (define-syntax (syn1 stx)
    (syntax-parse 
      stx
      [(_ a) #`(+ a 1)])))

(require rackunit)
; (require/expose 'aaa (foo))
(require/expose 'aaa (foo myadd))

; (eval 'syn1)
(begin-for-syntax syn1)

; foo
syn1
  )
    