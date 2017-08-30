[[[[ Omega in the limit from below! ]]]]
 
define (all-bit-strings-of-size k)
    if = 0 k '(())
    (extend-by-one-bit (all-bit-strings-of-size - k 1))
define (extend-by-one-bit x)
    if atom x nil
    cons append car x '(0)
    cons append car x '(1)
    (extend-by-one-bit cdr x)
define (count-halt p)
    if atom p 0
    +
    if = success car try t 'eval read-exp car p
       1 0
    (count-halt cdr p)
define (omega t) cons (count-halt (all-bit-strings-of-size t))
                 cons /
                 cons ^ 2 t
                      nil
(omega 0)
(omega 1)
(omega 2)
(omega 3)
(omega 8)
