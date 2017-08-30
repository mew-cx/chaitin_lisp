[godel2.l]
 
[Show that a formal system of complexity N]
[can't prove that a specific object has]
[complexity > N + 4696.]
[Formal system is a never halting lisp expression]
[that output pairs (lisp object, lower bound]
[on its complexity).  E.g., (x 4) means]
[that x has complexity H(x) greater than or equal to 4.]
 
[Examine pairs to see if 2nd element is greater than lower bound.]
[Returns false to indicate not found, or pair if found.]
define (examine pairs lower-bound)
    if atom pairs false
    if < lower-bound cadr car pairs
       car pairs
       (examine cdr pairs lower-bound)
(examine '((x 2)(y 3)) 0)
(examine '((x 2)(y 3)) 1)
(examine '((x 2)(y 3)) 2)
(examine '((x 2)(y 3)) 3)
(examine '((x 2)(y 3)) 4)
 
[This is an identity function with the size-effect of]
[displaying the number of bits in a binary string.]
define (display-number-of-bits string)
    cadr cons display length string cons string nil
 
[This is the universal Turing machine U followed by its program.]
cadr try no-time-limit 'eval read-exp
 
[Display number of bits in entire program.]
(display-number-of-bits
 
append [Append prefix and data.]
 
[Display number of bits in the prefix.]
(display-number-of-bits bits '
 
[Examine pairs to see if 2nd element is greater than lower bound.]
[Returns false to indicate not found, or pair if found.]
let (examine pairs lower-bound)
    if atom pairs false
    if < lower-bound cadr car pairs
       car pairs
       (examine cdr pairs lower-bound)
 
                            []
[Main Loop - t is time limit, fas is bits of formal axiomatic system read so far.]
let (loop t fas)            [Run formal axiomatic system again.]
 let v debug try debug t 'eval read-exp debug fas
 [Look for theorem which is pair with 2nd element > # of bits read + size of this prefix.]
 let s (examine caddr v debug + length fas 4696)
 if s car s                 [Found it! Output first element of theorem and halt. Contradiction!]
 if = car v success failure [Surprise, formal system halts, so we do too.]
 if = cadr v out-of-data  (loop t append fas cons read-bit nil)
                            [Read another bit of the formal axiomatic system.]
 if = cadr v out-of-time  (loop + t 1 fas)
                            [Increase time limit]
 unexpected-condition       [This should never happen.]
                            []
(loop 0 nil)    [Initially, 0 time limit and no bits of formal axiomatic system read.]
 
) [end of prefix, start of formal axiomatic system]
 
bits ' display'(x 4881)
 
) [end of entire program for universal Turing machine U]
