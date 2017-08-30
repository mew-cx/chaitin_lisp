LISP Interpreter Run
 
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
 
define      count-halt
value       (lambda (prefix time bits-left-to-extend) (if (= b
            its-left-to-extend 0) (if (= success (display (car
             (try time (' (eval (debug (read-exp)))) (display
            prefix))))) 1 0) (+ (count-halt (append prefix ('
            (0))) time (- bits-left-to-extend 1)) (count-halt
            (append prefix (' (1))) time (- bits-left-to-exten
            d 1)))))
 
(count-halt bits 'cons read-bit cons read-bit nil no-time-limit 0)
 
expression  (count-halt (bits (' (cons (read-bit) (cons (read-
            bit) nil)))) no-time-limit 0)
display     (0 0 1 0 1 0 0 0 0 1 1 0 0 0 1 1 0 1 1 0 1 1 1 1 0
             1 1 0 1 1 1 0 0 1 1 1 0 0 1 1 0 0 1 0 0 0 0 0 0 0
             1 0 1 0 0 0 0 1 1 1 0 0 1 0 0 1 1 0 0 1 0 1 0 1 1
             0 0 0 0 1 0 1 1 0 0 1 0 0 0 0 1 0 1 1 0 1 0 1 1 0
             0 0 1 0 0 1 1 0 1 0 0 1 0 1 1 1 0 1 0 0 0 0 1 0 1
             0 0 1 0 0 1 0 0 0 0 0 0 0 1 0 1 0 0 0 0 1 1 0 0 0
             1 1 0 1 1 0 1 1 1 1 0 1 1 0 1 1 1 0 0 1 1 1 0 0 1
             1 0 0 1 0 0 0 0 0 0 0 1 0 1 0 0 0 0 1 1 1 0 0 1 0
             0 1 1 0 0 1 0 1 0 1 1 0 0 0 0 1 0 1 1 0 0 1 0 0 0
             0 1 0 1 1 0 1 0 1 1 0 0 0 1 0 0 1 1 0 1 0 0 1 0 1
             1 1 0 1 0 0 0 0 1 0 1 0 0 1 0 0 1 0 0 0 0 0 0 1 1
             0 1 1 1 0 0 1 1 0 1 0 0 1 0 1 1 0 1 1 0 0 0 0 1 0
             1 0 0 1 0 0 1 0 1 0 0 1 0 0 0 0 1 0 1 0)
debug       (cons (read-bit) (cons (read-bit) nil))
display     failure
value       0
 
(count-halt bits 'cons read-bit cons read-bit nil no-time-limit 1)
 
expression  (count-halt (bits (' (cons (read-bit) (cons (read-
            bit) nil)))) no-time-limit 1)
display     (0 0 1 0 1 0 0 0 0 1 1 0 0 0 1 1 0 1 1 0 1 1 1 1 0
             1 1 0 1 1 1 0 0 1 1 1 0 0 1 1 0 0 1 0 0 0 0 0 0 0
             1 0 1 0 0 0 0 1 1 1 0 0 1 0 0 1 1 0 0 1 0 1 0 1 1
             0 0 0 0 1 0 1 1 0 0 1 0 0 0 0 1 0 1 1 0 1 0 1 1 0
             0 0 1 0 0 1 1 0 1 0 0 1 0 1 1 1 0 1 0 0 0 0 1 0 1
             0 0 1 0 0 1 0 0 0 0 0 0 0 1 0 1 0 0 0 0 1 1 0 0 0
             1 1 0 1 1 0 1 1 1 1 0 1 1 0 1 1 1 0 0 1 1 1 0 0 1
             1 0 0 1 0 0 0 0 0 0 0 1 0 1 0 0 0 0 1 1 1 0 0 1 0
             0 1 1 0 0 1 0 1 0 1 1 0 0 0 0 1 0 1 1 0 0 1 0 0 0
             0 1 0 1 1 0 1 0 1 1 0 0 0 1 0 0 1 1 0 1 0 0 1 0 1
             1 1 0 1 0 0 0 0 1 0 1 0 0 1 0 0 1 0 0 0 0 0 0 1 1
             0 1 1 1 0 0 1 1 0 1 0 0 1 0 1 1 0 1 1 0 0 0 0 1 0
             1 0 0 1 0 0 1 0 1 0 0 1 0 0 0 0 1 0 1 0 0)
debug       (cons (read-bit) (cons (read-bit) nil))
display     failure
display     (0 0 1 0 1 0 0 0 0 1 1 0 0 0 1 1 0 1 1 0 1 1 1 1 0
             1 1 0 1 1 1 0 0 1 1 1 0 0 1 1 0 0 1 0 0 0 0 0 0 0
             1 0 1 0 0 0 0 1 1 1 0 0 1 0 0 1 1 0 0 1 0 1 0 1 1
             0 0 0 0 1 0 1 1 0 0 1 0 0 0 0 1 0 1 1 0 1 0 1 1 0
             0 0 1 0 0 1 1 0 1 0 0 1 0 1 1 1 0 1 0 0 0 0 1 0 1
             0 0 1 0 0 1 0 0 0 0 0 0 0 1 0 1 0 0 0 0 1 1 0 0 0
             1 1 0 1 1 0 1 1 1 1 0 1 1 0 1 1 1 0 0 1 1 1 0 0 1
             1 0 0 1 0 0 0 0 0 0 0 1 0 1 0 0 0 0 1 1 1 0 0 1 0
             0 1 1 0 0 1 0 1 0 1 1 0 0 0 0 1 0 1 1 0 0 1 0 0 0
             0 1 0 1 1 0 1 0 1 1 0 0 0 1 0 0 1 1 0 1 0 0 1 0 1
             1 1 0 1 0 0 0 0 1 0 1 0 0 1 0 0 1 0 0 0 0 0 0 1 1
             0 1 1 1 0 0 1 1 0 1 0 0 1 0 1 1 0 1 1 0 0 0 0 1 0
             1 0 0 1 0 0 1 0 1 0 0 1 0 0 0 0 1 0 1 0 1)
