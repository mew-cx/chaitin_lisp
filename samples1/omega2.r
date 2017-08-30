LISP Interpreter Run

[[[[ Omega in the limit from below! ]]]]
 
define (count-halt prefix bits-left-to-extend)
    if = bits-left-to-extend 0
    if = success car try t 'eval read-exp prefix
       1 0
    + (count-halt append prefix '(0) - bits-left-to-extend 1)
      (count-halt append prefix '(1) - bits-left-to-extend 1)

define      count-halt
value       (lambda (prefix bits-left-to-extend) (if (= bits-l
            eft-to-extend 0) (if (= success (car (try t (' (ev
            al (read-exp))) prefix))) 1 0) (+ (count-halt (app
            end prefix (' (0))) (- bits-left-to-extend 1)) (co
            unt-halt (append prefix (' (1))) (- bits-left-to-e
            xtend 1)))))

define (omega t) cons (count-halt nil t)
                 cons /
                 cons ^ 2 t
                      nil

define      omega
value       (lambda (t) (cons (count-halt nil t) (cons / (cons
             (^ 2 t) nil))))

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

Elapsed time is 1 seconds.
