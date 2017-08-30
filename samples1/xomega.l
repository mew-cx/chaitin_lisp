[omega.l]
 
[Omega in the limit from below!]
 
[Generate all bit strings of length k.]
define (all-bit-strings-of-size k)
    if = 0 k '(())
    (extend-by-one-bit (all-bit-strings-of-size - k 1))
[Append 0 and 1 to each element of list.]
define (extend-by-one-bit x)
    if atom x nil
    cons append car x '(0)
    cons append car x '(1)
    (extend-by-one-bit cdr x)
(extend-by-one-bit'((a)(b)))
(all-bit-strings-of-size 0)
(all-bit-strings-of-size 1)
(all-bit-strings-of-size 2)
(all-bit-strings-of-size 3)
[Count programs in list p that halt within time t.]
define (count-halt p t)
    if atom p 0
    +
    if = success display car try t 'eval debug read-exp car p
       1 0
    (count-halt cdr p t)
(count-halt cons bits '+ 10 15
            cons bits 'let(f)(f)(f)
                 nil
 99)
(count-halt cons append bits 'read-bit '(1)
            cons append bits 'read-exp '(1)
                 nil
 99)
[The kth lower bound on Omega]
[is the number of k-bit strings that halt on U within time k]
[divided by 2 raised to the power k.]
define (omega k) cons (count-halt (all-bit-strings-of-size k) k)
                 cons /
                 cons ^ 2 k
                      nil
(omega 0)
(omega 1)
(omega 2)
(omega 3)
(omega 8)
