LISP Interpreter Run
 
[omega.l]
 
[Omega in the limit from below!]
 
[Generate all bit strings of length k.]
define (all-bit-strings-of-size k)
    if = 0 k '(())
    (extend-by-one-bit (all-bit-strings-of-size - k 1))
 
define      all-bit-strings-of-size
value       (lambda (k) (if (= 0 k) (' (())) (extend-by-one-bi
            t (all-bit-strings-of-size (- k 1)))))
 
[Append 0 and 1 to each element of list.]
define (extend-by-one-bit x)
    if atom x nil
    cons append car x '(0)
    cons append car x '(1)
    (extend-by-one-bit cdr x)
 
define      extend-by-one-bit
value       (lambda (x) (if (atom x) nil (cons (append (car x)
             (' (0))) (cons (append (car x) (' (1))) (extend-b
            y-one-bit (cdr x))))))
 
(extend-by-one-bit'((a)(b)))
 
expression  (extend-by-one-bit (' ((a) (b))))
value       ((a 0) (a 1) (b 0) (b 1))
 
(all-bit-strings-of-size 0)
 
expression  (all-bit-strings-of-size 0)
value       (())
 
(all-bit-strings-of-size 1)
 
expression  (all-bit-strings-of-size 1)
value       ((0) (1))
 
(all-bit-strings-of-size 2)
 
expression  (all-bit-strings-of-size 2)
value       ((0 0) (0 1) (1 0) (1 1))
 
(all-bit-strings-of-size 3)
 
expression  (all-bit-strings-of-size 3)
value       ((0 0 0) (0 0 1) (0 1 0) (0 1 1) (1 0 0) (1 0 1) (
            1 1 0) (1 1 1))
 
[Count programs in list p that halt within time t.]
define (count-halt p t)
    if atom p 0
    +
    if = success display car try t 'eval debug read-exp car p
       1 0
    (count-halt cdr p t)
 
define      count-halt
value       (lambda (p t) (if (atom p) 0 (+ (if (= success (di
            splay (car (try t (' (eval (debug (read-exp)))) (c
            ar p))))) 1 0) (count-halt (cdr p) t))))
 
(count-halt cons bits '+ 10 15
            cons bits 'let(f)(f)(f)
                 nil
 99)
 
expression  (count-halt (cons (bits (' (+ 10 15))) (cons (bits
             (' ((' (lambda (f) (f))) (' (lambda () (f)))))) n
            il)) 99)
debug       (+ 10 15)
display     success
debug       ((' (lambda (f) (f))) (' (lambda () (f))))
display     failure
value       1
 
(count-halt cons append bits 'read-bit '(1)
            cons append bits 'read-exp '(1)
                 nil
 99)
 
expression  (count-halt (cons (append (bits (' (read-bit))) ('
             (1))) (cons (append (bits (' (read-exp))) (' (1))
            ) nil)) 99)
debug       (read-bit)
display     success
debug       (read-exp)
display     failure
value       1
 
[The kth lower bound on Omega]
[is the number of k-bit strings that halt on U within time k]
[divided by 2 raised to the power k.]
define (omega k) cons (count-halt (all-bit-strings-of-size k) k)
                 cons /
                 cons ^ 2 k
                      nil
 
define      omega
value       (lambda (k) (cons (count-halt (all-bit-strings-of-
            size k) k) (cons / (cons (^ 2 k) nil))))
 
(omega 0)
 
expression  (omega 0)
display     failure
value       (0 / 1)
 
(omega 1)
 
expression  (omega 1)
display     failure
display     failure
value       (0 / 2)
 
(omega 2)
 
expression  (omega 2)
display     failure
display     failure
display     failure
display     failure
value       (0 / 4)
 
(omega 3)
 
expression  (omega 3)
display     failure
display     failure
display     failure
display     failure
display     failure
display     failure
display     failure
display     failure
value       (0 / 8)
 
(omega 8)
 
expression  (omega 8)
display     failure
display     failure
display     failure
display     failure
display     failure
display     failure
display     failure
display     failure
display     failure
display     failure
debug       ()
display     success
display     failure
display     failure
display     failure
display     failure
display     failure
display     failure
display     failure
display     failure
display     failure
display     failure
display     failure
display     failure
display     failure
display     failure
display     failure
display     failure
display     failure
display     failure
display     failure
display     failure
display     failure
display     failure
display     failure
display     failure
display     failure
display     failure
display     failure
display     failure
display     failure
display     failure
display     failure
display     failure
display     failure
display     failure
display     failure
display     failure
display     failure
display     failure
display     failure
display     failure
display     failure
display     failure
display     failure
display     failure
display     failure
display     failure
display     failure
display     failure
display     failure
display     failure
display     failure
display     failure
display     failure
display     failure
display     failure
display     failure
display     failure
display     failure
display     failure
display     failure
display     failure
display     failure
display     failure
display     failure
display     failure
display     failure
display     failure
display     failure
display     failure
display     failure
display     failure
display     failure
display     failure
display     failure
display     failure
display     failure
display     failure
display     failure
display     failure
display     failure
display     failure
display     failure
display     failure
display     failure
display     failure
display     failure
display     failure
display     failure
display     failure
display     failure
display     failure
display     failure
display     failure
display     failure
display     failure
display     failure
display     failure
display     failure
display     failure
display     failure
display     failure
display     failure
display     failure
display     failure
display     failure
display     failure
display     failure
display     failure
display     failure
display     failure
display     failure
display     failure
display     failure
display     failure
display     failure
display     failure
display     failure
display     failure
display     failure
display     failure
display     failure
display     failure
display     failure
display     failure
display     failure
display     failure
display     failure
display     failure
display     failure
display     failure
display     failure
display     failure
display     failure
display     failure
display     failure
display     failure
display     failure
display     failure
display     failure
display     failure
display     failure
display     failure
display     failure
display     failure
display     failure
display     failure
display     failure
display     failure
display     failure
display     failure
display     failure
display     failure
display     failure
display     failure
display     failure
display     failure
display     failure
display     failure
display     failure
display     failure
display     failure
display     failure
display     failure
display     failure
display     failure
display     failure
display     failure
display     failure
display     failure
display     failure
display     failure
display     failure
display     failure
display     failure
display     failure
display     failure
display     failure
display     failure
display     failure
display     failure
display     failure
display     failure
display     failure
display     failure
display     failure
display     failure
display     failure
display     failure
display     failure
display     failure
display     failure
display     failure
display     failure
display     failure
display     failure
display     failure
display     failure
display     failure
display     failure
display     failure
display     failure
display     failure
display     failure
display     failure
display     failure
display     failure
display     failure
display     failure
display     failure
display     failure
display     failure
display     failure
display     failure
display     failure
display     failure
display     failure
display     failure
display     failure
display     failure
display     failure
display     failure
display     failure
display     failure
display     failure
display     failure
display     failure
display     failure
display     failure
display     failure
display     failure
display     failure
display     failure
display     failure
display     failure
display     failure
display     failure
display     failure
display     failure
display     failure
display     failure
display     failure
display     failure
display     failure
display     failure
display     failure
value       (1 / 256)
 
End of LISP Run
 
Elapsed time is 1 seconds.
