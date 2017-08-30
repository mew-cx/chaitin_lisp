LISP Interpreter Run
 
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
 
expression  (append (' (1 2 3 4 5 6 7 8 9 0)) (' (a b c d e f
            g h i)))
value       (1 2 3 4 5 6 7 8 9 0 a b c d e f g h i)
 
read-bit
 
expression  (read-bit)
value       out-of-data
 
try 0 'read-bit nil
 
expression  (try 0 (' (read-bit)) nil)
value       (failure out-of-data ())
 
try 0 'read-bit '(1)
 
expression  (try 0 (' (read-bit)) (' (1)))
value       (success 1 ())
 
try 0 'read-bit '(0)
 
expression  (try 0 (' (read-bit)) (' (0)))
value       (success 0 ())
 
try 0 'read-bit '(x)
 
expression  (try 0 (' (read-bit)) (' (x)))
value       (success 1 ())
 
try 0 'cons cons read-bit nil cons cons read-bit nil nil '(1 0)
 
expression  (try 0 (' (cons (cons (read-bit) nil) (cons (cons
            (read-bit) nil) nil))) (' (1 0)))
value       (success ((1) (0)) ())
 
try 0 'cons cons display read-bit nil cons cons display read-bit nil nil '(1 0)
 
expression  (try 0 (' (cons (cons (display (read-bit)) nil) (c
            ons (cons (display (read-bit)) nil) nil))) (' (1 0
            )))
value       (success ((1) (0)) (1 0))
 
try 0 'cons cons display read-bit nil cons cons display read-bit nil cons cons display read-bit nil nil
      '(1 0)
 
expression  (try 0 (' (cons (cons (display (read-bit)) nil) (c
            ons (cons (display (read-bit)) nil) (cons (cons (d
            isplay (read-bit)) nil) nil)))) (' (1 0)))
value       (failure out-of-data (1 0))
 
try 0 'read-exp display bits a
 
expression  (try 0 (' (read-exp)) (display (bits a)))
display     (0 1 1 0 0 0 0 1 0 0 0 0 1 0 1 0)
value       (success a ())
 
try 0 'read-exp display bits b
 
expression  (try 0 (' (read-exp)) (display (bits b)))
display     (0 1 1 0 0 0 1 0 0 0 0 0 1 0 1 0)
value       (success b ())
 
try 0 'read-exp display bits c
 
expression  (try 0 (' (read-exp)) (display (bits c)))
display     (0 1 1 0 0 0 1 1 0 0 0 0 1 0 1 0)
value       (success c ())
 
try 0 'read-exp display bits d
 
expression  (try 0 (' (read-exp)) (display (bits d)))
display     (0 1 1 0 0 1 0 0 0 0 0 0 1 0 1 0)
value       (success d ())
 
try 0 'read-exp display bits e
 
expression  (try 0 (' (read-exp)) (display (bits e)))
display     (0 1 1 0 0 1 0 1 0 0 0 0 1 0 1 0)
value       (success e ())
 
try 0 'read-exp bits '(aa bb cc dd ee)
 
expression  (try 0 (' (read-exp)) (bits (' (aa bb cc dd ee))))
value       (success (aa bb cc dd ee) ())
 
try 0 'read-exp bits '(12 (3 4) 56)
 
expression  (try 0 (' (read-exp)) (bits (' (12 (3 4) 56))))
value       (success (12 (3 4) 56) ())
 
try 0 'cons read-exp cons read-exp nil
      append bits '(abc def) bits '(ghi jkl)
 
expression  (try 0 (' (cons (read-exp) (cons (read-exp) nil)))
             (append (bits (' (abc def))) (bits (' (ghi jkl)))
            ))
value       (success ((abc def) (ghi jkl)) ())
 
[]
[Here is the self-delimiting universal Turing machine!]
[(with slightly funny handling of out-of-tape condition)]
[]
define (U p) cadr try no-time-limit 'eval read-exp p
 
define      U
value       (lambda (p) (car (cdr (try no-time-limit (' (eval
            (read-exp))) p))))
 
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
 
expression  (length (bits (' ((' (lambda (loop) (loop))) (' (l
            ambda () ((' (lambda (x) ((' (lambda (y) (if (= x
            y) (cons x (loop)) nil))) (read-bit)))) (read-bit)
            )))))))
value       1104
 
(U
 append
   bits
   'let (loop) let x read-bit let y read-bit if = x y cons x (loop) nil
    (loop)
 
   '(0 0 1 1 0 0 1 1 0 1)
)
 
expression  (U (append (bits (' ((' (lambda (loop) (loop))) ('
             (lambda () ((' (lambda (x) ((' (lambda (y) (if (=
             x y) (cons x (loop)) nil))) (read-bit)))) (read-b
            it))))))) (' (0 0 1 1 0 0 1 1 0 1))))
value       (0 1 0 1)
 
(U
 append
   bits
   'let (loop) let x read-bit let y read-bit if = x y cons x (loop) nil
    (loop)
 
   '(0 0 1 1 0 0 1 1 0 0)
)
 
expression  (U (append (bits (' ((' (lambda (loop) (loop))) ('
             (lambda () ((' (lambda (x) ((' (lambda (y) (if (=
             x y) (cons x (loop)) nil))) (read-bit)))) (read-b
            it))))))) (' (0 0 1 1 0 0 1 1 0 0))))
value       out-of-data
 
[]
[The length of this bit string is the]
[constant c in H(x,y) <= H(x) + H(y) + c.]
[]
length bits '
cons eval read-exp
cons eval read-exp
     nil
 
expression  (length (bits (' (cons (eval (read-exp)) (cons (ev
            al (read-exp)) nil)))))
