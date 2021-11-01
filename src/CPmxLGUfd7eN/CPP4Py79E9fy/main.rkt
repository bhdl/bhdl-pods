
(module ROOT/CPmxLGUfd7eN/CPP4Py79E9fy racket 
  (require rackunit 'CODEPOD )
  (provide 
    
    
    )
  
(require (for-syntax syntax/parse racket))

(define-syntax-rule (#%dot obj-expr method-id)
  (let ([obj obj-expr])
       (lambda args (send/apply obj method-id args))))

(begin-for-syntax
  (define-splicing-syntax-class maybe-splicing
    #:datum-literals (..)
    ;; see if it ends with ....
    (pattern (~seq pat ..)
             #:with x #`pat)
    ;; FIXME this might be keyword
    (pattern (~seq pat) #:with x #'(list pat))))



(define-syntax (my-#%app stx)
  (syntax-parse
    stx
    [(_ proc (~alt (~seq key:keyword value)
                   (~seq arg:maybe-splicing)) ...)
     #`(#%app apply proc (append arg.x ...)
              (~@ key value) ...)]))

(my-#%app list (list 1 2) ..)

(define hello (list 1 2))
(define x (list 3 4))
(define y (list 5 6))
(define z (list 7 8))

(my-#%app list hello .. (list 1 2) .. x .. y z ..)



(module my-module racket
  (provide hello)
  (define (hello) ))

(require racket/base)

(module my-splicing racket
  (provide 
    ; my-#%app
  (rename-out [my-#%app #%app])
  ; my-#%app
  ; #%module-begin
  ; #%datum
  ; #%top
  ; require
  (except-out (all-from-out racket)
                     #%app)
  )
  
  (require (for-syntax syntax/parse racket))
  (define-syntax-rule (#%dot obj-expr method-id)
    (let ([obj obj-expr])
      (lambda args (send/apply obj method-id args))))
  
  (begin-for-syntax
    (define-splicing-syntax-class maybe-splicing
      #:datum-literals (..)
      ;; see if it ends with ....
      (pattern (~seq pat ..)
               #:with x #`pat)
      ;; FIXME this might be keyword
      (pattern (~seq pat) #:with x #'(list pat))))

  (define-syntax (my-#%app stx)
    (syntax-parse
      stx
      [(_ proc (~alt (~seq key:keyword value)
                     (~seq arg:maybe-splicing)) ...)
       #`(#%app apply proc (append arg.x ...)
                (~@ key value) ...)]))
  )


(module test-splicing2 'my-splicing
  (require (only-in racket list))
;   (require (only-in 'my-splicing my-#%app))
  (list (list 1 2 3) ..))

(require 'test-splicing)

(module lambda-calculus racket
    (provide (rename-out [1-arg-lambda lambda]
                         [1-arg-app #%app]
                         [1-form-module-begin #%module-begin]
                         [no-literals #%datum]
                         [unbound-as-quoted #%top]))
    (define-syntax-rule (1-arg-lambda (x) expr)
      (lambda (x) expr))
    (define-syntax-rule (1-arg-app e1 e2)
      (#%app e1 e2))
    (define-syntax-rule (1-form-module-begin e)
      (#%module-begin e))
    (define-syntax (no-literals stx)
      (raise-syntax-error #f "no" stx))
    (define-syntax-rule (unbound-as-quoted . id)
      'id))

(module just-lambda racket
    (provide lambda #%module-begin))

(module identity 'just-lambda
    (lambda (x) x)
    )
    (require 'identity)
  )
    