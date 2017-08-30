LISP Interpreter Run

[[[[ Omega in the limit from below! ]]]]
 
define (all-bit-strings-of-size k)
    if = 0 k '(())
    (extend-by-one-bit (all-bit-strings-of-size - k 1))

define      all-bit-strings-of-size
value       (lambda (k) (if (= 0 k) (' (())) (extend-by-one-bi
            t (all-bit-strings-of-size (- k 1)))))

define (extend-by-one-bit x)
    if atom x nil
    cons append car x '(0)
    cons append car x '(1)
    (extend-by-one-bit cdr x)

define      extend-by-one-bit
value       (lambda (x) (if (atom x) nil (cons (append (car x)
             (' (0))) (cons (append (car x) (' (1))) (extend-b
            y-one-bit (cdr x))))))

define (count-halt p)
    if atom p 0
    +
    if = success car try t 'eval read-exp car p
       1 0
    (count-halt cdr p)

define      count-halt
value       (lambda (p) (if (atom p) 0 (+ (if (= success (car 
            (try t (' (eval (read-exp))) (car p)))) 1 0) (coun
            t-halt (cdr p)))))

define (omega t) cons (count-halt (all-bit-strings-of-size t))
                 cons /
                 cons ^ 2 t
                      nil

define      omega
value       (lambda (t) (cons (count-halt (all-bit-strings-of-
            size t)) (cons / (cons (^ 2 t) nil))))

(omega 0)

expression  (omega 0)
value       (0 / 1)

(omega 1)

expression  (omega 1)
value       (0 / 2)

(omega 2)

expression  (omega 2)
value       (0 / 4)

(omega 3)

expression  (omega 3)
value       (0 / 8)

(omega 8)

expression  (omega 8)
value       (1 / 256)

End of LISP Run

Elapsed time is 0 seconds.
