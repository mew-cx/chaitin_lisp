LISP Interpreter Run

[[[
 Show that
    H(Omega_n) > n - 8000.
 Omega_n is the first n bits of Omega,
 where we choose
    Omega = xxx0111111...
 instead of
    Omega = xxx1000000...
 if necessary.
]]]
 
[Here is the prefix.]
 
define pi
 
let (count-halt prefix bits-left-to-extend)
    if = bits-left-to-extend 0
    if = success car try t 'eval read-exp prefix
       1 0
    + (count-halt append prefix '(0) - bits-left-to-extend 1)
      (count-halt append prefix '(1) - bits-left-to-extend 1)
 
let (omega t) cons (count-halt nil t)
              cons /
              cons ^ 2 t
                   nil
 
let w eval read-exp
 
let n length w
 
let w cons base2-to-10 w
      cons /
      cons ^ 2 n
           nil
 
let (loop t)
  if (<=rat w (omega t))
     (big nil n)
     (loop + t 1)
 
let (<=rat x y)
    <= * car x caddr y * caddr x car y
 
let (big prefix bits-left-to-add)
 if = 0 bits-left-to-add
 cons cadr try t 'eval read-exp prefix
      nil
 append (big append prefix '(0) - bits-left-to-add 1)
        (big append prefix '(1) - bits-left-to-add 1)
 
(loop 0)

define      pi
value       ((' (lambda (count-halt) ((' (lambda (omega) ((' (
            lambda (w) ((' (lambda (n) ((' (lambda (w) ((' (la
            mbda (loop) ((' (lambda (<=rat) ((' (lambda (big) 
            (loop 0))) (' (lambda (prefix bits-left-to-add) (i
            f (= 0 bits-left-to-add) (cons (car (cdr (try t ('
             (eval (read-exp))) prefix))) nil) (append (big (a
            ppend prefix (' (0))) (- bits-left-to-add 1)) (big
             (append prefix (' (1))) (- bits-left-to-add 1))))
            ))))) (' (lambda (x y) (<= (* (car x) (car (cdr (c
            dr y)))) (* (car (cdr (cdr x))) (car y)))))))) (' 
            (lambda (t) (if (<=rat w (omega t)) (big nil n) (l
            oop (+ t 1)))))))) (cons (base2-to-10 w) (cons / (
            cons (^ 2 n) nil)))))) (length w)))) (eval (read-e
            xp))))) (' (lambda (t) (cons (count-halt nil t) (c
            ons / (cons (^ 2 t) nil)))))))) (' (lambda (prefix
             bits-left-to-extend) (if (= bits-left-to-extend 0
            ) (if (= success (car (try t (' (eval (read-exp)))
             prefix))) 1 0) (+ (count-halt (append prefix (' (
            0))) (- bits-left-to-extend 1)) (count-halt (appen
            d prefix (' (1))) (- bits-left-to-extend 1)))))))

[Run pi.]
cadr try no-time-limit 'eval read-exp
append bits pi
       bits '
      [Program to compute first n = 8 bits of Omega]
            '(0 0 0 0  0 0 0 1)

expression  (car (cdr (try no-time-limit (' (eval (read-exp)))
             (append (bits pi) (bits (' (' (0 0 0 0 0 0 0 1)))
            )))))
value       (out-of-data out-of-data out-of-data out-of-data o
            ut-of-data out-of-data out-of-data out-of-data out
            -of-data out-of-data () out-of-data out-of-data ou
            t-of-data out-of-data out-of-data out-of-data out-
            of-data out-of-data out-of-data out-of-data out-of
            -data out-of-data out-of-data out-of-data out-of-d
            ata out-of-data out-of-data out-of-data out-of-dat
            a out-of-data out-of-data out-of-data out-of-data 
            out-of-data out-of-data out-of-data out-of-data ou
            t-of-data out-of-data out-of-data out-of-data out-
            of-data out-of-data out-of-data out-of-data out-of
            -data out-of-data out-of-data out-of-data out-of-d
            ata out-of-data out-of-data out-of-data out-of-dat
            a out-of-data out-of-data out-of-data out-of-data 
            out-of-data out-of-data out-of-data out-of-data ou
            t-of-data out-of-data out-of-data out-of-data out-
            of-data out-of-data out-of-data out-of-data out-of
            -data out-of-data out-of-data out-of-data out-of-d
            ata out-of-data out-of-data out-of-data out-of-dat
            a out-of-data out-of-data out-of-data out-of-data 
            out-of-data out-of-data out-of-data out-of-data ou
            t-of-data out-of-data out-of-data out-of-data out-
            of-data out-of-data out-of-data out-of-data out-of
            -data out-of-data out-of-data out-of-data out-of-d
            ata out-of-data out-of-data out-of-data out-of-dat
            a out-of-data out-of-data out-of-data out-of-data 
            out-of-data out-of-data out-of-data out-of-data ou
            t-of-data out-of-data out-of-data out-of-data out-
            of-data out-of-data out-of-data out-of-data out-of
            -data out-of-data out-of-data out-of-data out-of-d
            ata out-of-data out-of-data out-of-data out-of-dat
            a out-of-data out-of-data out-of-data out-of-data 
            out-of-data out-of-data out-of-data out-of-data ou
            t-of-data out-of-data out-of-data out-of-data out-
            of-data out-of-data out-of-data out-of-data out-of
            -data out-of-data out-of-data out-of-data out-of-d
            ata out-of-data out-of-data out-of-data out-of-dat
            a out-of-data out-of-data out-of-data out-of-data 
            out-of-data out-of-data out-of-data out-of-data ou
            t-of-data out-of-data out-of-data out-of-data out-
            of-data out-of-data out-of-data out-of-data out-of
            -data out-of-data out-of-data out-of-data out-of-d
            ata out-of-data out-of-data out-of-data out-of-dat
            a out-of-data out-of-data out-of-data out-of-data 
            out-of-data out-of-data out-of-data out-of-data ou
            t-of-data out-of-data out-of-data out-of-data out-
            of-data out-of-data out-of-data out-of-data out-of
            -data out-of-data out-of-data out-of-data out-of-d
            ata out-of-data out-of-data out-of-data out-of-dat
            a out-of-data out-of-data out-of-data out-of-data 
            out-of-data out-of-data out-of-data out-of-data ou
            t-of-data out-of-data out-of-data out-of-data out-
            of-data out-of-data out-of-data out-of-data out-of
            -data out-of-data out-of-data out-of-data out-of-d
            ata out-of-data out-of-data out-of-data out-of-dat
            a out-of-data out-of-data out-of-data out-of-data 
            out-of-data out-of-data out-of-data out-of-data ou
            t-of-data out-of-data out-of-data out-of-data out-
            of-data out-of-data out-of-data out-of-data out-of
            -data out-of-data out-of-data out-of-data out-of-d
            ata out-of-data out-of-data out-of-data out-of-dat
            a out-of-data)

[Size pi.]
length bits pi

expression  (length (bits pi))
value       8000

End of LISP Run

Elapsed time is 1 seconds.