debug       (cons (read-bit) (cons (read-bit) nil))
display     failure
value       0
 
(count-halt bits 'cons read-bit cons read-bit nil no-time-limit 2)
 
expression  (count-halt (bits (' (cons (read-bit) (cons (read-
            bit) nil)))) no-time-limit 2)
display     (0 0 1 0 1 0 0 0 0 1 1 0 0 0 1 1 0 1 1 0 1 1 1 1 0
             1 1 0 1 1 1 0 0 1 1 1 0 0 1 1 0 0 1 0 0 0 0 0 0 0
             1 0 1 0 0 0 0 1 1 1 0 0 1 0 0 1 1 0 0 1 0 1 0 1 1
             0 0 0 0 1 0 1 1 0 0 1 0 0 0 0 1 0 1 1 0 1 0 1 1 0
             0 0 1 0 0 1 1 0 1 0 0 1 0 1 1 1 0 1 0 0 0 0 1 0 1
             0 0 1 0 0 1 0 0 0 0 0 0 0 1 0 1 0 0 0 0 1 1 0 0 0
             1 1 0 1 1 0 1 1 1 1 0 1 1 0 1 1 1 0 0 1 1 1 0 0 1
             1 0 0 1 0 0 0 0 0 0 0 1 0 1 0 0 0 0 1 1 1 0 0 1 0
             0 1 1 0 0 1 0 1 0 1 1 0 0 0 0 1 0 1 1 0 0 1 0 0 0
             0 1 0 1 1 0 1 0 1 1 0 0 0 1 0 0 1 1 0 1 0 0 1 0 1
             1 1 0 1 0 0 0 0 1 0 1 0 0 1 0 0 1 0 0 0 0 0 0 1 1
             0 1 1 1 0 0 1 1 0 1 0 0 1 0 1 1 0 1 1 0 0 0 0 1 0
             1 0 0 1 0 0 1 0 1 0 0 1 0 0 0 0 1 0 1 0 0 0)
debug       (cons (read-bit) (cons (read-bit) nil))
display     success
display     (0 0 1 0 1 0 0 0 0 1 1 0 0 0 1 1 0 1 1 0 1 1 1 1 0
             1 1 0 1 1 1 0 0 1 1 1 0 0 1 1 0 0 1 0 0 0 0 0 0 0
             1 0 1 0 0 0 0 1 1 1 0 0 1 0 0 1 1 0 0 1 0 1 0 1 1
             0 0 0 0 1 0 1 1 0 0 1 0 0 0 0 1 0 1 1 0 1 0 1 1 0
             0 0 1 0 0 1 1 0 1 0 0 1 0 1 1 1 0 1 0 0 0 0 1 0 1
             0 0 1 0 0 1 0 0 0 0 0 0 0 1 0 1 0 0 0 0 1 1 0 0 0
             1 1 0 1 1 0 1 1 1 1 0 1 1 0 1 1 1 0 0 1 1 1 0 0 1
             1 0 0 1 0 0 0 0 0 0 0 1 0 1 0 0 0 0 1 1 1 0 0 1 0
             0 1 1 0 0 1 0 1 0 1 1 0 0 0 0 1 0 1 1 0 0 1 0 0 0
             0 1 0 1 1 0 1 0 1 1 0 0 0 1 0 0 1 1 0 1 0 0 1 0 1
             1 1 0 1 0 0 0 0 1 0 1 0 0 1 0 0 1 0 0 0 0 0 0 1 1
             0 1 1 1 0 0 1 1 0 1 0 0 1 0 1 1 0 1 1 0 0 0 0 1 0
             1 0 0 1 0 0 1 0 1 0 0 1 0 0 0 0 1 0 1 0 0 1)
debug       (cons (read-bit) (cons (read-bit) nil))
display     success
display     (0 0 1 0 1 0 0 0 0 1 1 0 0 0 1 1 0 1 1 0 1 1 1 1 0
             1 1 0 1 1 1 0 0 1 1 1 0 0 1 1 0 0 1 0 0 0 0 0 0 0
             1 0 1 0 0 0 0 1 1 1 0 0 1 0 0 1 1 0 0 1 0 1 0 1 1
             0 0 0 0 1 0 1 1 0 0 1 0 0 0 0 1 0 1 1 0 1 0 1 1 0
             0 0 1 0 0 1 1 0 1 0 0 1 0 1 1 1 0 1 0 0 0 0 1 0 1
             0 0 1 0 0 1 0 0 0 0 0 0 0 1 0 1 0 0 0 0 1 1 0 0 0
             1 1 0 1 1 0 1 1 1 1 0 1 1 0 1 1 1 0 0 1 1 1 0 0 1
             1 0 0 1 0 0 0 0 0 0 0 1 0 1 0 0 0 0 1 1 1 0 0 1 0
             0 1 1 0 0 1 0 1 0 1 1 0 0 0 0 1 0 1 1 0 0 1 0 0 0
             0 1 0 1 1 0 1 0 1 1 0 0 0 1 0 0 1 1 0 1 0 0 1 0 1
             1 1 0 1 0 0 0 0 1 0 1 0 0 1 0 0 1 0 0 0 0 0 0 1 1
             0 1 1 1 0 0 1 1 0 1 0 0 1 0 1 1 0 1 1 0 0 0 0 1 0
             1 0 0 1 0 0 1 0 1 0 0 1 0 0 0 0 1 0 1 0 1 0)
