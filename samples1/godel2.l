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
[Size pi.]
length bits pi
[Size pi + fas.]
length
append bits pi
       bits 'display '(xyz 9999)
[Here pi finds something suitable.]
 
cadr try no-time-limit 'eval read-exp
append bits pi
       bits 'display '(xyz 5073)
[Here pi doesn't find anything suitable.]
 
cadr try no-time-limit 'eval read-exp
append bits pi
       bits 'display '(xyz 5072)
