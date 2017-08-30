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
[Size pi.]
length bits pi
[Run pi.]
 
cadr try no-time-limit 'eval read-exp
append bits pi
append [Toy formal system with only one theorem.]
       bits 'display '(1 X 0)
       [Missing bit of omega that is needed.]
       '(1)