debug       (cons (read-bit) (cons (read-bit) nil))
display     success
display     (0 0 1 0 1 0 0 0 0 1 1 0 0 0 1 1 0 1 1 0 1 1 1 1 0
             1 1 0 1 1 1 0 0 1 1 1 0 0 1 1 0 0 1 0 0 0 0 0 0 0
             1 0 1 0 0 0 0 1 1 1 0 0 1 0 0 1 1 0 0 1 0 1 0 1 1
             0 0 0 0 1 0 1 1 0 0 1 0 0 0 0 1 0 1 1 0 1 0 1 1 0
             0 0 1 0 0 1 1 0 1 0 0 1 0 1 1 1 0 1 0 0 0 0 1 0 1
             0 0 1 0 0 1 0 0 0 0 0 0 0 1 0 1 0 0 0 0 1 1 0 0 0
             1 1 0 1 1 0 1 1 1 1 0 1 1 0 1 1 1 0 0 1 1 1 0 0 1
             1 0 0 1 0 0 0 0 0 0 0 1 0 1 0 0 0 0 1 1 1 0 0 1 0
             0 1 1 0 0 1 0 1 0 1 1 0 0 0 0 1 0 1 1 0 0 1 0 0 0
             0 1 0 1 1 0 1 0 1 1 0 0 0 1 0 0 1 1 0 1 0 0 1 0 1
             1 1 0 1 0 0 0 0 1 0 1 0 0 1 0 0 1 0 0 0 0 0 0 1 1
             0 1 1 1 0 0 1 1 0 1 0 0 1 0 1 1 0 1 1 0 0 0 0 1 0
             1 0 0 1 0 0 1 0 1 0 0 1 0 0 0 0 1 0 1 0 1 1)
debug       (cons (read-bit) (cons (read-bit) nil))
display     success
value       4
 
(count-halt bits 'cons read-bit cons read-bit nil no-time-limit 3)
 
expression  (count-halt (bits (' (cons (read-bit) (cons (read-
            bit) nil)))) no-time-limit 3)
display     (0 0 1 0 1 0 0 0 0 1 1 0 0 0 1 1 0 1 1 0 1 1 1 1 0
             1 1 0 1 1 1 0 0 1 1 1 0 0 1 1 0 0 1 0 0 0 0 0 0 0
             1 0 1 0 0 0 0 1 1 1 0 0 1 0 0 1 1 0 0 1 0 1 0 1 1
             0 0 0 0 1 0 1 1 0 0 1 0 0 0 0 1 0 1 1 0 1 0 1 1 0
             0 0 1 0 0 1 1 0 1 0 0 1 0 1 1 1 0 1 0 0 0 0 1 0 1
             0 0 1 0 0 1 0 0 0 0 0 0 0 1 0 1 0 0 0 0 1 1 0 0 0
             1 1 0 1 1 0 1 1 1 1 0 1 1 0 1 1 1 0 0 1 1 1 0 0 1
             1 0 0 1 0 0 0 0 0 0 0 1 0 1 0 0 0 0 1 1 1 0 0 1 0
             0 1 1 0 0 1 0 1 0 1 1 0 0 0 0 1 0 1 1 0 0 1 0 0 0
             0 1 0 1 1 0 1 0 1 1 0 0 0 1 0 0 1 1 0 1 0 0 1 0 1
             1 1 0 1 0 0 0 0 1 0 1 0 0 1 0 0 1 0 0 0 0 0 0 1 1
             0 1 1 1 0 0 1 1 0 1 0 0 1 0 1 1 0 1 1 0 0 0 0 1 0
             1 0 0 1 0 0 1 0 1 0 0 1 0 0 0 0 1 0 1 0 0 0 0)
debug       (cons (read-bit) (cons (read-bit) nil))
display     success
display     (0 0 1 0 1 0 0 0 0 1 1 0 0 0 1 1 0 1 1 0 1 1 1 1 0
             1 1 0 1 1 1 0 0 1 1 1 0 0 1 1 0 0 1 0 0 0 0 0 0 0
             1 0 1 0 0 0 0 1 1 1 0 0 1 0 0 1 1 0 0 1 0 1 0 1 1
             0 0 0 0 1 0 1 1 0 0 1 0 0 0 0 1 0 1 1 0 1 0 1 1 0
             0 0 1 0 0 1 1 0 1 0 0 1 0 1 1 1 0 1 0 0 0 0 1 0 1
             0 0 1 0 0 1 0 0 0 0 0 0 0 1 0 1 0 0 0 0 1 1 0 0 0
             1 1 0 1 1 0 1 1 1 1 0 1 1 0 1 1 1 0 0 1 1 1 0 0 1
             1 0 0 1 0 0 0 0 0 0 0 1 0 1 0 0 0 0 1 1 1 0 0 1 0
             0 1 1 0 0 1 0 1 0 1 1 0 0 0 0 1 0 1 1 0 0 1 0 0 0
             0 1 0 1 1 0 1 0 1 1 0 0 0 1 0 0 1 1 0 1 0 0 1 0 1
             1 1 0 1 0 0 0 0 1 0 1 0 0 1 0 0 1 0 0 0 0 0 0 1 1
             0 1 1 1 0 0 1 1 0 1 0 0 1 0 1 1 0 1 1 0 0 0 0 1 0
             1 0 0 1 0 0 1 0 1 0 0 1 0 0 0 0 1 0 1 0 0 0 1)
