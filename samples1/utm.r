LISP Interpreter Run

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

define      U
value       (lambda (p) (car (cdr (try no-time-limit (' (eval 
            (read-exp))) p))))

(U bits 'cons x cons y cons z nil)

expression  (U (bits (' (cons x (cons y (cons z nil))))))
value       (x y z)

(U append bits 'cons a debug read-exp
          bits '(b c d)
)

expression  (U (append (bits (' (cons a (debug (read-exp))))) 
            (bits (' (b c d)))))
debug       (b c d)
value       (a b c d)

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

define      alpha
value       ((' (lambda (loop) (loop))) (' (lambda () ((' (lam
            bda (x) ((' (lambda (y) (if (= x y) (cons x (loop)
            ) nil))) (read-bit)))) (read-bit)))))

length bits alpha

expression  (length (bits alpha))
value       1104

(U
 append
   bits alpha
   '(0 0 1 1 0 0 1 1 0 1)
)

expression  (U (append (bits alpha) (' (0 0 1 1 0 0 1 1 0 1)))
            )
value       (0 1 0 1)

(U
 append
   bits alpha
   '(0 0 1 1 0 0 1 1 0 0)
)

expression  (U (append (bits alpha) (' (0 0 1 1 0 0 1 1 0 0)))
            )
value       out-of-data

[
 The length of beta in bits is the
 constant c in H(x,y) <= H(x) + H(y) + c.
]
define beta
cons eval read-exp
cons eval read-exp
     nil

define      beta
value       (cons (eval (read-exp)) (cons (eval (read-exp)) ni
            l))

length bits beta

expression  (length (bits beta))
value       432

(U
 append
   bits  beta
 append
   bits 'cons a cons b cons c nil
   bits 'cons x cons y cons z nil
)

expression  (U (append (bits beta) (append (bits (' (cons a (c
            ons b (cons c nil))))) (bits (' (cons x (cons y (c
            ons z nil))))))))
value       ((a b c) (x y z))

(U
 append
   bits beta
 append
   append bits alpha '(0 0 1 1 0 0 1 1 0 1)
   append bits alpha '(1 1 0 0 1 1 0 0 1 0)
)

expression  (U (append (bits beta) (append (append (bits alpha
            ) (' (0 0 1 1 0 0 1 1 0 1))) (append (bits alpha) 
            (' (1 1 0 0 1 1 0 0 1 0))))))
value       ((0 1 0 1) (1 0 1 0))

[
 The length of gamma in bits is the
 constant c in H(x) <= |x| + H(|x|) + c
]
define gamma
let (loop k)
   if = 0 k nil
   cons read-bit (loop - k 1)
(loop base2-to-10 eval read-exp)

define      gamma
value       ((' (lambda (loop) (loop (base2-to-10 (eval (read-
            exp)))))) (' (lambda (k) (if (= 0 k) nil (cons (re
            ad-bit) (loop (- k 1)))))))

length bits gamma

expression  (length (bits gamma))
value       1024

(U
 append
   bits gamma
 append
   [Arbitrary program for U to compute number of bits]
   bits' '(1 0 0 0)
   [That many bits of data]
   '(0 0 0 0  0 0 0 1)
)

expression  (U (append (bits gamma) (append (bits (' (' (1 0 0
             0)))) (' (0 0 0 0 0 0 0 1)))))
value       (0 0 0 0 0 0 0 1)

End of LISP Run

Elapsed time is 0 seconds.