value       432
 
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
 
expression  (U (append (bits (' (cons (eval (read-exp)) (cons
            (eval (read-exp)) nil)))) (append (bits (' ((' (la
            mbda (f) (f))) (' (lambda () ((' (lambda (x) ((' (
            lambda (y) (if (= x y) (cons x (f)) nil))) (read-b
            it)))) (read-bit))))))) (append (' (0 0 1 1 0 0 1
            1 0 1)) (append (bits (' ((' (lambda (f) (f))) ('
            (lambda () ((' (lambda (x) ((' (lambda (y) (if (=
            x y) (cons x (f)) nil))) (read-bit)))) (read-bit))
            ))))) (' (1 1 0 0 1 1 0 0 0 1)))))))
value       ((0 1 0 1) (1 0 1 0))
 
[]
[The length of this bit string is the]
[constant c in H(x) <= |x| + H(|x|) + c]
[]
length bits '
let (loop k)
   if = 0 k nil
   cons read-bit (loop - k 1)
(loop debug base2-to-10 eval debug read-exp)
 
expression  (length (bits (' ((' (lambda (loop) (loop (debug (
            base2-to-10 (eval (debug (read-exp)))))))) (' (lam
            bda (k) (if (= 0 k) nil (cons (read-bit) (loop (-
            k 1))))))))))
value       1152
 
(U
 append
   bits '
   let (loop k) if = 0 k nil cons read-bit (loop - k 1)
   (loop debug base2-to-10 eval debug read-exp)
 append
  bits ''(1 0 0 0) [Arbitrary program for U to compute number of bits.]
 
   '(0 0 0 0  0 0 0 1) [That many bits of data.]
)
 
expression  (U (append (bits (' ((' (lambda (loop) (loop (debu
            g (base2-to-10 (eval (debug (read-exp)))))))) (' (
            lambda (k) (if (= 0 k) nil (cons (read-bit) (loop
            (- k 1))))))))) (append (bits (' (' (1 0 0 0)))) (
            ' (0 0 0 0 0 0 0 1)))))
debug       (' (1 0 0 0))
debug       8
value       (0 0 0 0 0 0 0 1)
 
End of LISP Run
 
Elapsed time is 0 seconds.