debug       (cons (read-bit) (cons (read-bit) nil))
display     success
display     (0 0 1 0 1 0 0 0 0 1 1 0 0 0 1 1 0 1 1 0 1 1 1 1 0
             1 1 0 1 1 1 0 0 1 1 1 0 0 1 1 0 0 1 0 0 0 0 0 0 0
             1 0 1 0 0 0 0 1 1 1 0 0 1 0 0 1 1 0 0 1 0 1 0 1 1
             0 0 0 0 1 0 1 1 0 0 1 0 0 0 0 1 0 1 1 0 1 0 1 1 0
             0 0 1 0 0 1 1 0 1 0 0 1 0 1 1 1 0 1 0 0 0 0 1 0 1
             0 0 1 0 0 1 0 0 0 0 0 0 0 1 0 1 0 0 0 0 1 1 0 0 0
             1 1 0 1 1 0 1 1 1 1 0 1 1 0 1 1 1 0 0 1 1 1 0 0 1
             1 0 0 1 0 0 0 0 0 0 0 1 0 1 0 0 0 0 1 1 1 0 0 1 0
             0 1 1 0 0 1 0 1 0 1 1 0 0 0 0 1 0 1 1 0 0 1 0 0 0
             0 1 0 1 1 0 1 0 1 1 0 0 0 1 0 0 1 1 0 1 0 0 1 0 1
             1 1 0 1 0 0 0 0 1 0 1 0 0 1 0 0 1 0 0 0 0 0 0 1 1
             0 1 1 1 0 0 1 1 0 1 0 0 1 0 1 1 0 1 1 0 0 0 0 1 0
             1 0 0 1 0 0 1 0 1 0 0 1 0 0 0 0 1 0 1 0 0 1 0)
debug       (cons (read-bit) (cons (read-bit) nil))
display     success
display     (0 0 1 0 1 0 0 0 0 1 1 0 0 0 1 1 0 1 1 0 1 1 1 1 0
             1 1 0 1 1 1 0 0 1 1 1 0 0 1 1 0 0 1 0 0 0 0 0 0 0
             1 0 1 0 0 0 0 1 1 1 0 0 1 0 0 1 1 0 0 1 0 1 0 1 1
             0 0 0 0 1 0 1 1 0 0 1 0 0 0 0 1 0 1 1 0 1 0 1 1 0
             0 0 1 0 0 1 1 0 1 0 0 1 0 1 1 1 0 1 0 0 0 0 1 0 1
             0 0 1 0 0 1 0 0 0 0 0 0 0 1 0 1 0 0 0 0 1 1 0 0 0
             1 1 0 1 1 0 1 1 1 1 0 1 1 0 1 1 1 0 0 1 1 1 0 0 1
             1 0 0 1 0 0 0 0 0 0 0 1 0 1 0 0 0 0 1 1 1 0 0 1 0
             0 1 1 0 0 1 0 1 0 1 1 0 0 0 0 1 0 1 1 0 0 1 0 0 0
             0 1 0 1 1 0 1 0 1 1 0 0 0 1 0 0 1 1 0 1 0 0 1 0 1
             1 1 0 1 0 0 0 0 1 0 1 0 0 1 0 0 1 0 0 0 0 0 0 1 1
             0 1 1 1 0 0 1 1 0 1 0 0 1 0 1 1 0 1 1 0 0 0 0 1 0
             1 0 0 1 0 0 1 0 1 0 0 1 0 0 0 0 1 0 1 0 0 1 1)
debug       (cons (read-bit) (cons (read-bit) nil))
display     success
display     (0 0 1 0 1 0 0 0 0 1 1 0 0 0 1 1 0 1 1 0 1 1 1 1 0
             1 1 0 1 1 1 0 0 1 1 1 0 0 1 1 0 0 1 0 0 0 0 0 0 0
             1 0 1 0 0 0 0 1 1 1 0 0 1 0 0 1 1 0 0 1 0 1 0 1 1
             0 0 0 0 1 0 1 1 0 0 1 0 0 0 0 1 0 1 1 0 1 0 1 1 0
             0 0 1 0 0 1 1 0 1 0 0 1 0 1 1 1 0 1 0 0 0 0 1 0 1
             0 0 1 0 0 1 0 0 0 0 0 0 0 1 0 1 0 0 0 0 1 1 0 0 0
             1 1 0 1 1 0 1 1 1 1 0 1 1 0 1 1 1 0 0 1 1 1 0 0 1
             1 0 0 1 0 0 0 0 0 0 0 1 0 1 0 0 0 0 1 1 1 0 0 1 0
             0 1 1 0 0 1 0 1 0 1 1 0 0 0 0 1 0 1 1 0 0 1 0 0 0
             0 1 0 1 1 0 1 0 1 1 0 0 0 1 0 0 1 1 0 1 0 0 1 0 1
             1 1 0 1 0 0 0 0 1 0 1 0 0 1 0 0 1 0 0 0 0 0 0 1 1
             0 1 1 1 0 0 1 1 0 1 0 0 1 0 1 1 0 1 1 0 0 0 0 1 0
             1 0 0 1 0 0 1 0 1 0 0 1 0 0 0 0 1 0 1 0 1 0 0)
