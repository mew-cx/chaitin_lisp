LISP Interpreter Run

[[[
    Show that a formal system of lisp complexity
    H_lisp (FAS) = N cannot enable us to exhibit
    an elegant S-expression of size greater than N + 410.
    An elegant lisp expression is one with the property
    that no smaller S-expression has the same value.
    Setting: formal axiomatic system is never-ending
    lisp expression that displays elegant S-expressions.
]]]
 
[Here is the key expression.]
 
define expression
 
let (examine x)
    if atom x  false
    if < n size car x  car x
    (examine cdr x)
 
let fas 'display ^ 10 430 [insert FAS here preceeded by ']
 
let n + 410 size fas
 
let t 0
 
let (loop)
  let v try t fas nil
  let s (examine caddr v)
  if s eval s
  if = success car v failure
  let t + t 1
  (loop)
 
(loop)

define      expression
value       ((' (lambda (examine) ((' (lambda (fas) ((' (lambd
            a (n) ((' (lambda (t) ((' (lambda (loop) (loop))) 
            (' (lambda () ((' (lambda (v) ((' (lambda (s) (if 
            s (eval s) (if (= success (car v)) failure ((' (la
            mbda (t) (loop))) (+ t 1)))))) (examine (car (cdr 
            (cdr v))))))) (try t fas nil))))))) 0))) (+ 410 (s
            ize fas))))) (' (display (^ 10 430)))))) (' (lambd
            a (x) (if (atom x) false (if (< n (size (car x))) 
            (car x) (examine (cdr x)))))))

[Size expression.]
size expression

expression  (size expression)
value       430

[Run expression & show that it knows its own size
 and can find something bigger than it is.]
eval expression

expression  (eval expression)
value       10000000000000000000000000000000000000000000000000
            00000000000000000000000000000000000000000000000000
            00000000000000000000000000000000000000000000000000
            00000000000000000000000000000000000000000000000000
            00000000000000000000000000000000000000000000000000
            00000000000000000000000000000000000000000000000000
            00000000000000000000000000000000000000000000000000
            00000000000000000000000000000000000000000000000000
            0000000000000000000000000000000

[Here it fails to find anything bigger than it is.]
 
let (examine x)
    if atom x  false
    if < n size car x  car x
    (examine cdr x)
 
let fas 'display ^ 10 429 [insert FAS here preceeded by ']
 
let n + 410 size fas
 
let t 0
 
let (loop)
  let v try t fas nil
  let s (examine caddr v)
  if s eval s
  if = success car v failure
  let t + t 1
  (loop)
 
(loop)

expression  ((' (lambda (examine) ((' (lambda (fas) ((' (lambd
            a (n) ((' (lambda (t) ((' (lambda (loop) (loop))) 
            (' (lambda () ((' (lambda (v) ((' (lambda (s) (if 
            s (eval s) (if (= success (car v)) failure ((' (la
            mbda (t) (loop))) (+ t 1)))))) (examine (car (cdr 
            (cdr v))))))) (try t fas nil))))))) 0))) (+ 410 (s
            ize fas))))) (' (display (^ 10 429)))))) (' (lambd
            a (x) (if (atom x) false (if (< n (size (car x))) 
            (car x) (examine (cdr x)))))))
value       failure

End of LISP Run

Elapsed time is 0 seconds.
