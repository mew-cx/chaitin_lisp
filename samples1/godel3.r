LISP Interpreter Run

[[[
 Show that a formal system of complexity N
 can't determine more than N + 8000 + 7328
 = N + 15328 bits of Omega.
 Formal system is a never halting lisp expression
 that outputs lists of the form (1 0 X 0 X X X X 1 0).
 This stands for the fractional part of Omega,
 and means that these 0,1 bits of Omega are known.
 X stands for an unknown bit.
]]]
 
[Here is the prefix.]
 
define pi
 
let (number-of-bits-determined w)
    if atom w 0
    + (number-of-bits-determined cdr w)
      if = X car w
         0
         1
 
let (supply-missing-bits w)
    if atom w nil
    cons if = X car w
            read-bit
            car w
    (supply-missing-bits cdr w)
 
let (examine w)
    if atom w false
   [if < n (number-of-bits-determined car w)]
   [   Change n to 1 here so will succeed.  ]
    if < 1 (number-of-bits-determined car w)
       car w
       (examine cdr w)
 
let t 0
 
let fas nil
 
let (loop)
  let v try t 'eval read-exp fas
  let n + 8000 + 7328 length fas
  let w (examine caddr v)
  if w (supply-missing-bits w)
  if = car v success failure
  if = cadr v out-of-data
     let fas append fas cons read-bit nil
     (loop)
  if = cadr v out-of-time
     let t + t 1
     (loop)
  unexpected-condition
 
(loop)

define      pi
value       ((' (lambda (number-of-bits-determined) ((' (lambd
            a (supply-missing-bits) ((' (lambda (examine) ((' 
            (lambda (t) ((' (lambda (fas) ((' (lambda (loop) (
            loop))) (' (lambda () ((' (lambda (v) ((' (lambda 
            (n) ((' (lambda (w) (if w (supply-missing-bits w) 
            (if (= (car v) success) failure (if (= (car (cdr v
            )) out-of-data) ((' (lambda (fas) (loop))) (append
             fas (cons (read-bit) nil))) (if (= (car (cdr v)) 
            out-of-time) ((' (lambda (t) (loop))) (+ t 1)) une
            xpected-condition)))))) (examine (car (cdr (cdr v)
            )))))) (+ 8000 (+ 7328 (length fas)))))) (try t ('
             (eval (read-exp))) fas))))))) nil))) 0))) (' (lam
            bda (w) (if (atom w) false (if (< 1 (number-of-bit
            s-determined (car w))) (car w) (examine (cdr w))))
            ))))) (' (lambda (w) (if (atom w) nil (cons (if (=
             X (car w)) (read-bit) (car w)) (supply-missing-bi
            ts (cdr w))))))))) (' (lambda (w) (if (atom w) 0 (
            + (number-of-bits-determined (cdr w)) (if (= X (ca
            r w)) 0 1))))))

[Size pi.]
length bits pi

expression  (length (bits pi))
value       7328

[Run pi.]
 
cadr try no-time-limit 'eval read-exp
append bits pi
append [Toy formal system with only one theorem.]
       bits 'display '(1 X 0)
       [Missing bit of omega that is needed.]
       '(1)

expression  (car (cdr (try no-time-limit (' (eval (read-exp)))
             (append (bits pi) (append (bits (' (display (' (1
             X 0))))) (' (1)))))))
value       (1 1 0)

End of LISP Run

Elapsed time is 1 seconds.