debug       (cons (read-bit) (cons (read-bit) nil))
display     success
display     (0 0 1 0 1 0 0 0 0 1 1 0 0 0 1 1 0 1 1 0 1 1 1 1 0
             1 1 0 1 1 1 0 0 1 1 1 0 0 1 1 0 0 1 0 0 0 0 0 0 0
             1 0 1 0 0 0 0 1 1 1 0 0 1 0 0 1 1 0 0 1 0 1 0 1 1
             0 0 0 0 1 0 1 1 0 0 1 0 0 0 0 1 0 1 1 0 1 0 1 1 0
             0 0 1 0 0 1 1 0 1 0 0 1 0 1 1 1 0 1 0 0 0 0 1 0 1
             0 0 1 0 0 1 0 0 0 0 0 0 0 1 0 1 0 0 0 0 1 1 0 0 0
             1 1 0 1 1 0 1 1 1 1 0 1 1 0 1 1 1 0 0 1 1 1 0 0 1
             1 0 0 1 0 0 0 0 0 0 0 1 0 1 0 0 0 0 1 1 1 0 0 1 0
             0 1 1 0 0 1 0 1 0 1 1 0 0 0 0 1 0 1 1 0 0 1 0 0 0
             0 1 0 1 1 0 1 0 1 1 0 0 0 1 0 0 1 1 0 1 0 0 1 0 1
             1 1 0 1 0 0 0 0 1 0 1 0 0 1 0 0 1 0 0 0 0 0 0 1 1
             0 1 1 1 0 0 1 1 0 1 0 0 1 0 1 1 0 1 1 0 0 0 0 1 0
             1 0 0 1 0 0 1 0 1 0 0 1 0 0 0 0 1 0 1 0 1 0 1)
debug       (cons (read-bit) (cons (read-bit) nil))
display     success
display     (0 0 1 0 1 0 0 0 0 1 1 0 0 0 1 1 0 1 1 0 1 1 1 1 0
             1 1 0 1 1 1 0 0 1 1 1 0 0 1 1 0 0 1 0 0 0 0 0 0 0
             1 0 1 0 0 0 0 1 1 1 0 0 1 0 0 1 1 0 0 1 0 1 0 1 1
             0 0 0 0 1 0 1 1 0 0 1 0 0 0 0 1 0 1 1 0 1 0 1 1 0
             0 0 1 0 0 1 1 0 1 0 0 1 0 1 1 1 0 1 0 0 0 0 1 0 1
             0 0 1 0 0 1 0 0 0 0 0 0 0 1 0 1 0 0 0 0 1 1 0 0 0
             1 1 0 1 1 0 1 1 1 1 0 1 1 0 1 1 1 0 0 1 1 1 0 0 1
             1 0 0 1 0 0 0 0 0 0 0 1 0 1 0 0 0 0 1 1 1 0 0 1 0
             0 1 1 0 0 1 0 1 0 1 1 0 0 0 0 1 0 1 1 0 0 1 0 0 0
             0 1 0 1 1 0 1 0 1 1 0 0 0 1 0 0 1 1 0 1 0 0 1 0 1
             1 1 0 1 0 0 0 0 1 0 1 0 0 1 0 0 1 0 0 0 0 0 0 1 1
             0 1 1 1 0 0 1 1 0 1 0 0 1 0 1 1 0 1 1 0 0 0 0 1 0
             1 0 0 1 0 0 1 0 1 0 0 1 0 0 0 0 1 0 1 0 1 1 0)
debug       (cons (read-bit) (cons (read-bit) nil))
display     success
display     (0 0 1 0 1 0 0 0 0 1 1 0 0 0 1 1 0 1 1 0 1 1 1 1 0
             1 1 0 1 1 1 0 0 1 1 1 0 0 1 1 0 0 1 0 0 0 0 0 0 0
             1 0 1 0 0 0 0 1 1 1 0 0 1 0 0 1 1 0 0 1 0 1 0 1 1
             0 0 0 0 1 0 1 1 0 0 1 0 0 0 0 1 0 1 1 0 1 0 1 1 0
             0 0 1 0 0 1 1 0 1 0 0 1 0 1 1 1 0 1 0 0 0 0 1 0 1
             0 0 1 0 0 1 0 0 0 0 0 0 0 1 0 1 0 0 0 0 1 1 0 0 0
             1 1 0 1 1 0 1 1 1 1 0 1 1 0 1 1 1 0 0 1 1 1 0 0 1
             1 0 0 1 0 0 0 0 0 0 0 1 0 1 0 0 0 0 1 1 1 0 0 1 0
             0 1 1 0 0 1 0 1 0 1 1 0 0 0 0 1 0 1 1 0 0 1 0 0 0
             0 1 0 1 1 0 1 0 1 1 0 0 0 1 0 0 1 1 0 1 0 0 1 0 1
             1 1 0 1 0 0 0 0 1 0 1 0 0 1 0 0 1 0 0 0 0 0 0 1 1
             0 1 1 1 0 0 1 1 0 1 0 0 1 0 1 1 0 1 1 0 0 0 0 1 0
             1 0 0 1 0 0 1 0 1 0 0 1 0 0 0 0 1 0 1 0 1 1 1)
debug       (cons (read-bit) (cons (read-bit) nil))
display     success
value       8
 
[The kth lower bound on Omega]
[is the number of k-bit strings that halt on U within time k]
[divided by 2 raised to the power k.]
define (omega k) cons (count-halt nil k k)
                 cons /
                 cons ^ 2 k
                      nil
 
define      omega
value       (lambda (k) (cons (count-halt nil k k) (cons / (co
            ns (^ 2 k) nil))))
 
(omega 0)
 
expression  (omega 0)
display     ()
display     failure
value       (0 / 1)
 
(omega 1)
 
expression  (omega 1)
display     (0)
display     failure
display     (1)
display     failure
value       (0 / 2)
 
