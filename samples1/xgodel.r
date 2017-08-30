LISP Interpreter Run
 
[godel.l]
 
[Show that a formal system of lisp complexity H_lisp (FAS) = N]
[cannot enable us to exhibit an elegant S-expression of]
[size greater than N + 419.]
[An elegant lisp expression is one with the property that no]
[smaller S-expression has the same value.]
[Setting: formal axiomatic system is never-ending lisp expression]
[that displays elegant S-expressions.]
 
[Idea is to have a program P search for something X that can be proved]
[to be more complex than P is, and therefore P can never find X.]
[I.e., idea is to show that if this program halts we get a contradiction,]
[and therefore the program doesn't halt.]
 
define (size-it-and-run-it exp)
    cadr cons display size display exp
         cons eval exp
              nil
 
define      size-it-and-run-it
value       (lambda (exp) (car (cdr (cons (display (size (disp
            lay exp))) (cons (eval exp) nil)))))
 
 
(size-it-and-run-it'
+ 5 15
)
 
expression  (size-it-and-run-it (' (+ 5 15)))
display     (+ 5 15)
display     8
value       20
 
 
(size-it-and-run-it'
 
[Examine list x for element that is more than n characters in size.]
[If not found returns false.]
let (examine x n)
    if atom x  false
[]
[   if < n size car x  car x     <=== Change This So Something Interesting Will Happen!]
[]
    if < 1 size car x  car x
    (examine cdr x n)
 
[Here we are given the formal axiomatic system FAS.]
let fas 'display elegant-expression   [Insert FAS here preceeded by "'".]
 
[N = the number of characters in this program including the FAS.]
let n display + 419 size display fas  [N = 419 + |FAS|.]
 
[Loop running the formal axiomatic system.]
let (loop t)                          []
  let v display try display t fas nil [Run the formal system for T time steps.]
  let s (examine caddr v n)           [Did it output an elegant s-exp larger than this program?]
  if s eval s                         [If found elegant s-exp bigger than this program,]
                                      [run it so that its output is our output. Contradiction!]
  if = failure car v (loop + t 1)     [If not, keep looping,]
  failure                             [or halt if formal system halted.]
                                      []
(loop 0)                              [Start loop running with T = 0.]
                                      []
) [end size-it-and-run-it]
 
expression  (size-it-and-run-it (' ((' (lambda (examine) ((' (
            lambda (fas) ((' (lambda (n) ((' (lambda (loop) (l
            oop 0))) (' (lambda (t) ((' (lambda (v) ((' (lambd
            a (s) (if s (eval s) (if (= failure (car v)) (loop
             (+ t 1)) failure)))) (examine (car (cdr (cdr v)))
             n)))) (display (try (display t) fas nil)))))))) (
            display (+ 419 (size (display fas))))))) (' (displ
            ay elegant-expression))))) (' (lambda (x n) (if (a
            tom x) false (if (< 1 (size (car x))) (car x) (exa
            mine (cdr x) n))))))))
display     ((' (lambda (examine) ((' (lambda (fas) ((' (lambd
            a (n) ((' (lambda (loop) (loop 0))) (' (lambda (t)
             ((' (lambda (v) ((' (lambda (s) (if s (eval s) (i
            f (= failure (car v)) (loop (+ t 1)) failure)))) (
            examine (car (cdr (cdr v))) n)))) (display (try (d
            isplay t) fas nil)))))))) (display (+ 419 (size (d
            isplay fas))))))) (' (display elegant-expression))
            ))) (' (lambda (x n) (if (atom x) false (if (< 1 (
            size (car x))) (car x) (examine (cdr x) n))))))
display     447
display     (display elegant-expression)
display     447
display     0
display     (success elegant-expression (elegant-expression))
value       elegant-expression
 
End of LISP Run
 
Elapsed time is 0 seconds.
