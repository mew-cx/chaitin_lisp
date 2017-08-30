LISP Interpreter Run
 
[omega3.l]
 
[Show that]
[   H(Omega_n) > n - 9488.]
[Omega_n is the first n bits of Omega,]
[where we choose]
[   Omega = xxx0111111...]
[instead of]
[   Omega = xxx1000000...]
[if necessary.]
 
[This is an identity function with the size-effect of]
[displaying the length in bits of the binary prefix.]
define (display-length-of-prefix prefix)
    cadr cons display length prefix cons prefix nil
 
define      display-length-of-prefix
value       (lambda (prefix) (car (cdr (cons (display (length
            prefix)) (cons prefix nil)))))
 
 
cadr try no-time-limit 'eval read-exp [Universal Turing machine U ---]
 
display
[--- followed by its program.]
append [Append prefix and data.]
 
[Code to display size of prefix in bits.]
(display-length-of-prefix bits '
 
[]
[Omega2.l follows.]
[]
 
let (count-halt prefix time bits-left-to-extend)
    if = bits-left-to-extend 0
    if = success car try time 'eval read-exp prefix
       1 0
    + (count-halt append prefix '(0) time - bits-left-to-extend 1)
      (count-halt append prefix '(1) time - bits-left-to-extend 1)
 
let (omega k) cons (count-halt nil k k)
              cons /
              cons ^ 2 k
                   nil
 
[]
[Read and execute from remainder of tape]
[a program to compute an n-bit]
[initial piece of Omega.]
[]
let w debug eval debug read-exp
 
[]
[Convert Omega to ratio of integers,]
[i.e., from a bit string to a rational number.]
[]
let n length w
let w debug cons base2-to-10 w
            cons /
            cons ^ 2 n
                 nil
                                     []
let (loop k)                         [Main Loop ---]
  let x debug (omega debug k)        [Compute the kth lower bound on Omega.]
  if debug (<=rat w x) (big nil k n) [Are the first n bits OK?  If not, bump k.]
     (loop + k 1)                    [If so, form the union of all output of n-bit]
                                     [programs within time k, output it, and halt.]
                                     [All n-bit programs that ever halt halt by time k.]
                                     [Thus this union is bigger than anything of complexity]
                                     [less than or equal to n!]
[                                    ]
[This total output will be bigger than each individual output,]
[and therefore must come from a program with more than n bits.]
[Therefore this program itself must be more than n bits long.]
[I.e., 9488 + H(Omega_n) > n. Q.E.D.]
[]
 
[Compare two rational numbers, i.e., is x= (a / b) <= y= (c / d)?]
let (<=rat x y)
    let a car debug x
    let b caddr x
    let c car debug y
    let d caddr y
    <= * a d * b c
 
[Union of all output of n-bit programs within time k.]
let (big prefix time bits-left-to-add)
 if = 0 bits-left-to-add
 try time 'eval read-exp prefix
 append (big append prefix '(0) time - bits-left-to-add 1)
        (big append prefix '(1) time - bits-left-to-add 1)
 
(loop 0)         [Start main loop running with k = 0.]
 
)  [end of prefix]
 
bits '           [Here is the data: an optimal program to compute n bits of Omega.]
 
'(0 0 0 0  0 0 0 1)       [n = 8! Are these really the first 8 bits of Omega?]
 
expression  (car (cdr (try no-time-limit (' (eval (read-exp)))
             (display (append (display-length-of-prefix (bits
            (' ((' (lambda (count-halt) ((' (lambda (omega) ((
            ' (lambda (w) ((' (lambda (n) ((' (lambda (w) (('
            (lambda (loop) ((' (lambda (<=rat) ((' (lambda (bi
            g) (loop 0))) (' (lambda (prefix time bits-left-to
            -add) (if (= 0 bits-left-to-add) (try time (' (eva
            l (read-exp))) prefix) (append (big (append prefix
             (' (0))) time (- bits-left-to-add 1)) (big (appen
            d prefix (' (1))) time (- bits-left-to-add 1))))))
            ))) (' (lambda (x y) ((' (lambda (a) ((' (lambda (
            b) ((' (lambda (c) ((' (lambda (d) (<= (* a d) (*
            b c)))) (car (cdr (cdr y)))))) (car (debug y)))))
            (car (cdr (cdr x)))))) (car (debug x)))))))) (' (l
            ambda (k) ((' (lambda (x) (if (debug (<=rat w x))
            (big nil k n) (loop (+ k 1))))) (debug (omega (deb
            ug k))))))))) (debug (cons (base2-to-10 w) (cons /
             (cons (^ 2 n) nil))))))) (length w)))) (debug (ev
            al (debug (read-exp))))))) (' (lambda (k) (cons (c
            ount-halt nil k k) (cons / (cons (^ 2 k) nil))))))
            )) (' (lambda (prefix time bits-left-to-extend) (i
            f (= bits-left-to-extend 0) (if (= success (car (t
            ry time (' (eval (read-exp))) prefix))) 1 0) (+ (c
            ount-halt (append prefix (' (0))) time (- bits-lef
            t-to-extend 1)) (count-halt (append prefix (' (1))
            ) time (- bits-left-to-extend 1)))))))))) (bits ('
             (' (0 0 0 0 0 0 0 1)))))))))
display     9488
display     (0 0 1 0 1 0 0 0 0 0 1 0 1 0 0 0 0 0 1 0 0 1 1 1 0
             0 1 0 0 0 0 0 0 0 1 0 1 0 0 0 0 1 1 0 1 1 0 0 0 1
             1 0 0 0 0 1 0 1 1 0 1 1 0 1 0 1 1 0 0 0 1 0 0 1 1
             0 0 1 0 0 0 1 1 0 0 0 0 1 0 0 1 0 0 0 0 0 0 0 1 0
             1 0 0 0 0 1 1 0 0 0 1 1 0 1 1 0 1 1 1 1 0 1 1 1 0
             1 0 1 0 1 1 0 1 1 1 0 0 1 1 1 0 1 0 0 0 0 1 0 1 1
             0 1 0 1 1 0 1 0 0 0 0 1 1 0 0 0 0 1 0 1 1 0 1 1 0
             0 0 1 1 1 0 1 0 0 0 0 1 0 1 0 0 1 0 0 1 0 0 0 0 0
             0 0 1 0 1 0 0 0 0 0 1 0 1 0 0 0 0 0 1 0 0 1 1 1 0
             0 1 0 0 0 0 0 0 0 1 0 1 0 0 0 0 1 1 0 1 1 0 0 0 1
             1 0 0 0 0 1 0 1 1 0 1 1 0 1 0 1 1 0 0 0 1 0 0 1 1
             0 0 1 0 0 0 1 1 0 0 0 0 1 0 0 1 0 0 0 0 0 0 0 1 0
             1 0 0 0 0 1 1 0 1 1 1 1 0 1 1 0 1 1 0 1 0 1 1 0 0
             1 0 1 0 1 1 0 0 1 1 1 0 1 1 0 0 0 0 1 0 0 1 0 1 0
             0 1 0 0 1 0 0 0 0 0 0 0 1 0 1 0 0 0 0 0 1 0 1 0 0
             0 0 0 1 0 0 1 1 1 0 0 1 0 0 0 0 0 0 0 1 0 1 0 0 0
             0 1 1 0 1 1 0 0 0 1 1 0 0 0 0 1 0 1 1 0 1 1 0 1 0
             1 1 0 0 0 1 0 0 1 1 0 0 1 0 0 0 1 1 0 0 0 0 1 0 0
             1 0 0 0 0 0 0 0 1 0 1 0 0 0 0 1 1 1 0 1 1 1 0 0 1
             0 1 0 0 1 0 0 1 0 0 0 0 0 0 0 1 0 1 0 0 0 0 0 1 0
             1 0 0 0 0 0 1 0 0 1 1 1 0 0 1 0 0 0 0 0 0 0 1 0 1
             0 0 0 0 1 1 0 1 1 0 0 0 1 1 0 0 0 0 1 0 1 1 0 1 1
             0 1 0 1 1 0 0 0 1 0 0 1 1 0 0 1 0 0 0 1 1 0 0 0 0
             1 0 0 1 0 0 0 0 0 0 0 1 0 1 0 0 0 0 1 1 0 1 1 1 0
             0 0 1 0 1 0 0 1 0 0 1 0 0 0 0 0 0 0 1 0 1 0 0 0 0
             0 1 0 1 0 0 0 0 0 1 0 0 1 1 1 0 0 1 0 0 0 0 0 0 0
             1 0 1 0 0 0 0 1 1 0 1 1 0 0 0 1 1 0 0 0 0 1 0 1 1
             0 1 1 0 1 0 1 1 0 0 0 1 0 0 1 1 0 0 1 0 0 0 1 1 0
             0 0 0 1 0 0 1 0 0 0 0 0 0 0 1 0 1 0 0 0 0 1 1 1 0
             1 1 1 0 0 1 0 1 0 0 1 0 0 1 0 0 0 0 0 0 0 1 0 1 0
             0 0 0 0 1 0 1 0 0 0 0 0 1 0 0 1 1 1 0 0 1 0 0 0 0
             0 0 0 1 0 1 0 0 0 0 1 1 0 1 1 0 0 0 1 1 0 0 0 0 1
             0 1 1 0 1 1 0 1 0 1 1 0 0 0 1 0 0 1 1 0 0 1 0 0 0
             1 1 0 0 0 0 1 0 0 1 0 0 0 0 0 0 0 1 0 1 0 0 0 0 1
             1 0 1 1 0 0 0 1 1 0 1 1 1 1 0 1 1 0 1 1 1 1 0 1 1
             1 0 0 0 0 0 0 1 0 1 0 0 1 0 0 1 0 0 0 0 0 0 0 1 0
             1 0 0 0 0 0 1 0 1 0 0 0 0 0 1 0 0 1 1 1 0 0 1 0 0
             0 0 0 0 0 1 0 1 0 0 0 0 1 1 0 1 1 0 0 0 1 1 0 0 0
             0 1 0 1 1 0 1 1 0 1 0 1 1 0 0 0 1 0 0 1 1 0 0 1 0
             0 0 1 1 0 0 0 0 1 0 0 1 0 0 0 0 0 0 0 1 0 1 0 0 0
             0 0 1 1 1 1 0 0 0 0 1 1 1 1 0 1 0 1 1 1 0 0 1 0 0
             1 1 0 0 0 0 1 0 1 1 1 0 1 0 0 0 0 1 0 1 0 0 1 0 0
             1 0 0 0 0 0 0 0 1 0 1 0 0 0 0 0 1 0 1 0 0 0 0 0 1
             0 0 1 1 1 0 0 1 0 0 0 0 0 0 0 1 0 1 0 0 0 0 1 1 0
             1 1 0 0 0 1 1 0 0 0 0 1 0 1 1 0 1 1 0 1 0 1 1 0 0
             0 1 0 0 1 1 0 0 1 0 0 0 1 1 0 0 0 0 1 0 0 1 0 0 0
             0 0 0 0 1 0 1 0 0 0 0 1 1 0 0 0 1 0 0 1 1 0 1 0 0
             1 0 1 1 0 0 1 1 1 0 0 1 0 1 0 0 1 0 0 1 0 0 0 0 0
             0 0 1 0 1 0 0 0 0 1 1 0 1 1 0 0 0 1 1 0 1 1 1 1 0
             1 1 0 1 1 1 1 0 1 1 1 0 0 0 0 0 0 1 0 0 0 0 0 0 0
             1 1 0 0 0 0 0 0 1 0 1 0 0 1 0 0 1 0 1 0 0 1 0 0 1
             0 1 0 0 1 0 0 1 0 0 0 0 0 0 0 1 0 1 0 0 0 0 0 1 0
             0 1 1 1 0 0 1 0 0 0 0 0 0 0 1 0 1 0 0 0 0 1 1 0 1
             1 0 0 0 1 1 0 0 0 0 1 0 1 1 0 1 1 0 1 0 1 1 0 0 0
             1 0 0 1 1 0 0 1 0 0 0 1 1 0 0 0 0 1 0 0 1 0 0 0 0
             0 0 0 1 0 1 0 0 0 0 1 1 1 0 0 0 0 0 1 1 1 0 0 1 0
             0 1 1 0 0 1 0 1 0 1 1 0 0 1 1 0 0 1 1 0 1 0 0 1 0
             1 1 1 1 0 0 0 0 0 1 0 0 0 0 0 0 1 1 1 0 1 0 0 0 1
             1 0 1 0 0 1 0 1 1 0 1 1 0 1 0 1 1 0 0 1 0 1 0 0 1
             0 0 0 0 0 0 1 1 0 0 0 1 0 0 1 1 0 1 0 0 1 0 1 1 1
             0 1 0 0 0 1 1 1 0 0 1 1 0 0 1 0 1 1 0 1 0 1 1 0 1
             1 0 0 0 1 1 0 0 1 0 1 0 1 1 0 0 1 1 0 0 1 1 1 0 1
             0 0 0 0 1 0 1 1 0 1 0 1 1 1 0 1 0 0 0 1 1 0 1 1 1
             1 0 0 1 0 1 1 0 1 0 1 1 0 0 0 0 1 0 1 1 0 0 1 0 0
             0 1 1 0 0 1 0 0 0 0 1 0 1 0 0 1 0 0 1 0 0 0 0 0 0
             0 1 0 1 0 0 0 0 1 1 0 1 0 0 1 0 1 1 0 0 1 1 0 0 0
             1 0 0 0 0 0 0 0 1 0 1 0 0 0 0 0 1 1 1 1 0 1 0 0 1
             0 0 0 0 0 0 0 1 1 0 0 0 0 0 0 1 0 0 0 0 0 0 1 1 0
             0 0 1 0 0 1 1 0 1 0 0 1 0 1 1 1 0 1 0 0 0 1 1 1 0
             0 1 1 0 0 1 0 1 1 0 1 0 1 1 0 1 1 0 0 0 1 1 0 0 1
             0 1 0 1 1 0 0 1 1 0 0 1 1 1 0 1 0 0 0 0 1 0 1 1 0
             1 0 1 1 1 0 1 0 0 0 1 1 0 1 1 1 1 0 0 1 0 1 1 0 1
             0 1 1 0 0 0 0 1 0 1 1 0 0 1 0 0 0 1 1 0 0 1 0 0 0
             0 1 0 1 0 0 1 0 0 1 0 0 0 0 0 0 0 1 0 1 0 0 0 0 1
             1 1 0 1 0 0 0 1 1 1 0 0 1 0 0 1 1 1 1 0 0 1 0 0 1
             0 0 0 0 0 0 1 1 1 0 1 0 0 0 1 1 0 1 0 0 1 0 1 1 0
             1 1 0 1 0 1 1 0 0 1 0 1 0 0 1 0 0 0 0 0 0 0 1 0 1
             0 0 0 0 0 1 0 0 1 1 1 0 0 1 0 0 0 0 0 0 0 1 0 1 0
             0 0 0 1 1 0 0 1 0 1 0 1 1 1 0 1 1 0 0 1 1 0 0 0 0
             1 0 1 1 0 1 1 0 0 0 0 1 0 0 0 0 0 0 0 1 0 1 0 0 0
             0 1 1 1 0 0 1 0 0 1 1 0 0 1 0 1 0 1 1 0 0 0 0 1 0
             1 1 0 0 1 0 0 0 0 1 0 1 1 0 1 0 1 1 0 0 1 0 1 0 1
             1 1 1 0 0 0 0 1 1 1 0 0 0 0 0 0 1 0 1 0 0 1 0 0 1
             0 1 0 0 1 0 0 1 0 1 0 0 1 0 0 1 0 0 0 0 0 0 1 1 1
             0 0 0 0 0 1 1 1 0 0 1 0 0 1 1 0 0 1 0 1 0 1 1 0 0
             1 1 0 0 1 1 0 1 0 0 1 0 1 1 1 1 0 0 0 0 0 1 0 1 0
             0 1 0 0 1 0 0 0 0 0 0 0 1 0 1 0 0 0 0 1 1 0 0 0 0
             1 0 1 1 1 0 0 0 0 0 1 1 1 0 0 0 0 0 1 1 0 0 1 0 1
             0 1 1 0 1 1 1 0 0 1 1 0 0 1 0 0 0 0 1 0 0 0 0 0 0
             0 1 0 1 0 0 0 0 1 1 0 0 0 1 0 0 1 1 0 1 0 0 1 0 1
             1 0 0 1 1 1 0 0 1 0 0 0 0 0 0 0 1 0 1 0 0 0 0 1 1
             0 0 0 0 1 0 1 1 1 0 0 0 0 0 1 1 1 0 0 0 0 0 1 1 0
             0 1 0 1 0 1 1 0 1 1 1 0 0 1 1 0 0 1 0 0 0 0 1 0 0
             0 0 0 0 1 1 1 0 0 0 0 0 1 1 1 0 0 1 0 0 1 1 0 0 1
             0 1 0 1 1 0 0 1 1 0 0 1 1 0 1 0 0 1 0 1 1 1 1 0 0
             0 0 0 1 0 0 0 0 0 0 0 1 0 1 0 0 0 0 0 1 0 0 1 1 1
             0 0 1 0 0 0 0 0 0 0 1 0 1 0 0 0 0 0 1 1 0 0 0 0 0
             0 1 0 1 0 0 1 0 0 1 0 1 0 0 1 0 0 1 0 1 0 0 1 0 0
             1 0 0 0 0 0 0 1 1 1 0 1 0 0 0 1 1 0 1 0 0 1 0 1 1
             0 1 1 0 1 0 1 1 0 0 1 0 1 0 0 1 0 0 0 0 0 0 0 1 0
             1 0 0 0 0 0 1 0 1 1 0 1 0 0 1 0 0 0 0 0 0 1 1 0 0
             0 1 0 0 1 1 0 1 0 0 1 0 1 1 1 0 1 0 0 0 1 1 1 0 0
             1 1 0 0 1 0 1 1 0 1 0 1 1 0 1 1 0 0 0 1 1 0 0 1 0
             1 0 1 1 0 0 1 1 0 0 1 1 1 0 1 0 0 0 0 1 0 1 1 0 1
             0 1 1 1 0 1 0 0 0 1 1 0 1 1 1 1 0 0 1 0 1 1 0 1 0
             1 1 0 0 0 0 1 0 1 1 0 0 1 0 0 0 1 1 0 0 1 0 0 0 0
             1 0 0 0 0 0 0 0 1 1 0 0 0 1 0 0 1 0 1 0 0 1 0 0 1
             0 1 0 0 1 0 0 1 0 0 0 0 0 0 0 1 0 1 0 0 0 0 1 1 0
             0 0 1 0 0 1 1 0 1 0 0 1 0 1 1 0 0 1 1 1 0 0 1 0 0
             0 0 0 0 0 1 0 1 0 0 0 0 1 1 0 0 0 0 1 0 1 1 1 0 0
             0 0 0 1 1 1 0 0 0 0 0 1 1 0 0 1 0 1 0 1 1 0 1 1 1
             0 0 1 1 0 0 1 0 0 0 0 1 0 0 0 0 0 0 1 1 1 0 0 0 0
             0 1 1 1 0 0 1 0 0 1 1 0 0 1 0 1 0 1 1 0 0 1 1 0 0
             1 1 0 1 0 0 1 0 1 1 1 1 0 0 0 0 0 1 0 0 0 0 0 0 0
             1 0 1 0 0 0 0 0 1 0 0 1 1 1 0 0 1 0 0 0 0 0 0 0 1
             0 1 0 0 0 0 0 1 1 0 0 0 1 0 0 1 0 1 0 0 1 0 0 1 0
             1 0 0 1 0 0 1 0 1 0 0 1 0 0 1 0 0 0 0 0 0 1 1 1 0
             1 0 0 0 1 1 0 1 0 0 1 0 1 1 0 1 1 0 1 0 1 1 0 0 1
             0 1 0 0 1 0 0 0 0 0 0 0 1 0 1 0 0 0 0 0 1 0 1 1 0
             1 0 0 1 0 0 0 0 0 0 1 1 0 0 0 1 0 0 1 1 0 1 0 0 1
             0 1 1 1 0 1 0 0 0 1 1 1 0 0 1 1 0 0 1 0 1 1 0 1 0
             1 1 0 1 1 0 0 0 1 1 0 0 1 0 1 0 1 1 0 0 1 1 0 0 1
             1 1 0 1 0 0 0 0 1 0 1 1 0 1 0 1 1 1 0 1 0 0 0 1 1
             0 1 1 1 1 0 0 1 0 1 1 0 1 0 1 1 0 0 0 0 1 0 1 1 0
             0 1 0 0 0 1 1 0 0 1 0 0 0 0 1 0 0 0 0 0 0 0 1 1 0
             0 0 1 0 0 1 0 1 0 0 1 0 0 1 0 1 0 0 1 0 0 1 0 1 0
             0 1 0 0 1 0 1 0 0 1 0 0 1 0 1 0 0 1 0 0 1 0 1 0 0
             1 0 0 1 0 1 0 0 1 0 0 1 0 1 0 0 1 0 0 1 0 1 0 0 1
             0 0 1 0 0 0 0 0 0 0 1 0 1 0 0 0 0 0 1 0 0 1 1 1 0
             0 1 0 0 0 0 0 0 0 1 0 1 0 0 0 0 1 1 0 1 1 0 0 0 1
             1 0 0 0 0 1 0 1 1 0 1 1 0 1 0 1 1 0 0 0 1 0 0 1 1
             0 0 1 0 0 0 1 1 0 0 0 0 1 0 0 1 0 0 0 0 0 0 0 1 0
             1 0 0 0 0 1 1 1 1 0 0 0 0 0 1 0 0 0 0 0 0 1 1 1 1
             0 0 1 0 0 1 0 1 0 0 1 0 0 1 0 0 0 0 0 0 0 1 0 1 0
             0 0 0 0 1 0 1 0 0 0 0 0 1 0 0 1 1 1 0 0 1 0 0 0 0
             0 0 0 1 0 1 0 0 0 0 1 1 0 1 1 0 0 0 1 1 0 0 0 0 1
             0 1 1 0 1 1 0 1 0 1 1 0 0 0 1 0 0 1 1 0 0 1 0 0 0
             1 1 0 0 0 0 1 0 0 1 0 0 0 0 0 0 0 1 0 1 0 0 0 0 1
             1 0 0 0 0 1 0 0 1 0 1 0 0 1 0 0 1 0 0 0 0 0 0 0 1
             0 1 0 0 0 0 0 1 0 1 0 0 0 0 0 1 0 0 1 1 1 0 0 1 0
             0 0 0 0 0 0 1 0 1 0 0 0 0 1 1 0 1 1 0 0 0 1 1 0 0
             0 0 1 0 1 1 0 1 1 0 1 0 1 1 0 0 0 1 0 0 1 1 0 0 1
             0 0 0 1 1 0 0 0 0 1 0 0 1 0 0 0 0 0 0 0 1 0 1 0 0
             0 0 1 1 0 0 0 1 0 0 0 1 0 1 0 0 1 0 0 1 0 0 0 0 0
             0 0 1 0 1 0 0 0 0 0 1 0 1 0 0 0 0 0 1 0 0 1 1 1 0
             0 1 0 0 0 0 0 0 0 1 0 1 0 0 0 0 1 1 0 1 1 0 0 0 1
             1 0 0 0 0 1 0 1 1 0 1 1 0 1 0 1 1 0 0 0 1 0 0 1 1
             0 0 1 0 0 0 1 1 0 0 0 0 1 0 0 1 0 0 0 0 0 0 0 1 0
             1 0 0 0 0 1 1 0 0 0 1 1 0 0 1 0 1 0 0 1 0 0 1 0 0
             0 0 0 0 0 1 0 1 0 0 0 0 0 1 0 1 0 0 0 0 0 1 0 0 1
             1 1 0 0 1 0 0 0 0 0 0 0 1 0 1 0 0 0 0 1 1 0 1 1 0
             0 0 1 1 0 0 0 0 1 0 1 1 0 1 1 0 1 0 1 1 0 0 0 1 0
             0 1 1 0 0 1 0 0 0 1 1 0 0 0 0 1 0 0 1 0 0 0 0 0 0
             0 1 0 1 0 0 0 0 1 1 0 0 1 0 0 0 0 1 0 1 0 0 1 0 0
             1 0 0 0 0 0 0 0 1 0 1 0 0 0 0 0 1 1 1 1 0 0 0 0 1
             1 1 1 0 1 0 0 1 0 0 0 0 0 0 0 1 0 1 0 0 0 0 0 1 0
             1 0 1 0 0 0 1 0 0 0 0 0 0 1 1 0 0 0 0 1 0 0 1 0 0
             0 0 0 0 1 1 0 0 1 0 0 0 0 1 0 1 0 0 1 0 0 1 0 0 0
             0 0 0 0 1 0 1 0 0 0 0 0 1 0 1 0 1 0 0 0 1 0 0 0 0
             0 0 1 1 0 0 0 1 0 0 0 1 0 0 0 0 0 0 1 1 0 0 0 1 1
             0 0 1 0 1 0 0 1 0 0 1 0 1 0 0 1 0 0 1 0 1 0 0 1 0
             0 1 0 1 0 0 1 0 0 1 0 0 0 0 0 0 0 1 0 1 0 0 0 0 1
             1 0 0 0 1 1 0 1 1 0 0 0 0 1 0 1 1 1 0 0 1 0 0 0 1
             0 0 0 0 0 0 0 1 0 1 0 0 0 0 1 1 0 0 0 1 1 0 1 1 0
             0 1 0 0 0 1 1 1 0 0 1 0 0 0 1 0 0 0 0 0 0 0 1 0 1
             0 0 0 0 1 1 0 0 0 1 1 0 1 1 0 0 1 0 0 0 1 1 1 0 0
             1 0 0 0 1 0 0 0 0 0 0 1 1 1 1 0 0 1 0 0 1 0 1 0 0
             1 0 0 1 0 1 0 0 1 0 0 1 0 1 0 0 1 0 0 1 0 1 0 0 1
             0 0 1 0 1 0 0 1 0 0 1 0 1 0 0 1 0 0 1 0 0 0 0 0 0
             0 1 0 1 0 0 0 0 1 1 0 0 0 1 1 0 1 1 0 0 0 0 1 0 1
             1 1 0 0 1 0 0 0 1 0 0 0 0 0 0 0 1 0 1 0 0 0 0 1 1
             0 0 1 0 0 0 1 1 0 0 1 0 1 0 1 1 0 0 0 1 0 0 1 1 1
             0 1 0 1 0 1 1 0 0 1 1 1 0 0 1 0 0 0 0 0 0 1 1 1 1
             0 0 1 0 0 1 0 1 0 0 1 0 0 1 0 1 0 0 1 0 0 1 0 1 0
             0 1 0 0 1 0 1 0 0 1 0 0 1 0 1 0 0 1 0 0 1 0 0 0 0
             0 0 0 1 0 1 0 0 0 0 1 1 0 0 0 1 1 0 1 1 0 0 0 0 1
             0 1 1 1 0 0 1 0 0 0 1 0 0 0 0 0 0 0 1 0 1 0 0 0 0
             1 1 0 0 0 1 1 0 1 1 0 0 1 0 0 0 1 1 1 0 0 1 0 0 0
             1 0 0 0 0 0 0 0 1 0 1 0 0 0 0 1 1 0 0 0 1 1 0 1 1
             0 0 1 0 0 0 1 1 1 0 0 1 0 0 0 1 0 0 0 0 0 0 1 1 1
             1 0 0 0 0 0 1 0 1 0 0 1 0 0 1 0 1 0 0 1 0 0 1 0 1
             0 0 1 0 0 1 0 1 0 0 1 0 0 1 0 1 0 0 1 0 0 1 0 1 0
             0 1 0 0 1 0 0 0 0 0 0 0 1 0 1 0 0 0 0 1 1 0 0 0 1
             1 0 1 1 0 0 0 0 1 0 1 1 1 0 0 1 0 0 0 1 0 0 0 0 0
             0 0 1 0 1 0 0 0 0 1 1 0 0 1 0 0 0 1 1 0 0 1 0 1 0
             1 1 0 0 0 1 0 0 1 1 1 0 1 0 1 0 1 1 0 0 1 1 1 0 0
             1 0 0 0 0 0 0 1 1 1 1 0 0 0 0 0 1 0 1 0 0 1 0 0 1
             0 1 0 0 1 0 0 1 0 1 0 0 1 0 0 1 0 1 0 0 1 0 0 1 0
             1 0 0 1 0 0 1 0 1 0 0 1 0 0 1 0 1 0 0 1 0 0 1 0 1
             0 0 1 0 0 1 0 0 0 0 0 0 0 1 0 1 0 0 0 0 0 1 0 0 1
             1 1 0 0 1 0 0 0 0 0 0 0 1 0 1 0 0 0 0 1 1 0 1 1 0
             0 0 1 1 0 0 0 0 1 0 1 1 0 1 1 0 1 0 1 1 0 0 0 1 0
             0 1 1 0 0 1 0 0 0 1 1 0 0 0 0 1 0 0 1 0 0 0 0 0 0
             0 1 0 1 0 0 0 0 1 1 0 1 0 1 1 0 0 1 0 1 0 0 1 0 0
             1 0 0 0 0 0 0 0 1 0 1 0 0 0 0 0 1 0 1 0 0 0 0 0 1
             0 0 1 1 1 0 0 1 0 0 0 0 0 0 0 1 0 1 0 0 0 0 1 1 0
             1 1 0 0 0 1 1 0 0 0 0 1 0 1 1 0 1 1 0 1 0 1 1 0 0
             0 1 0 0 1 1 0 0 1 0 0 0 1 1 0 0 0 0 1 0 0 1 0 0 0
             0 0 0 0 1 0 1 0 0 0 0 1 1 1 1 0 0 0 0 0 1 0 1 0 0
             1 0 0 1 0 0 0 0 0 0 0 1 0 1 0 0 0 0 1 1 0 1 0 0 1
             0 1 1 0 0 1 1 0 0 0 1 0 0 0 0 0 0 0 1 0 1 0 0 0 0
             1 1 0 0 1 0 0 0 1 1 0 0 1 0 1 0 1 1 0 0 0 1 0 0 1
             1 1 0 1 0 1 0 1 1 0 0 1 1 1 0 0 1 0 0 0 0 0 0 0 1
             0 1 0 0 0 0 0 1 1 1 1 0 0 0 0 1 1 1 1 0 1 0 1 1 1
             0 0 1 0 0 1 1 0 0 0 0 1 0 1 1 1 0 1 0 0 0 0 1 0 0
             0 0 0 0 1 1 1 0 1 1 1 0 0 1 0 0 0 0 0 0 1 1 1 1 0
             0 0 0 0 1 0 1 0 0 1 0 0 1 0 1 0 0 1 0 0 1 0 0 0 0
             0 0 0 1 0 1 0 0 0 0 1 1 0 0 0 1 0 0 1 1 0 1 0 0 1
             0 1 1 0 0 1 1 1 0 0 1 0 0 0 0 0 0 1 1 0 1 1 1 0 0
             1 1 0 1 0 0 1 0 1 1 0 1 1 0 0 0 0 1 0 0 0 0 0 0 1
             1 0 1 0 1 1 0 0 1 0 0 0 0 0 0 1 1 0 1 1 1 0 0 0 1
             0 1 0 0 1 0 0 1 0 0 0 0 0 0 0 1 0 1 0 0 0 0 1 1 0
             1 1 0 0 0 1 1 0 1 1 1 1 0 1 1 0 1 1 1 1 0 1 1 1 0
             0 0 0 0 0 1 0 0 0 0 0 0 0 1 0 1 0 0 0 0 0 1 0 1 0
             1 1 0 0 1 0 0 0 0 0 0 1 1 0 1 0 1 1 0 0 1 0 0 0 0
             0 0 0 1 1 0 0 0 1 0 0 1 0 1 0 0 1 0 0 1 0 1 0 0 1
             0 0 1 0 1 0 0 1 0 0 1 0 1 0 0 1 0 0 1 0 1 0 0 1 0
             0 1 0 0 0 0 0 0 0 1 0 1 0 0 0 0 1 1 0 0 1 0 0 0 1
             1 0 0 1 0 1 0 1 1 0 0 0 1 0 0 1 1 1 0 1 0 1 0 1 1
             0 0 1 1 1 0 0 1 0 0 0 0 0 0 0 1 0 1 0 0 0 0 1 1 0
             1 1 1 1 0 1 1 0 1 1 0 1 0 1 1 0 0 1 0 1 0 1 1 0 0
             1 1 1 0 1 1 0 0 0 0 1 0 0 1 0 0 0 0 0 0 0 1 0 1 0
             0 0 0 1 1 0 0 1 0 0 0 1 1 0 0 1 0 1 0 1 1 0 0 0 1
             0 0 1 1 1 0 1 0 1 0 1 1 0 0 1 1 1 0 0 1 0 0 0 0 0
             0 1 1 0 1 0 1 1 0 0 1 0 1 0 0 1 0 0 1 0 1 0 0 1 0
             0 1 0 1 0 0 1 0 0 1 0 1 0 0 1 0 0 1 0 1 0 0 1 0 0
             1 0 1 0 0 1 0 0 1 0 1 0 0 1 0 0 1 0 1 0 0 1 0 0 1
             0 1 0 0 1 0 0 1 0 0 0 0 0 0 0 1 0 1 0 0 0 0 1 1 0
             0 1 0 0 0 1 1 0 0 1 0 1 0 1 1 0 0 0 1 0 0 1 1 1 0
             1 0 1 0 1 1 0 0 1 1 1 0 0 1 0 0 0 0 0 0 0 1 0 1 0
             0 0 0 1 1 0 0 0 1 1 0 1 1 0 1 1 1 1 0 1 1 0 1 1 1
             0 0 1 1 1 0 0 1 1 0 0 1 0 0 0 0 0 0 0 1 0 1 0 0 0
             0 1 1 0 0 0 1 0 0 1 1 0 0 0 0 1 0 1 1 1 0 0 1 1 0
             1 1 0 0 1 0 1 0 0 1 1 0 0 1 0 0 0 1 0 1 1 0 1 0 1
             1 1 0 1 0 0 0 1 1 0 1 1 1 1 0 0 1 0 1 1 0 1 0 0 1
             1 0 0 0 1 0 0 1 1 0 0 0 0 0 0 1 0 0 0 0 0 0 1 1 1
             0 1 1 1 0 0 1 0 1 0 0 1 0 0 1 0 0 0 0 0 0 0 1 0 1
             0 0 0 0 1 1 0 0 0 1 1 0 1 1 0 1 1 1 1 0 1 1 0 1 1
             1 0 0 1 1 1 0 0 1 1 0 0 1 0 0 0 0 0 0 0 1 0 1 1 1
             1 0 0 1 0 0 0 0 0 0 0 1 0 1 0 0 0 0 1 1 0 0 0 1 1
             0 1 1 0 1 1 1 1 0 1 1 0 1 1 1 0 0 1 1 1 0 0 1 1 0
             0 1 0 0 0 0 0 0 0 1 0 1 0 0 0 0 1 0 1 1 1 1 0 0 0
             1 0 0 0 0 0 0 0 1 1 0 0 1 0 0 0 1 0 0 0 0 0 0 1 1
             0 1 1 1 0 0 0 1 0 1 0 0 1 0 0 1 0 0 0 0 0 0 1 1 0
             1 1 1 0 0 1 1 0 1 0 0 1 0 1 1 0 1 1 0 0 0 0 1 0 1
             0 0 1 0 0 1 0 1 0 0 1 0 0 1 0 1 0 0 1 0 0 1 0 1 0
             0 1 0 0 1 0 1 0 0 1 0 0 1 0 1 0 0 1 0 0 1 0 1 0 0
             1 0 0 1 0 0 0 0 0 0 0 1 0 1 0 0 0 0 1 1 0 1 1 0 0
             0 1 1 0 0 1 0 1 0 1 1 0 1 1 1 0 0 1 1 0 0 1 1 1 0
             1 1 1 0 1 0 0 0 1 1 0 1 0 0 0 0 0 1 0 0 0 0 0 0 1
             1 1 0 1 1 1 0 0 1 0 1 0 0 1 0 0 1 0 1 0 0 1 0 0 1
             0 1 0 0 1 0 0 1 0 1 0 0 1 0 0 1 0 0 0 0 0 0 0 1 0
             1 0 0 0 0 1 1 0 0 1 0 0 0 1 1 0 0 1 0 1 0 1 1 0 0
             0 1 0 0 1 1 1 0 1 0 1 0 1 1 0 0 1 1 1 0 0 1 0 0 0
             0 0 0 0 1 0 1 0 0 0 0 1 1 0 0 1 0 1 0 1 1 1 0 1 1
             0 0 1 1 0 0 0 0 1 0 1 1 0 1 1 0 0 0 0 1 0 0 0 0 0
             0 0 1 0 1 0 0 0 0 1 1 0 0 1 0 0 0 1 1 0 0 1 0 1 0
             1 1 0 0 0 1 0 0 1 1 1 0 1 0 1 0 1 1 0 0 1 1 1 0 0
             1 0 0 0 0 0 0 0 1 0 1 0 0 0 0 1 1 1 0 0 1 0 0 1 1
             0 0 1 0 1 0 1 1 0 0 0 0 1 0 1 1 0 0 1 0 0 0 0 1 0
             1 1 0 1 0 1 1 0 0 1 0 1 0 1 1 1 1 0 0 0 0 1 1 1 0
             0 0 0 0 0 1 0 1 0 0 1 0 0 1 0 1 0 0 1 0 0 1 0 1 0
             0 1 0 0 1 0 1 0 0 1 0 0 1 0 1 0 0 1 0 0 1 0 1 0 0
             1 0 0 1 0 1 0 0 1 0 0 1 0 0 0 0 0 0 0 1 0 1 0 0 0
             0 0 1 0 0 1 1 1 0 0 1 0 0 0 0 0 0 0 1 0 1 0 0 0 0
             1 1 0 1 1 0 0 0 1 1 0 0 0 0 1 0 1 1 0 1 1 0 1 0 1
             1 0 0 0 1 0 0 1 1 0 0 1 0 0 0 1 1 0 0 0 0 1 0 0 1
             0 0 0 0 0 0 0 1 0 1 0 0 0 0 1 1 0 1 0 1 1 0 0 1 0
             1 0 0 1 0 0 1 0 0 0 0 0 0 0 1 0 1 0 0 0 0 1 1 0 0
             0 1 1 0 1 1 0 1 1 1 1 0 1 1 0 1 1 1 0 0 1 1 1 0 0
             1 1 0 0 1 0 0 0 0 0 0 0 1 0 1 0 0 0 0 1 1 0 0 0 1
             1 0 1 1 0 1 1 1 1 0 1 1 1 0 1 0 1 0 1 1 0 1 1 1 0
             0 1 1 1 0 1 0 0 0 0 1 0 1 1 0 1 0 1 1 0 1 0 0 0 0
             1 1 0 0 0 0 1 0 1 1 0 1 1 0 0 0 1 1 1 0 1 0 0 0 0
             1 0 0 0 0 0 0 1 1 0 1 1 1 0 0 1 1 0 1 0 0 1 0 1 1
             0 1 1 0 0 0 0 1 0 0 0 0 0 0 1 1 0 1 0 1 1 0 0 1 0
             0 0 0 0 0 1 1 0 1 0 1 1 0 0 1 0 1 0 0 1 0 0 1 0 0
             0 0 0 0 0 1 0 1 0 0 0 0 1 1 0 0 0 1 1 0 1 1 0 1 1
             1 1 0 1 1 0 1 1 1 0 0 1 1 1 0 0 1 1 0 0 1 0 0 0 0
             0 0 0 1 0 1 1 1 1 0 0 1 0 0 0 0 0 0 0 1 0 1 0 0 0
             0 1 1 0 0 0 1 1 0 1 1 0 1 1 1 1 0 1 1 0 1 1 1 0 0
             1 1 1 0 0 1 1 0 0 1 0 0 0 0 0 0 0 1 0 1 0 0 0 0 1
             0 1 1 1 1 0 0 0 1 0 0 0 0 0 0 0 1 1 0 0 1 0 0 0 1
             0 0 0 0 0 0 1 1 0 1 0 1 1 0 0 1 0 1 0 0 1 0 0 1 0
             0 0 0 0 0 1 1 0 1 1 1 0 0 1 1 0 1 0 0 1 0 1 1 0 1
             1 0 0 0 0 1 0 1 0 0 1 0 0 1 0 1 0 0 1 0 0 1 0 1 0
             0 1 0 0 1 0 1 0 0 1 0 0 1 0 1 0 0 1 0 0 1 0 1 0 0
             1 0 0 1 0 1 0 0 1 0 0 1 0 1 0 0 1 0 0 1 0 0 0 0 0
             0 0 1 0 1 0 0 0 0 0 1 0 0 1 1 1 0 0 1 0 0 0 0 0 0
             0 1 0 1 0 0 0 0 1 1 0 1 1 0 0 0 1 1 0 0 0 0 1 0 1
             1 0 1 1 0 1 0 1 1 0 0 0 1 0 0 1 1 0 0 1 0 0 0 1 1
             0 0 0 0 1 0 0 1 0 0 0 0 0 0 0 1 0 1 0 0 0 0 1 1 1
             0 0 0 0 0 1 1 1 0 0 1 0 0 1 1 0 0 1 0 1 0 1 1 0 0
             1 1 0 0 1 1 0 1 0 0 1 0 1 1 1 1 0 0 0 0 0 1 0 0 0
             0 0 0 1 1 1 0 1 0 0 0 1 1 0 1 0 0 1 0 1 1 0 1 1 0
             1 0 1 1 0 0 1 0 1 0 0 1 0 0 0 0 0 0 1 1 0 0 0 1 0
             0 1 1 0 1 0 0 1 0 1 1 1 0 1 0 0 0 1 1 1 0 0 1 1 0
             0 1 0 1 1 0 1 0 1 1 0 1 1 0 0 0 1 1 0 0 1 0 1 0 1
             1 0 0 1 1 0 0 1 1 1 0 1 0 0 0 0 1 0 1 1 0 1 0 1 1
             1 0 1 0 0 0 1 1 0 1 1 1 1 0 0 1 0 1 1 0 1 0 1 1 0
             0 1 0 1 0 1 1 1 1 0 0 0 0 1 1 1 0 1 0 0 0 1 1 0 0
             1 0 1 0 1 1 0 1 1 1 0 0 1 1 0 0 1 0 0 0 0 1 0 1 0
             0 1 0 0 1 0 0 0 0 0 0 0 1 0 1 0 0 0 0 1 1 0 1 0 0
             1 0 1 1 0 0 1 1 0 0 0 1 0 0 0 0 0 0 0 1 0 1 0 0 0
             0 0 1 1 1 1 0 1 0 0 1 0 0 0 0 0 0 1 1 0 0 0 1 0 0
             1 1 0 1 0 0 1 0 1 1 1 0 1 0 0 0 1 1 1 0 0 1 1 0 0
             1 0 1 1 0 1 0 1 1 0 1 1 0 0 0 1 1 0 0 1 0 1 0 1 1
             0 0 1 1 0 0 1 1 1 0 1 0 0 0 0 1 0 1 1 0 1 0 1 1 1
             0 1 0 0 0 1 1 0 1 1 1 1 0 0 1 0 1 1 0 1 0 1 1 0 0
             1 0 1 0 1 1 1 1 0 0 0 0 1 1 1 0 1 0 0 0 1 1 0 0 1
             0 1 0 1 1 0 1 1 1 0 0 1 1 0 0 1 0 0 0 0 1 0 0 0 0
             0 0 0 1 1 0 0 0 0 0 0 1 0 1 0 0 1 0 0 1 0 0 0 0 0
             0 0 1 0 1 0 0 0 0 1 1 0 1 0 0 1 0 1 1 0 0 1 1 0 0
             0 1 0 0 0 0 0 0 0 1 0 1 0 0 0 0 0 1 1 1 1 0 1 0 0
             1 0 0 0 0 0 0 1 1 1 0 0 1 1 0 1 1 1 0 1 0 1 0 1 1
             0 0 0 1 1 0 1 1 0 0 0 1 1 0 1 1 0 0 1 0 1 0 1 1 1
             0 0 1 1 0 1 1 1 0 0 1 1 0 0 1 0 0 0 0 0 0 0 1 0 1
             0 0 0 0 1 1 0 0 0 1 1 0 1 1 0 0 0 0 1 0 1 1 1 0 0
             1 0 0 0 1 0 0 0 0 0 0 0 1 0 1 0 0 0 0 1 1 1 0 1 0
             0 0 1 1 1 0 0 1 0 0 1 1 1 1 0 0 1 0 0 1 0 0 0 0 0
             0 1 1 1 0 1 0 0 0 1 1 0 1 0 0 1 0 1 1 0 1 1 0 1 0
             1 1 0 0 1 0 1 0 0 1 0 0 0 0 0 0 0 1 0 1 0 0 0 0 0
             1 0 0 1 1 1 0 0 1 0 0 0 0 0 0 0 1 0 1 0 0 0 0 1 1
             0 0 1 0 1 0 1 1 1 0 1 1 0 0 1 1 0 0 0 0 1 0 1 1 0
             1 1 0 0 0 0 1 0 0 0 0 0 0 0 1 0 1 0 0 0 0 1 1 1 0
             0 1 0 0 1 1 0 0 1 0 1 0 1 1 0 0 0 0 1 0 1 1 0 0 1
             0 0 0 0 1 0 1 1 0 1 0 1 1 0 0 1 0 1 0 1 1 1 1 0 0
             0 0 1 1 1 0 0 0 0 0 0 1 0 1 0 0 1 0 0 1 0 1 0 0 1
             0 0 1 0 1 0 0 1 0 0 1 0 0 0 0 0 0 1 1 1 0 0 0 0 0
             1 1 1 0 0 1 0 0 1 1 0 0 1 0 1 0 1 1 0 0 1 1 0 0 1
             1 0 1 0 0 1 0 1 1 1 1 0 0 0 0 0 1 0 1 0 0 1 0 0 1
             0 1 0 0 1 0 0 1 0 1 0 0 1 0 0 1 0 0 0 0 0 0 0 1 1
             0 0 0 1 0 0 1 0 0 0 0 0 0 0 1 1 0 0 0 0 0 0 1 0 1
             0 0 1 0 0 1 0 0 0 0 0 0 0 1 0 1 0 0 0 0 0 1 0 1 0
             1 1 0 0 1 0 0 0 0 0 0 0 1 0 1 0 0 0 0 1 1 0 0 0 1
             1 0 1 1 0 1 1 1 1 0 1 1 1 0 1 0 1 0 1 1 0 1 1 1 0
             0 1 1 1 0 1 0 0 0 0 1 0 1 1 0 1 0 1 1 0 1 0 0 0 0
             1 1 0 0 0 0 1 0 1 1 0 1 1 0 0 0 1 1 1 0 1 0 0 0 0
             1 0 0 0 0 0 0 0 1 0 1 0 0 0 0 1 1 0 0 0 0 1 0 1 1
             1 0 0 0 0 0 1 1 1 0 0 0 0 0 1 1 0 0 1 0 1 0 1 1 0
             1 1 1 0 0 1 1 0 0 1 0 0 0 0 1 0 0 0 0 0 0 1 1 1 0
             0 0 0 0 1 1 1 0 0 1 0 0 1 1 0 0 1 0 1 0 1 1 0 0 1
             1 0 0 1 1 0 1 0 0 1 0 1 1 1 1 0 0 0 0 0 1 0 0 0 0
             0 0 0 1 0 1 0 0 0 0 0 1 0 0 1 1 1 0 0 1 0 0 0 0 0
             0 0 1 0 1 0 0 0 0 0 1 1 0 0 0 0 0 0 1 0 1 0 0 1 0
             0 1 0 1 0 0 1 0 0 1 0 1 0 0 1 0 0 1 0 0 0 0 0 0 1
             1 1 0 1 0 0 0 1 1 0 1 0 0 1 0 1 1 0 1 1 0 1 0 1 1
             0 0 1 0 1 0 0 1 0 0 0 0 0 0 0 1 0 1 0 0 0 0 0 1 0
             1 1 0 1 0 0 1 0 0 0 0 0 0 1 1 0 0 0 1 0 0 1 1 0 1
             0 0 1 0 1 1 1 0 1 0 0 0 1 1 1 0 0 1 1 0 0 1 0 1 1
             0 1 0 1 1 0 1 1 0 0 0 1 1 0 0 1 0 1 0 1 1 0 0 1 1
             0 0 1 1 1 0 1 0 0 0 0 1 0 1 1 0 1 0 1 1 1 0 1 0 0
             0 1 1 0 1 1 1 1 0 0 1 0 1 1 0 1 0 1 1 0 0 1 0 1 0
             1 1 1 1 0 0 0 0 1 1 1 0 1 0 0 0 1 1 0 0 1 0 1 0 1
             1 0 1 1 1 0 0 1 1 0 0 1 0 0 0 0 1 0 0 0 0 0 0 0 1
             1 0 0 0 1 0 0 1 0 1 0 0 1 0 0 1 0 1 0 0 1 0 0 1 0
             0 0 0 0 0 0 1 0 1 0 0 0 0 1 1 0 0 0 1 1 0 1 1 0 1
             1 1 1 0 1 1 1 0 1 0 1 0 1 1 0 1 1 1 0 0 1 1 1 0 1
             0 0 0 0 1 0 1 1 0 1 0 1 1 0 1 0 0 0 0 1 1 0 0 0 0
             1 0 1 1 0 1 1 0 0 0 1 1 1 0 1 0 0 0 0 1 0 0 0 0 0
             0 0 1 0 1 0 0 0 0 1 1 0 0 0 0 1 0 1 1 1 0 0 0 0 0
             1 1 1 0 0 0 0 0 1 1 0 0 1 0 1 0 1 1 0 1 1 1 0 0 1
             1 0 0 1 0 0 0 0 1 0 0 0 0 0 0 1 1 1 0 0 0 0 0 1 1
             1 0 0 1 0 0 1 1 0 0 1 0 1 0 1 1 0 0 1 1 0 0 1 1 0
             1 0 0 1 0 1 1 1 1 0 0 0 0 0 1 0 0 0 0 0 0 0 1 0 1
             0 0 0 0 0 1 0 0 1 1 1 0 0 1 0 0 0 0 0 0 0 1 0 1 0
             0 0 0 0 1 1 0 0 0 1 0 0 1 0 1 0 0 1 0 0 1 0 1 0 0
             1 0 0 1 0 1 0 0 1 0 0 1 0 0 0 0 0 0 1 1 1 0 1 0 0
             0 1 1 0 1 0 0 1 0 1 1 0 1 1 0 1 0 1 1 0 0 1 0 1 0
             0 1 0 0 0 0 0 0 0 1 0 1 0 0 0 0 0 1 0 1 1 0 1 0 0
             1 0 0 0 0 0 0 1 1 0 0 0 1 0 0 1 1 0 1 0 0 1 0 1 1
             1 0 1 0 0 0 1 1 1 0 0 1 1 0 0 1 0 1 1 0 1 0 1 1 0
             1 1 0 0 0 1 1 0 0 1 0 1 0 1 1 0 0 1 1 0 0 1 1 1 0
             1 0 0 0 0 1 0 1 1 0 1 0 1 1 1 0 1 0 0 0 1 1 0 1 1
             1 1 0 0 1 0 1 1 0 1 0 1 1 0 0 1 0 1 0 1 1 1 1 0 0
             0 0 1 1 1 0 1 0 0 0 1 1 0 0 1 0 1 0 1 1 0 1 1 1 0
             0 1 1 0 0 1 0 0 0 0 1 0 0 0 0 0 0 0 1 1 0 0 0 1 0
             0 1 0 1 0 0 1 0 0 1 0 1 0 0 1 0 0 1 0 1 0 0 1 0 0
             1 0 1 0 0 1 0 0 1 0 1 0 0 1 0 0 1 0 1 0 0 1 0 0 1
             0 1 0 0 1 0 0 0 0 1 0 1 0 0 0 1 0 1 0 0 0 0 0 1 0
             0 1 1 1 0 0 1 0 0 0 0 0 0 0 1 0 1 0 0 0 0 0 1 1 0
             0 0 0 0 0 1 0 0 0 0 0 0 0 1 1 0 0 0 0 0 0 1 0 0 0
             0 0 0 0 1 1 0 0 0 0 0 0 1 0 0 0 0 0 0 0 1 1 0 0 0
             0 0 0 1 0 0 0 0 0 0 0 1 1 0 0 0 0 0 0 1 0 0 0 0 0
             0 0 1 1 0 0 0 0 0 0 1 0 0 0 0 0 0 0 1 1 0 0 0 0 0
             0 1 0 0 0 0 0 0 0 1 1 0 0 0 1 0 0 1 0 1 0 0 1 0 0
             1 0 1 0 0 1 0 0 0 0 1 0 1 0)
debug       (' (0 0 0 0 0 0 0 1))
debug       (0 0 0 0 0 0 0 1)
debug       (1 / 256)
debug       0
debug       (0 / 1)
debug       (1 / 256)
debug       (0 / 1)
debug       false
debug       1
debug       (0 / 2)
debug       (1 / 256)
debug       (0 / 2)
debug       false
debug       2
debug       (0 / 4)
debug       (1 / 256)
debug       (0 / 4)
debug       false
debug       3
debug       (0 / 8)
debug       (1 / 256)
debug       (0 / 8)
debug       false
debug       4
debug       (0 / 16)
debug       (1 / 256)
debug       (0 / 16)
debug       false
debug       5
debug       (0 / 32)
debug       (1 / 256)
debug       (0 / 32)
debug       false
debug       6
debug       (0 / 64)
debug       (1 / 256)
debug       (0 / 64)
debug       false
debug       7
debug       (0 / 128)
debug       (1 / 256)
debug       (0 / 128)
debug       false
debug       8
debug       (1 / 256)
debug       (1 / 256)
debug       (1 / 256)
debug       true
value       (failure out-of-data () failure out-of-data () fai
            lure out-of-data () failure out-of-data () failure
             out-of-data () failure out-of-data () failure out
            -of-data () failure out-of-data () failure out-of-
            data () failure out-of-data () success () () failu
            re out-of-data () failure out-of-data () failure o
            ut-of-data () failure out-of-data () failure out-o
            f-data () failure out-of-data () failure out-of-da
            ta () failure out-of-data () failure out-of-data (
            ) failure out-of-data () failure out-of-data () fa
            ilure out-of-data () failure out-of-data () failur
            e out-of-data () failure out-of-data () failure ou
            t-of-data () failure out-of-data () failure out-of
            -data () failure out-of-data () failure out-of-dat
            a () failure out-of-data () failure out-of-data ()
             failure out-of-data () failure out-of-data () fai
            lure out-of-data () failure out-of-data () failure
             out-of-data () failure out-of-data () failure out
            -of-data () failure out-of-data () failure out-of-
            data () failure out-of-data () failure out-of-data
             () failure out-of-data () failure out-of-data ()
            failure out-of-data () failure out-of-data () fail
            ure out-of-data () failure out-of-data () failure
            out-of-data () failure out-of-data () failure out-
            of-data () failure out-of-data () failure out-of-d
            ata () failure out-of-data () failure out-of-data
            () failure out-of-data () failure out-of-data () f
            ailure out-of-data () failure out-of-data () failu
            re out-of-data () failure out-of-data () failure o
            ut-of-data () failure out-of-data () failure out-o
            f-data () failure out-of-data () failure out-of-da
            ta () failure out-of-data () failure out-of-data (
            ) failure out-of-data () failure out-of-data () fa
            ilure out-of-data () failure out-of-data () failur
            e out-of-data () failure out-of-data () failure ou
            t-of-data () failure out-of-data () failure out-of
            -data () failure out-of-data () failure out-of-dat
            a () failure out-of-data () failure out-of-data ()
             failure out-of-data () failure out-of-data () fai
            lure out-of-data () failure out-of-data () failure
             out-of-data () failure out-of-data () failure out
            -of-data () failure out-of-data () failure out-of-
            data () failure out-of-data () failure out-of-data
             () failure out-of-data () failure out-of-data ()
            failure out-of-data () failure out-of-data () fail
            ure out-of-data () failure out-of-data () failure
            out-of-data () failure out-of-data () failure out-
            of-data () failure out-of-data () failure out-of-d
            ata () failure out-of-data () failure out-of-data
            () failure out-of-data () failure out-of-data () f
            ailure out-of-data () failure out-of-data () failu
            re out-of-data () failure out-of-data () failure o
            ut-of-data () failure out-of-data () failure out-o
            f-data () failure out-of-data () failure out-of-da
            ta () failure out-of-data () failure out-of-data (
            ) failure out-of-data () failure out-of-data () fa
            ilure out-of-data () failure out-of-data () failur
            e out-of-data () failure out-of-data () failure ou
            t-of-data () failure out-of-data () failure out-of
            -data () failure out-of-data () failure out-of-dat
            a () failure out-of-data () failure out-of-data ()
             failure out-of-data () failure out-of-data () fai
            lure out-of-data () failure out-of-data () failure
             out-of-data () failure out-of-data () failure out
            -of-data () failure out-of-data () failure out-of-
            data () failure out-of-data () failure out-of-data
             () failure out-of-data () failure out-of-data ()
            failure out-of-data () failure out-of-data () fail
            ure out-of-data () failure out-of-data () failure
            out-of-data () failure out-of-data () failure out-
            of-data () failure out-of-data () failure out-of-d
            ata () failure out-of-data () failure out-of-data
            () failure out-of-data () failure out-of-data () f
            ailure out-of-data () failure out-of-data () failu
            re out-of-data () failure out-of-data () failure o
            ut-of-data () failure out-of-data () failure out-o
            f-data () failure out-of-data () failure out-of-da
            ta () failure out-of-data () failure out-of-data (
            ) failure out-of-data () failure out-of-data () fa
            ilure out-of-data () failure out-of-data () failur
            e out-of-data () failure out-of-data () failure ou
            t-of-data () failure out-of-data () failure out-of
            -data () failure out-of-data () failure out-of-dat
            a () failure out-of-data () failure out-of-data ()
             failure out-of-data () failure out-of-data () fai
            lure out-of-data () failure out-of-data () failure
             out-of-data () failure out-of-data () failure out
            -of-data () failure out-of-data () failure out-of-
            data () failure out-of-data () failure out-of-data
             () failure out-of-data () failure out-of-data ()
            failure out-of-data () failure out-of-data () fail
            ure out-of-data () failure out-of-data () failure
            out-of-data () failure out-of-data () failure out-
            of-data () failure out-of-data () failure out-of-d
            ata () failure out-of-data () failure out-of-data
            () failure out-of-data () failure out-of-data () f
            ailure out-of-data () failure out-of-data () failu
            re out-of-data () failure out-of-data () failure o
            ut-of-data () failure out-of-data () failure out-o
            f-data () failure out-of-data () failure out-of-da
            ta () failure out-of-data () failure out-of-data (
            ) failure out-of-data () failure out-of-data () fa
            ilure out-of-data () failure out-of-data () failur
            e out-of-data () failure out-of-data () failure ou
            t-of-data () failure out-of-data () failure out-of
            -data () failure out-of-data () failure out-of-dat
            a () failure out-of-data () failure out-of-data ()
             failure out-of-data () failure out-of-data () fai
            lure out-of-data () failure out-of-data () failure
             out-of-data () failure out-of-data () failure out
            -of-data () failure out-of-data () failure out-of-
            data () failure out-of-data () failure out-of-data
             () failure out-of-data () failure out-of-data ()
            failure out-of-data () failure out-of-data () fail
            ure out-of-data () failure out-of-data () failure
            out-of-data () failure out-of-data () failure out-
            of-data () failure out-of-data () failure out-of-d
            ata () failure out-of-data ())
 
End of LISP Run
 
Elapsed time is 2 seconds.