(omega 2)
 
expression  (omega 2)
display     (0 0)
display     failure
display     (0 1)
display     failure
display     (1 0)
display     failure
display     (1 1)
display     failure
value       (0 / 4)
 
(omega 3)
 
expression  (omega 3)
display     (0 0 0)
display     failure
display     (0 0 1)
display     failure
display     (0 1 0)
display     failure
display     (0 1 1)
display     failure
display     (1 0 0)
display     failure
display     (1 0 1)
display     failure
display     (1 1 0)
display     failure
display     (1 1 1)
display     failure
value       (0 / 8)
 
(omega 8)
 
expression  (omega 8)
display     (0 0 0 0 0 0 0 0)
display     failure
display     (0 0 0 0 0 0 0 1)
display     failure
display     (0 0 0 0 0 0 1 0)
display     failure
display     (0 0 0 0 0 0 1 1)
display     failure
display     (0 0 0 0 0 1 0 0)
display     failure
display     (0 0 0 0 0 1 0 1)
display     failure
display     (0 0 0 0 0 1 1 0)
display     failure
display     (0 0 0 0 0 1 1 1)
display     failure
display     (0 0 0 0 1 0 0 0)
display     failure
display     (0 0 0 0 1 0 0 1)
display     failure
display     (0 0 0 0 1 0 1 0)
debug       ()
display     success
display     (0 0 0 0 1 0 1 1)
display     failure
display     (0 0 0 0 1 1 0 0)
display     failure
display     (0 0 0 0 1 1 0 1)
display     failure
display     (0 0 0 0 1 1 1 0)
display     failure
display     (0 0 0 0 1 1 1 1)
display     failure
display     (0 0 0 1 0 0 0 0)
display     failure
display     (0 0 0 1 0 0 0 1)
display     failure
display     (0 0 0 1 0 0 1 0)
display     failure
display     (0 0 0 1 0 0 1 1)
display     failure
display     (0 0 0 1 0 1 0 0)
display     failure
display     (0 0 0 1 0 1 0 1)
display     failure
display     (0 0 0 1 0 1 1 0)
display     failure
display     (0 0 0 1 0 1 1 1)
display     failure
display     (0 0 0 1 1 0 0 0)
display     failure
display     (0 0 0 1 1 0 0 1)
display     failure
display     (0 0 0 1 1 0 1 0)
display     failure
display     (0 0 0 1 1 0 1 1)
display     failure
display     (0 0 0 1 1 1 0 0)
display     failure
display     (0 0 0 1 1 1 0 1)
display     failure
display     (0 0 0 1 1 1 1 0)
display     failure
display     (0 0 0 1 1 1 1 1)
display     failure
display     (0 0 1 0 0 0 0 0)
display     failure
display     (0 0 1 0 0 0 0 1)
display     failure
display     (0 0 1 0 0 0 1 0)
display     failure
display     (0 0 1 0 0 0 1 1)
display     failure
display     (0 0 1 0 0 1 0 0)
display     failure
display     (0 0 1 0 0 1 0 1)
display     failure
display     (0 0 1 0 0 1 1 0)
display     failure
display     (0 0 1 0 0 1 1 1)
display     failure
display     (0 0 1 0 1 0 0 0)
display     failure
display     (0 0 1 0 1 0 0 1)
display     failure
display     (0 0 1 0 1 0 1 0)
display     failure
display     (0 0 1 0 1 0 1 1)
display     failure
display     (0 0 1 0 1 1 0 0)
display     failure
display     (0 0 1 0 1 1 0 1)
display     failure
display     (0 0 1 0 1 1 1 0)
display     failure
display     (0 0 1 0 1 1 1 1)
display     failure
display     (0 0 1 1 0 0 0 0)
display     failure
display     (0 0 1 1 0 0 0 1)
display     failure
display     (0 0 1 1 0 0 1 0)
display     failure
display     (0 0 1 1 0 0 1 1)
display     failure
display     (0 0 1 1 0 1 0 0)
display     failure
display     (0 0 1 1 0 1 0 1)
display     failure
display     (0 0 1 1 0 1 1 0)
display     failure
display     (0 0 1 1 0 1 1 1)
display     failure
display     (0 0 1 1 1 0 0 0)
display     failure
display     (0 0 1 1 1 0 0 1)
display     failure
display     (0 0 1 1 1 0 1 0)
display     failure
display     (0 0 1 1 1 0 1 1)
display     failure
display     (0 0 1 1 1 1 0 0)
display     failure
display     (0 0 1 1 1 1 0 1)
display     failure
display     (0 0 1 1 1 1 1 0)
display     failure
display     (0 0 1 1 1 1 1 1)
display     failure
display     (0 1 0 0 0 0 0 0)
display     failure
display     (0 1 0 0 0 0 0 1)
display     failure
display     (0 1 0 0 0 0 1 0)
display     failure
display     (0 1 0 0 0 0 1 1)
display     failure
display     (0 1 0 0 0 1 0 0)
display     failure
display     (0 1 0 0 0 1 0 1)
display     failure
display     (0 1 0 0 0 1 1 0)
display     failure
display     (0 1 0 0 0 1 1 1)
display     failure
display     (0 1 0 0 1 0 0 0)
display     failure
display     (0 1 0 0 1 0 0 1)
display     failure
display     (0 1 0 0 1 0 1 0)
display     failure
display     (0 1 0 0 1 0 1 1)
display     failure
display     (0 1 0 0 1 1 0 0)
display     failure
display     (0 1 0 0 1 1 0 1)
display     failure
display     (0 1 0 0 1 1 1 0)
display     failure
display     (0 1 0 0 1 1 1 1)
display     failure
display     (0 1 0 1 0 0 0 0)
display     failure
display     (0 1 0 1 0 0 0 1)
display     failure
display     (0 1 0 1 0 0 1 0)
display     failure
display     (0 1 0 1 0 0 1 1)
display     failure
display     (0 1 0 1 0 1 0 0)
display     failure
display     (0 1 0 1 0 1 0 1)
display     failure
display     (0 1 0 1 0 1 1 0)
display     failure
display     (0 1 0 1 0 1 1 1)
display     failure
display     (0 1 0 1 1 0 0 0)
display     failure
display     (0 1 0 1 1 0 0 1)
display     failure
display     (0 1 0 1 1 0 1 0)
display     failure
display     (0 1 0 1 1 0 1 1)
display     failure
display     (0 1 0 1 1 1 0 0)
display     failure
display     (0 1 0 1 1 1 0 1)
display     failure
display     (0 1 0 1 1 1 1 0)
display     failure
display     (0 1 0 1 1 1 1 1)
display     failure
display     (0 1 1 0 0 0 0 0)
display     failure
display     (0 1 1 0 0 0 0 1)
display     failure
display     (0 1 1 0 0 0 1 0)
display     failure
display     (0 1 1 0 0 0 1 1)
display     failure
display     (0 1 1 0 0 1 0 0)
display     failure
display     (0 1 1 0 0 1 0 1)
display     failure
display     (0 1 1 0 0 1 1 0)
display     failure
display     (0 1 1 0 0 1 1 1)
display     failure
display     (0 1 1 0 1 0 0 0)
display     failure
display     (0 1 1 0 1 0 0 1)
display     failure
display     (0 1 1 0 1 0 1 0)
display     failure
display     (0 1 1 0 1 0 1 1)
display     failure
display     (0 1 1 0 1 1 0 0)
display     failure
display     (0 1 1 0 1 1 0 1)
display     failure
display     (0 1 1 0 1 1 1 0)
display     failure
display     (0 1 1 0 1 1 1 1)
display     failure
display     (0 1 1 1 0 0 0 0)
display     failure
display     (0 1 1 1 0 0 0 1)
display     failure
display     (0 1 1 1 0 0 1 0)
display     failure
display     (0 1 1 1 0 0 1 1)
display     failure
display     (0 1 1 1 0 1 0 0)
display     failure
display     (0 1 1 1 0 1 0 1)
display     failure
display     (0 1 1 1 0 1 1 0)
display     failure
display     (0 1 1 1 0 1 1 1)
display     failure
display     (0 1 1 1 1 0 0 0)
display     failure
display     (0 1 1 1 1 0 0 1)
display     failure
display     (0 1 1 1 1 0 1 0)
display     failure
display     (0 1 1 1 1 0 1 1)
display     failure
display     (0 1 1 1 1 1 0 0)
display     failure
display     (0 1 1 1 1 1 0 1)
display     failure
display     (0 1 1 1 1 1 1 0)
display     failure
display     (0 1 1 1 1 1 1 1)
display     failure
display     (1 0 0 0 0 0 0 0)
display     failure
display     (1 0 0 0 0 0 0 1)
display     failure
display     (1 0 0 0 0 0 1 0)
display     failure
display     (1 0 0 0 0 0 1 1)
display     failure
display     (1 0 0 0 0 1 0 0)
display     failure
display     (1 0 0 0 0 1 0 1)
display     failure
display     (1 0 0 0 0 1 1 0)
display     failure
display     (1 0 0 0 0 1 1 1)
display     failure
display     (1 0 0 0 1 0 0 0)
display     failure
display     (1 0 0 0 1 0 0 1)
display     failure
display     (1 0 0 0 1 0 1 0)
display     failure
display     (1 0 0 0 1 0 1 1)
display     failure
display     (1 0 0 0 1 1 0 0)
display     failure
display     (1 0 0 0 1 1 0 1)
display     failure
display     (1 0 0 0 1 1 1 0)
display     failure
display     (1 0 0 0 1 1 1 1)
display     failure
display     (1 0 0 1 0 0 0 0)
display     failure
display     (1 0 0 1 0 0 0 1)
display     failure
display     (1 0 0 1 0 0 1 0)
display     failure
display     (1 0 0 1 0 0 1 1)
display     failure
display     (1 0 0 1 0 1 0 0)
display     failure
display     (1 0 0 1 0 1 0 1)
display     failure
display     (1 0 0 1 0 1 1 0)
display     failure
display     (1 0 0 1 0 1 1 1)
display     failure
display     (1 0 0 1 1 0 0 0)
display     failure
display     (1 0 0 1 1 0 0 1)
display     failure
display     (1 0 0 1 1 0 1 0)
display     failure
display     (1 0 0 1 1 0 1 1)
display     failure
display     (1 0 0 1 1 1 0 0)
display     failure
display     (1 0 0 1 1 1 0 1)
display     failure
display     (1 0 0 1 1 1 1 0)
display     failure
display     (1 0 0 1 1 1 1 1)
display     failure
display     (1 0 1 0 0 0 0 0)
display     failure
display     (1 0 1 0 0 0 0 1)
display     failure
display     (1 0 1 0 0 0 1 0)
display     failure
display     (1 0 1 0 0 0 1 1)
display     failure
display     (1 0 1 0 0 1 0 0)
display     failure
display     (1 0 1 0 0 1 0 1)
display     failure
display     (1 0 1 0 0 1 1 0)
display     failure
display     (1 0 1 0 0 1 1 1)
display     failure
display     (1 0 1 0 1 0 0 0)
display     failure
display     (1 0 1 0 1 0 0 1)
display     failure
display     (1 0 1 0 1 0 1 0)
display     failure
display     (1 0 1 0 1 0 1 1)
display     failure
display     (1 0 1 0 1 1 0 0)
display     failure
display     (1 0 1 0 1 1 0 1)
display     failure
display     (1 0 1 0 1 1 1 0)
display     failure
display     (1 0 1 0 1 1 1 1)
display     failure
display     (1 0 1 1 0 0 0 0)
display     failure
display     (1 0 1 1 0 0 0 1)
display     failure
display     (1 0 1 1 0 0 1 0)
display     failure
display     (1 0 1 1 0 0 1 1)
display     failure
display     (1 0 1 1 0 1 0 0)
display     failure
display     (1 0 1 1 0 1 0 1)
display     failure
display     (1 0 1 1 0 1 1 0)
display     failure
display     (1 0 1 1 0 1 1 1)
display     failure
display     (1 0 1 1 1 0 0 0)
display     failure
display     (1 0 1 1 1 0 0 1)
display     failure
display     (1 0 1 1 1 0 1 0)
display     failure
display     (1 0 1 1 1 0 1 1)
display     failure
display     (1 0 1 1 1 1 0 0)
display     failure
display     (1 0 1 1 1 1 0 1)
display     failure
display     (1 0 1 1 1 1 1 0)
display     failure
display     (1 0 1 1 1 1 1 1)
display     failure
display     (1 1 0 0 0 0 0 0)
display     failure
display     (1 1 0 0 0 0 0 1)
display     failure
display     (1 1 0 0 0 0 1 0)
display     failure
display     (1 1 0 0 0 0 1 1)
display     failure
display     (1 1 0 0 0 1 0 0)
display     failure
display     (1 1 0 0 0 1 0 1)
display     failure
display     (1 1 0 0 0 1 1 0)
display     failure
display     (1 1 0 0 0 1 1 1)
display     failure
display     (1 1 0 0 1 0 0 0)
display     failure
display     (1 1 0 0 1 0 0 1)
display     failure
display     (1 1 0 0 1 0 1 0)
display     failure
display     (1 1 0 0 1 0 1 1)
display     failure
display     (1 1 0 0 1 1 0 0)
display     failure
display     (1 1 0 0 1 1 0 1)
display     failure
display     (1 1 0 0 1 1 1 0)
display     failure
display     (1 1 0 0 1 1 1 1)
display     failure
display     (1 1 0 1 0 0 0 0)
display     failure
display     (1 1 0 1 0 0 0 1)
display     failure
display     (1 1 0 1 0 0 1 0)
display     failure
display     (1 1 0 1 0 0 1 1)
display     failure
display     (1 1 0 1 0 1 0 0)
display     failure
display     (1 1 0 1 0 1 0 1)
display     failure
display     (1 1 0 1 0 1 1 0)
display     failure
display     (1 1 0 1 0 1 1 1)
display     failure
display     (1 1 0 1 1 0 0 0)
display     failure
display     (1 1 0 1 1 0 0 1)
display     failure
display     (1 1 0 1 1 0 1 0)
display     failure
display     (1 1 0 1 1 0 1 1)
display     failure
display     (1 1 0 1 1 1 0 0)
display     failure
display     (1 1 0 1 1 1 0 1)
display     failure
display     (1 1 0 1 1 1 1 0)
display     failure
display     (1 1 0 1 1 1 1 1)
display     failure
display     (1 1 1 0 0 0 0 0)
display     failure
display     (1 1 1 0 0 0 0 1)
display     failure
display     (1 1 1 0 0 0 1 0)
display     failure
display     (1 1 1 0 0 0 1 1)
display     failure
display     (1 1 1 0 0 1 0 0)
display     failure
display     (1 1 1 0 0 1 0 1)
display     failure
display     (1 1 1 0 0 1 1 0)
display     failure
display     (1 1 1 0 0 1 1 1)
display     failure
display     (1 1 1 0 1 0 0 0)
display     failure
display     (1 1 1 0 1 0 0 1)
display     failure
display     (1 1 1 0 1 0 1 0)
display     failure
display     (1 1 1 0 1 0 1 1)
display     failure
display     (1 1 1 0 1 1 0 0)
display     failure
display     (1 1 1 0 1 1 0 1)
display     failure
display     (1 1 1 0 1 1 1 0)
display     failure
display     (1 1 1 0 1 1 1 1)
display     failure
display     (1 1 1 1 0 0 0 0)
display     failure
display     (1 1 1 1 0 0 0 1)
display     failure
display     (1 1 1 1 0 0 1 0)
display     failure
display     (1 1 1 1 0 0 1 1)
display     failure
display     (1 1 1 1 0 1 0 0)
display     failure
display     (1 1 1 1 0 1 0 1)
display     failure
display     (1 1 1 1 0 1 1 0)
display     failure
display     (1 1 1 1 0 1 1 1)
display     failure
display     (1 1 1 1 1 0 0 0)
display     failure
display     (1 1 1 1 1 0 0 1)
display     failure
display     (1 1 1 1 1 0 1 0)
display     failure
display     (1 1 1 1 1 0 1 1)
display     failure
display     (1 1 1 1 1 1 0 0)
display     failure
display     (1 1 1 1 1 1 0 1)
display     failure
display     (1 1 1 1 1 1 1 0)
display     failure
display     (1 1 1 1 1 1 1 1)
display     failure
value       (1 / 256)
 
End of LISP Run
 
Elapsed time is 0 seconds.
