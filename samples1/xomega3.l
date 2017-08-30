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
