[godel3.l]
 
[Show that a formal system of complexity N]
[can't determine more than N + 9488 + 6912]
[= N + 16400 bits of Omega.]
[Formal system is a never halting lisp expression]
[that outputs lists of the form (1 0 X 0 X X X X 1 0).]
[This stands for the fractional part of Omega,]
[and means that these 0,1 bits of Omega are known.]
[X stands for an unknown bit.]
 
[Count number of bits in an omega that are determined.]
define (number-of-bits-determined w)
    if atom w 0
    + (number-of-bits-determined cdr w)
      if = X car w
         0
         1
[Test it.]
(number-of-bits-determined '(X X X))
(number-of-bits-determined '(1 X X))
(number-of-bits-determined '(1 X 0))
(number-of-bits-determined '(1 1 0))
 
[Merge bits of data into unknown bits of an omega.]
define (supply-missing-bits w)
    if atom w nil
    cons if = X car w
            read-bit
            car w
    (supply-missing-bits cdr w)
[Test it.]
cadr try no-time-limit '
let (supply-missing-bits w)
    if atom w nil
    cons if = X car w
            read-bit
            car w
    (supply-missing-bits cdr w)
(supply-missing-bits '(0 0 X 0 0 X 0 0 X))
'(1 1 1)
cadr try no-time-limit '
let (supply-missing-bits w)
    if atom w nil
    cons if = X car w
            read-bit
            car w
    (supply-missing-bits cdr w)
(supply-missing-bits '(1 1 X 1 1 X 1 1 1))
'(0 0)
 
[Examine omegas in list w to see if in any one of them]
[the number of bits that are determined is greater than n.]
[Returns false to indicate not found, or what it found.]
define (examine w n)
    if atom w false
    if < n (number-of-bits-determined car w)
       car w
       (examine cdr w n)
[Test it.]
(examine '((1 1)(1 1 1)) 0)
(examine '((1 1)(1 1 1)) 1)
(examine '((1 1)(1 1 1)) 2)
(examine '((1 1)(1 1 1)) 3)
(examine '((1 1)(1 1 1)) 4)
 
[This is an identity function with the size-effect of]
[displaying the number of bits in a binary string.]
define (display-number-of-bits string)
    cadr cons display length string
         cons string
              nil
 
[This is the universal Turing machine U followed by its program.]
cadr try no-time-limit 'eval read-exp
 
append [Append missing bits of Omega to rest of program.]
 
[Display number of bits in entire program excepting the missing bits of Omega.]
(display-number-of-bits
 
append [Append prefix and formal axiomatic system.]
 
[Display number of bits in the prefix.]
(display-number-of-bits bits '
 
[Count number of bits in an omega that are determined.]
let (number-of-bits-determined w)
    if atom w 0
    + (number-of-bits-determined cdr w)
      if = X car w
         0
         1
 
[Merge bits of data into unknown bits of an omega.]
let (supply-missing-bits w)
    if atom w nil
    cons if = X car w
            read-bit
            car w
    (supply-missing-bits cdr w)
 
[Examine omegas in list w to see if in any one of them]
[the number of bits that are determined is greater than n.]
[Return false to indicate not found, or what it found.]
let (examine w n)
    if atom w false
[]
[   if < n (number-of-bits-determined car w)  <==== Change n to 1 here so will succeed.]
[]
    if < 1 (number-of-bits-determined car w)
       car w
       (examine cdr w n)
 
                              []
[Main Loop - t is time limit, fas is bits of formal axiomatic system read so far.]
let (loop t fas)              [Run formal axiomatic system again.]
 let v debug try debug t 'eval read-exp debug fas
 []
 [Look for theorem which determines more than]
 [   (c + # of bits read + size of this prefix)]
 [bits of Omega.  Here c = 9488 is the constant in the inequality]
 [   H(Omega_n) > n - c]
 [(see omega3.l and omega3.r).]
 []
 let s (examine caddr v + 9488 debug + length fas 6912)
 if s (supply-missing-bits s) [Found it! Merge in undetermined bits, output result, and halt. Contradiction!]
 if = car v success  failure  [Surprise, formal system halts, so we do too.]
 if = cadr v out-of-data  (loop t append fas cons read-bit nil)
                              [Read another bit of the formal axiomatic system.]
 if = cadr v out-of-time  (loop + t 1 fas)
                              [Increase time limit.]
 unexpected-condition         [This should never happen.]
                              []
(loop 0 nil)    [Initially, 0 time limit and no bits of formal axiomatic system read.]
 
) [end of prefix, start of formal axiomatic system]
 
[Toy formal system with only one theorem.]
bits 'display '(1 X 0)
 
) [end of prefix and formal axiomatic system]
 
'(1) [Missing bit of Omega that is needed.]
