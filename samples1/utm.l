[[[
 First steps with my new construction for
 a self-delimiting universal Turing machine.
 We show that
    H(x,y) <= H(x) + H(y) + c
 and determine c.
 Consider a bit string x of length |x|.
 We also show that
    H(x) <= 2|x| + c
 and that
    H(x) <= |x| + H(the binary string for |x|) + c
 and determine both these c's.
]]]
 
[
 Here is the self-delimiting universal Turing machine!
]
define (U p) cadr try no-time-limit 'eval read-exp p
(U bits 'cons x cons y cons z nil)
(U append bits 'cons a debug read-exp
          bits '(b c d)
)
[
 The length of alpha in bits is the
 constant c in H(x) <= 2|x| + 2 + c.
]
define alpha
let (loop) let x read-bit
           let y read-bit
           if = x y
              cons x (loop)
              nil
(loop)
length bits alpha
(U
 append
   bits alpha
   '(0 0 1 1 0 0 1 1 0 1)
)
(U
 append
   bits alpha
   '(0 0 1 1 0 0 1 1 0 0)
)
[
 The length of beta in bits is the
 constant c in H(x,y) <= H(x) + H(y) + c.
]
define beta
cons eval read-exp
cons eval read-exp
     nil
length bits beta
(U
 append
   bits  beta
 append
   bits 'cons a cons b cons c nil
   bits 'cons x cons y cons z nil
)
(U
 append
   bits beta
 append
   append bits alpha '(0 0 1 1 0 0 1 1 0 1)
   append bits alpha '(1 1 0 0 1 1 0 0 1 0)
)
[
 The length of gamma in bits is the
 constant c in H(x) <= |x| + H(|x|) + c
]
define gamma
let (loop k)
   if = 0 k nil
   cons read-bit (loop - k 1)
(loop base2-to-10 eval read-exp)
length bits gamma
(U
 append
   bits gamma
 append
   [Arbitrary program for U to compute number of bits]
   bits' '(1 0 0 0)
   [That many bits of data]
   '(0 0 0 0  0 0 0 1)
)
