LISP Interpreter Run
 
[examples.l    ]
 
[Test new lisp.]
 
' (ab c d)
 
expression  (' (ab c d))
value       (ab c d)
 
'(ab   cd  )
 
expression  (' (ab cd))
value       (ab cd)
 
car '(aa bb cc)
 
expression  (car (' (aa bb cc)))
value       aa
 
cdr '(aa bb cc)
 
expression  (cdr (' (aa bb cc)))
value       (bb cc)
 
cadr '(aa bb cc)
 
expression  (car (cdr (' (aa bb cc))))
value       bb
 
caddr '(aa bb cc)
 
expression  (car (cdr (cdr (' (aa bb cc)))))
value       cc
 
cons '(aa bb cc) '(dd ee ff)
 
expression  (cons (' (aa bb cc)) (' (dd ee ff)))
value       ((aa bb cc) dd ee ff)
 
car aa
 
expression  (car aa)
value       aa
 
cdr aa
 
expression  (cdr aa)
value       aa
 
cons aa bb
 
expression  (cons aa bb)
value       aa
 
let x a x
 
expression  ((' (lambda (x) x)) a)
value       a
 
x
 
expression  x
value       x
 
atom ' aa
 
expression  (atom (' aa))
value       true
 
atom '(aa)
 
expression  (atom (' (aa)))
value       false
 
if true x y
 
expression  (if true x y)
value       x
 
if false x y
 
expression  (if false x y)
value       y
 
if xxx x y
 
expression  (if xxx x y)
value       x
 
let (f x) if atom display x x (f car x)
 (f '(((a)b)c))
 
expression  ((' (lambda (f) (f (' (((a) b) c))))) (' (lambda (
            x) (if (atom (display x)) x (f (car x))))))
display     (((a) b) c)
display     ((a) b)
display     (a)
display     a
value       a
 
f
 
expression  f
value       f
 
let (cat x y) if atom x y cons car x (cat cdr x y)
    (cat '(a b c) '(d e f))
 
expression  ((' (lambda (cat) (cat (' (a b c)) (' (d e f)))))
            (' (lambda (x y) (if (atom x) y (cons (car x) (cat
             (cdr x) y))))))
value       (a b c d e f)
 
cat
 
expression  cat
value       cat
 
define (cat x y) if atom x y cons car x (cat cdr x y)
 
define      cat
value       (lambda (x y) (if (atom x) y (cons (car x) (cat (c
            dr x) y))))
 
cat
 
expression  cat
value       (lambda (x y) (if (atom x) y (cons (car x) (cat (c
            dr x) y))))
 
(cat '(a b c) '(d e f))
 
expression  (cat (' (a b c)) (' (d e f)))
value       (a b c d e f)
 
define x cadr '(a b c)
 
define      x
value       (car (cdr (' (a b c))))
 
x
 
expression  x
value       (car (cdr (' (a b c))))
 
define x caddr '(a b c)
 
define      x
value       (car (cdr (cdr (' (a b c)))))
 
x
 
expression  x
value       (car (cdr (cdr (' (a b c)))))
 
length display
bits ' a
 
expression  (length (display (bits (' a))))
display     (0 1 1 0 0 0 0 1 0 0 0 0 1 0 1 0)
value       16
 
length display
bits ' abc
 
expression  (length (display (bits (' abc))))
display     (0 1 1 0 0 0 0 1 0 1 1 0 0 0 1 0 0 1 1 0 0 0 1 1 0
             0 0 0 1 0 1 0)
value       32
 
nil
 
expression  nil
value       ()
 
length display
bits nil
 
expression  (length (display (bits nil)))
display     (0 0 1 0 1 0 0 0 0 0 1 0 1 0 0 1 0 0 0 0 1 0 1 0)
value       24
 
length display
bits ' (a)
 
expression  (length (display (bits (' (a)))))
display     (0 0 1 0 1 0 0 0 0 1 1 0 0 0 0 1 0 0 1 0 1 0 0 1 0
             0 0 0 1 0 1 0)
value       32
 
size abc
 
expression  (size abc)
value       3
 
size ' ( a b c )
 
expression  (size (' (a b c)))
value       7
 
length ' ( a b c )
 
expression  (length (' (a b c)))
value       3
 
+ abc 15
 
expression  (+ abc 15)
value       15
 
+ '(abc) 15
 
expression  (+ (' (abc)) 15)
value       15
 
+ 10 15
 
expression  (+ 10 15)
value       25
 
- 10 15
 
expression  (- 10 15)
value       0
 
- 15 10
 
expression  (- 15 10)
value       5
 
* 10 15
 
expression  (* 10 15)
value       150
 
^ 10 15
 
expression  (^ 10 15)
value       1000000000000000
 
< 10 15
 
expression  (< 10 15)
value       true
 
< 10 10
 
expression  (< 10 10)
value       false
 
> 10 15
 
expression  (> 10 15)
value       false
 
> 10 10
 
expression  (> 10 10)
value       false
 
<= 10 15
 
expression  (<= 10 15)
value       true
 
<= 10 10
 
expression  (<= 10 10)
value       true
 
>= 10 15
 
expression  (>= 10 15)
value       false
 
>= 10 10
 
expression  (>= 10 10)
value       true
 
= 10 15
 
expression  (= 10 15)
value       false
 
= 10 10
 
expression  (= 10 10)
value       true
 
let (f x) if = 0 x 1 * display x (f - x 1)
    (f 5)
 
expression  ((' (lambda (f) (f 5))) (' (lambda (x) (if (= 0 x)
             1 (* (display x) (f (- x 1)))))))
display     5
display     4
display     3
display     2
display     1
value       120
 
try 0
'let (f x) if = 0 x 1 * display x (f - x 1)
     (f 5)
nil
 
expression  (try 0 (' ((' (lambda (f) (f 5))) (' (lambda (x) (
            if (= 0 x) 1 (* (display x) (f (- x 1)))))))) nil)
value       (failure out-of-time ())
 
try 1
'let (f x) if = 0 x 1 * display x (f - x 1)
     (f 5)
nil
 
expression  (try 1 (' ((' (lambda (f) (f 5))) (' (lambda (x) (
            if (= 0 x) 1 (* (display x) (f (- x 1)))))))) nil)
value       (failure out-of-time ())
 
try 2
'let (f x) if = 0 x 1 * display x (f - x 1)
     (f 5)
nil
 
expression  (try 2 (' ((' (lambda (f) (f 5))) (' (lambda (x) (
            if (= 0 x) 1 (* (display x) (f (- x 1)))))))) nil)
value       (failure out-of-time (5))
 
try 3
'let (f x) if = 0 x 1 * display x (f - x 1)
     (f 5)
nil
 
expression  (try 3 (' ((' (lambda (f) (f 5))) (' (lambda (x) (
            if (= 0 x) 1 (* (display x) (f (- x 1)))))))) nil)
value       (failure out-of-time (5 4))
 
try 4
'let (f x) if = 0 x 1 * display x (f - x 1)
     (f 5)
nil
 
expression  (try 4 (' ((' (lambda (f) (f 5))) (' (lambda (x) (
            if (= 0 x) 1 (* (display x) (f (- x 1)))))))) nil)
value       (failure out-of-time (5 4 3))
 
try 5
'let (f x) if = 0 x 1 * display x (f - x 1)
     (f 5)
nil
 
expression  (try 5 (' ((' (lambda (f) (f 5))) (' (lambda (x) (
            if (= 0 x) 1 (* (display x) (f (- x 1)))))))) nil)
value       (failure out-of-time (5 4 3 2))
 
try 6
'let (f x) if = 0 x 1 * display x (f - x 1)
     (f 5)
nil
 
expression  (try 6 (' ((' (lambda (f) (f 5))) (' (lambda (x) (
            if (= 0 x) 1 (* (display x) (f (- x 1)))))))) nil)
value       (failure out-of-time (5 4 3 2 1))
 
try 7
'let (f x) if = 0 x 1 * display x (f - x 1)
     (f 5)
nil
 
expression  (try 7 (' ((' (lambda (f) (f 5))) (' (lambda (x) (
            if (= 0 x) 1 (* (display x) (f (- x 1)))))))) nil)
value       (success 120 (5 4 3 2 1))
 
try no-time-limit
'let (f x) if = 0 x 1 * display x (f - x 1)
     (f 5)
nil
 
expression  (try no-time-limit (' ((' (lambda (f) (f 5))) (' (
            lambda (x) (if (= 0 x) 1 (* (display x) (f (- x 1)
            ))))))) nil)
value       (success 120 (5 4 3 2 1))
 
eval display '+ 5 15
 
expression  (eval (display (' (+ 5 15))))
display     (+ 5 15)
value       20
 
try 6
'let (f x) if = 0 x nil
           cons * 2 display read-bit (f - x 1)
     (f 5)
'(1 0 1 0 1)
 
expression  (try 6 (' ((' (lambda (f) (f 5))) (' (lambda (x) (
            if (= 0 x) nil (cons (* 2 (display (read-bit))) (f
             (- x 1)))))))) (' (1 0 1 0 1)))
value       (failure out-of-time (1 0 1 0 1))
 
try 7
'let (f x) if = 0 x nil
           cons * 2 display read-bit (f - x 1)
     (f 5)
'(1 0 1 0 1)
 
expression  (try 7 (' ((' (lambda (f) (f 5))) (' (lambda (x) (
            if (= 0 x) nil (cons (* 2 (display (read-bit))) (f
             (- x 1)))))))) (' (1 0 1 0 1)))
value       (success (2 0 2 0 2) (1 0 1 0 1))
 
try 7
'let (f x) if = 0 x nil
           cons * 2 display read-bit (f - x 1)
     (f 5)
'(1 0 1)
 
expression  (try 7 (' ((' (lambda (f) (f 5))) (' (lambda (x) (
            if (= 0 x) nil (cons (* 2 (display (read-bit))) (f
             (- x 1)))))))) (' (1 0 1)))
value       (failure out-of-data (1 0 1))
 
try no-time-limit
'let (f x) if = 0 x nil
           cons * 2 display read-bit (f - x 1)
     (f 5)
'(1 0 1)
 
expression  (try no-time-limit (' ((' (lambda (f) (f 5))) (' (
            lambda (x) (if (= 0 x) nil (cons (* 2 (display (re
            ad-bit))) (f (- x 1)))))))) (' (1 0 1)))
value       (failure out-of-data (1 0 1))
 
try 18
'let (f x) if = 0 x nil
           cons * 2 display read-bit (f - x 1)
     (f 16)
bits 'a
 
expression  (try 18 (' ((' (lambda (f) (f 16))) (' (lambda (x)
             (if (= 0 x) nil (cons (* 2 (display (read-bit)))
            (f (- x 1)))))))) (bits (' a)))
value       (success (0 2 2 0 0 0 0 2 0 0 0 0 2 0 2 0) (0 1 1
            0 0 0 0 1 0 0 0 0 1 0 1 0))
 
base10-to-2 128
 
expression  (base10-to-2 128)
value       (1 0 0 0 0 0 0 0)
 
base10-to-2 256
 
expression  (base10-to-2 256)
value       (1 0 0 0 0 0 0 0 0)
 
base10-to-2 257
 
expression  (base10-to-2 257)
value       (1 0 0 0 0 0 0 0 1)
 
base2-to-10 '(1 1 1 1)
 
expression  (base2-to-10 (' (1 1 1 1)))
value       15
 
base2-to-10 '(1 0 0 0 0)
 
expression  (base2-to-10 (' (1 0 0 0 0)))
value       16
 
base2-to-10 '(1 0 0 0 1)
 
expression  (base2-to-10 (' (1 0 0 0 1)))
value       17
 
try 20
'cons abcdef try 10
'let (f n) (f display + n 1) (f 0) [Infinite loop.]
nil nil
 
expression  (try 20 (' (cons abcdef (try 10 (' ((' (lambda (f)
             (f 0))) (' (lambda (n) (f (display (+ n 1)))))))
            nil))) nil)
value       (success (abcdef failure out-of-time (1 2 3 4 5 6
            7 8 9)) ())
 
try 10
'cons abcdef try 20
'let (f n) (f display + n 1) (f 0) [Infinite loop.]
nil nil
 
expression  (try 10 (' (cons abcdef (try 20 (' ((' (lambda (f)
             (f 0))) (' (lambda (n) (f (display (+ n 1)))))))
            nil))) nil)
value       (failure out-of-time ())
 
try no-time-limit
'cons abcdef try 20
'let (f n) (f display + n 1) (f 0) [Infinite loop.]
nil nil
 
expression  (try no-time-limit (' (cons abcdef (try 20 (' (('
            (lambda (f) (f 0))) (' (lambda (n) (f (display (+
            n 1))))))) nil))) nil)
value       (success (abcdef failure out-of-time (1 2 3 4 5 6
            7 8 9 10 11 12 13 14 15 16 17 18 19)) ())
 
try 10
'cons abcdef try no-time-limit
'let (f n) (f display + n 1) (f 0) [Infinite loop.]
nil nil
 
expression  (try 10 (' (cons abcdef (try no-time-limit (' (('
            (lambda (f) (f 0))) (' (lambda (n) (f (display (+
            n 1))))))) nil))) nil)
