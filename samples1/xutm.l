[utm.l]
 
[First steps with my new construction for]
[a self-delimiting universal Turing machine.]
[We show that]
[   H(x,y) <= H(x) + H(y) + c]
[and determine c.]
[Consider a bit string x of length |x|.]
[We also show that]
[   H(x) <= 2|x| + c]
[and that]
[   H(x) <= |x| + H(the binary string for |x|) + c]
[and determine both these c's.]
 
[First demo the new lisp primitive functions.]
 
append '(1 2 3 4 5 6 7 8 9 0) '(a b c d e f g h i)
read-bit
try 0 'read-bit nil
try 0 'read-bit '(1)
try 0 'read-bit '(0)
try 0 'read-bit '(x)
try 0 'cons cons read-bit nil cons cons read-bit nil nil '(1 0)
try 0 'cons cons display read-bit nil cons cons display read-bit nil nil '(1 0)
try 0 'cons cons display read-bit nil cons cons display read-bit nil cons cons display read-bit nil nil
      '(1 0)
try 0 'read-exp display bits a
try 0 'read-exp display bits b
try 0 'read-exp display bits c
try 0 'read-exp display bits d
try 0 'read-exp display bits e
try 0 'read-exp bits '(aa bb cc dd ee)
try 0 'read-exp bits '(12 (3 4) 56)
try 0 'cons read-exp cons read-exp nil
      append bits '(abc def) bits '(ghi jkl)
[]
[Here is the self-delimiting universal Turing machine!]
[(with slightly funny handling of out-of-tape condition)]
[]
define (U p) cadr try no-time-limit 'eval read-exp p
[]
[The length of this bit string is the]
[constant c in H(x) <= 2|x| + 2 + c.]
[]
length bits '
let (loop) let x read-bit
           let y read-bit
           if = x y
              cons x (loop)
              nil
(loop)
(U
 append
   bits
   'let (loop) let x read-bit let y read-bit if = x y cons x (loop) nil
    (loop)
 
   '(0 0 1 1 0 0 1 1 0 1)
)
(U
 append
   bits
   'let (loop) let x read-bit let y read-bit if = x y cons x (loop) nil
    (loop)
 
   '(0 0 1 1 0 0 1 1 0 0)
)
[]
[The length of this bit string is the]
[constant c in H(x,y) <= H(x) + H(y) + c.]
[]
length bits '
cons eval read-exp
cons eval read-exp
     nil
(U
 append
   bits 'cons eval read-exp cons eval read-exp nil
 append
   bits 'let (f) let x read-bit let y read-bit if = x y cons x (f) nil (f)
 append
   '(0 0 1 1 0 0 1 1 0 1)
 append
   bits 'let (f) let x read-bit let y read-bit if = x y cons x (f) nil (f)
 
   '(1 1 0 0 1 1 0 0 0 1)
)
[]
[The length of this bit string is the]
[constant c in H(x) <= |x| + H(|x|) + c]
[]
length bits '
let (loop k)
   if = 0 k nil
   cons read-bit (loop - k 1)
(loop debug base2-to-10 eval debug read-exp)
(U
 append
   bits '
   let (loop k) if = 0 k nil cons read-bit (loop - k 1)
   (loop debug base2-to-10 eval debug read-exp)
 append
  bits ''(1 0 0 0) [Arbitrary program for U to compute number of bits.]
 
   '(0 0 0 0  0 0 0 1) [That many bits of data.]
)
