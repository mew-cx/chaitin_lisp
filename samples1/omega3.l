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
[Run pi.]
cadr try no-time-limit 'eval read-exp
append bits pi
       bits '
      [Program to compute first n = 8 bits of Omega]
            '(0 0 0 0  0 0 0 1)
[Size pi.]
length bits pi
