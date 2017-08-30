LISP Interpreter Run

[[[
 Show that a formal system of complexity N
 can't prove that a specific object has
 complexity > N + 4872.
 Formal system is a never halting lisp expression
 that output pairs (lisp object, lower bound
 on its complexity).  E.g., (x 4) means
 that x has complexity H(x) greater than or equal to 4.
]]]
 
[Here is the prefix.]
 
define pi
 
let (examine pairs)
    if atom pairs false
    if < n cadr car pairs
       car pairs
       (examine cdr pairs)
 
let t 0
 
let fas nil
 
let (loop)
  let v try t 'eval read-exp fas
  let n + 4872 length fas
  let p (examine caddr v)
  if p car p
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
value       ((' (lambda (examine) ((' (lambda (t) ((' (lambda 
            (fas) ((' (lambda (loop) (loop))) (' (lambda () ((
            ' (lambda (v) ((' (lambda (n) ((' (lambda (p) (if 
            p (car p) (if (= (car v) success) failure (if (= (
            car (cdr v)) out-of-data) ((' (lambda (fas) (loop)
            )) (append fas (cons (read-bit) nil))) (if (= (car
             (cdr v)) out-of-time) ((' (lambda (t) (loop))) (+
             t 1)) unexpected-condition)))))) (examine (car (c
            dr (cdr v))))))) (+ 4872 (length fas))))) (try t (
            ' (eval (read-exp))) fas))))))) nil))) 0))) (' (la
            mbda (pairs) (if (atom pairs) false (if (< n (car 
            (cdr (car pairs)))) (car pairs) (examine (cdr pair
            s)))))))

[Size pi.]
length bits pi

expression  (length (bits pi))
value       4872

[Size pi + fas.]
length
append bits pi
       bits 'display '(xyz 9999)

expression  (length (append (bits pi) (bits (' (display (' (xy
            z 9999)))))))
value       5072

[Here pi finds something suitable.]
 
cadr try no-time-limit 'eval read-exp
append bits pi
       bits 'display '(xyz 5073)

expression  (car (cdr (try no-time-limit (' (eval (read-exp)))
             (append (bits pi) (bits (' (display (' (xyz 5073)
            ))))))))
value       xyz

[Here pi doesn't find anything suitable.]
 
cadr try no-time-limit 'eval read-exp
append bits pi
       bits 'display '(xyz 5072)

expression  (car (cdr (try no-time-limit (' (eval (read-exp)))
             (append (bits pi) (bits (' (display (' (xyz 5072)
            ))))))))
value       failure

End of LISP Run

Elapsed time is 2 seconds.
