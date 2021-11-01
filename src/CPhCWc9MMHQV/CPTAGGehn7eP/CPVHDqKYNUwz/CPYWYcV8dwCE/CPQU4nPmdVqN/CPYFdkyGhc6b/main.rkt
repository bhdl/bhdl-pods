
(module ROOT/CPhCWc9MMHQV/CPTAGGehn7eP/CPVHDqKYNUwz/CPYWYcV8dwCE/CPQU4nPmdVqN/CPYFdkyGhc6b racket 
  (require rackunit 'CODEPOD "../../../../../../../ROOT/CPhCWc9MMHQV/CPTAGGehn7eP/CPVHDqKYNUwz/CPYWYcV8dwCE/CPckUrdGFJME/main.rkt" "../../../../../../../ROOT/CPhCWc9MMHQV/CPTAGGehn7eP/CPVHDqKYNUwz/CP9hPyBA9z8P/main.rkt" "../../../../../../../ROOT/CPhCWc9MMHQV/CPTAGGehn7eP/CPVHDqKYNUwz/CPYWYcV8dwCE/CPQU4nPmdVqN/main.rkt")
  (provide 
    
    
    )
  (require 
  ;; library
  'ROOT/CPhCWc9MMHQV/CPBmYNgbhetq
  ;; pict wrapper
  'ROOT/CPhCWc9MMHQV/CP8n8tgtpNC4)

1N4148W

;; codepod export to files TODO

;; raco pkg install bhdl
(require bhdl)

(circuit key-with-diode
      (pin left right)
      (part [d (1N4148W)]
            [key (kailh-socket 1)]
            [a (Resistor)])
      (wire (series self.left key d self.right))
      (layout (vstack key d)))

(show-layout (key-with-diode))

(show-layout 
  (make-circuit2
    (pin left right)
    (part [d (1N4148W)]
          [key (kailh-socket 1)])
    (wire (series self.left key d self.right))
    ;; FIXME actually I cannot use d twice
    (layout (at key 80 80 (hstack d d)))))

show-layout
  )
    