value       (failure out-of-time ())
 
read-bit
 
expression  (read-bit)
value       out-of-data
 
read-exp
 
expression  (read-exp)
value       out-of-data
 
bits '(abc def)
 
expression  (bits (' (abc def)))
value       (0 0 1 0 1 0 0 0 0 1 1 0 0 0 0 1 0 1 1 0 0 0 1 0 0
             1 1 0 0 0 1 1 0 0 1 0 0 0 0 0 0 1 1 0 0 1 0 0 0 1
             1 0 0 1 0 1 0 1 1 0 0 1 1 0 0 0 1 0 1 0 0 1 0 0 0
             0 1 0 1 0)
 
try no-time-limit 'read-exp bits '(abc def)
 
expression  (try no-time-limit (' (read-exp)) (bits (' (abc de
            f))))
value       (success (abc def) ())
 
bits 'abc
 
expression  (bits (' abc))
value       (0 1 1 0 0 0 0 1 0 1 1 0 0 0 1 0 0 1 1 0 0 0 1 1 0
             0 0 0 1 0 1 0)
 
'(abc (def ghi) j)
 
expression  (' (abc (def ghi) j))
value       (abc (def ghi) j)
 
try 0 'read-bit nil
 
expression  (try 0 (' (read-bit)) nil)
value       (failure out-of-data ())
 
try 0 'read-exp nil
 
expression  (try 0 (' (read-exp)) nil)
value       (failure out-of-data ())
 
try 0 'read-exp bits 'abc
 
expression  (try 0 (' (read-exp)) (bits (' abc)))
value       (success abc ())
 
try 0 'cons read-exp cons read-bit nil bits 'abc
 
expression  (try 0 (' (cons (read-exp) (cons (read-bit) nil)))
             (bits (' abc)))
value       (failure out-of-data ())
 
try 0 'cons read-exp cons read-bit nil append bits 'abc '(0)
 
expression  (try 0 (' (cons (read-exp) (cons (read-bit) nil)))
             (append (bits (' abc)) (' (0))))
value       (success (abc 0) ())
 
try 0 'cons read-exp cons read-bit nil append bits 'abc '(1)
 
expression  (try 0 (' (cons (read-exp) (cons (read-bit) nil)))
             (append (bits (' abc)) (' (1))))
value       (success (abc 1) ())
 
try 0 'read-exp bits '(a b)
 
expression  (try 0 (' (read-exp)) (bits (' (a b))))
value       (success (a b) ())
 
try 0 'cons read-exp cons read-bit nil bits '(a b)
 
expression  (try 0 (' (cons (read-exp) (cons (read-bit) nil)))
             (bits (' (a b))))
value       (failure out-of-data ())
 
try 0 'cons read-exp cons read-exp nil bits '(a b)
 
expression  (try 0 (' (cons (read-exp) (cons (read-exp) nil)))
             (bits (' (a b))))
value       (failure out-of-data ())
 
try 0 'read-exp bits '(abc(def ghi)j)
 
expression  (try 0 (' (read-exp)) (bits (' (abc (def ghi) j)))
            )
value       (success (abc (def ghi) j) ())
 
try 0 'read-exp '(1 1 1 1) [Character is incomplete.]
 
expression  (try 0 (' (read-exp)) (' (1 1 1 1)))
value       (failure out-of-data ())
 
try 0 'read-exp '(0 0 0 0 1 0 1 0) [Nothing in record; only \n.]
 
expression  (try 0 (' (read-exp)) (' (0 0 0 0 1 0 1 0)))
value       (success () ())
 
try 0 'cons read-exp cons read-exp nil append bits '(a b c) bits '(d e f)
 
expression  (try 0 (' (cons (read-exp) (cons (read-exp) nil)))
             (append (bits (' (a b c))) (bits (' (d e f)))))
value       (success ((a b c) (d e f)) ())
 
try 0 'read-exp '(1 1 1 1  1 1 1 1  0 0 0 0  1 0 1 0) [Invalid character.]
 
expression  (try 0 (' (read-exp)) (' (1 1 1 1 1 1 1 1 0 0 0 0
            1 0 1 0)))
value       (success () ())
 
= 0003 3
 
expression  (= 3 3)
value       true
 
000099
 
expression  99
value       99
 
x
 
expression  x
value       (car (cdr (cdr (' (a b c)))))
 
let x b x
 
expression  ((' (lambda (x) x)) b)
value       b
 
x
 
expression  x
value       (car (cdr (cdr (' (a b c)))))
 
let 99 45 99
 
expression  ((' (lambda (99) 99)) 45)
value       99
 
End of LISP Run
 
Elapsed time is 1 seconds.
