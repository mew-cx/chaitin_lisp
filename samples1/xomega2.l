[omega2.l]
 
[Omega in the limit from below!]
[Version II.]
 
[Count programs with prefix bit string p that halt within time t]
[among all possible extensions by e more bits.]
define (count-halt prefix time bits-left-to-extend)
    if = bits-left-to-extend 0
    if = success display car try time 'eval debug read-exp display prefix
       1 0
    + (count-halt append prefix '(0) time - bits-left-to-extend 1)
      (count-halt append prefix '(1) time - bits-left-to-extend 1)
(count-halt bits 'cons read-bit cons read-bit nil no-time-limit 0)
(count-halt bits 'cons read-bit cons read-bit nil no-time-limit 1)
(count-halt bits 'cons read-bit cons read-bit nil no-time-limit 2)
(count-halt bits 'cons read-bit cons read-bit nil no-time-limit 3)
[The kth lower bound on Omega]
[is the number of k-bit strings that halt on U within time k]
[divided by 2 raised to the power k.]
define (omega k) cons (count-halt nil k k)
                 cons /
                 cons ^ 2 k
                      nil
(omega 0)
(omega 1)
(omega 2)
(omega 3)
(omega 8)
