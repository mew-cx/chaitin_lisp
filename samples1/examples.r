LISP Interpreter Run

[ Test new lisp & show how it works ]
 
aa [ initially all atoms eval to self ]

expression  aa
value       aa

nil [ except nil = the empty list ]

expression  nil
value       ()

'aa [ quote = literally ]

expression  (' aa)
value       aa

'(aa bb cc) [ delimiters are ' " ( ) [ ] blank \n ]

expression  (' (aa bb cc))
value       (aa bb cc)

(aa bb cc) [ what if quote omitted?! ]

expression  (aa bb cc)
value       aa

'car '(aa bb cc) [ here effect is different ]

expression  (' (car (' (aa bb cc))))
value       (car (' (aa bb cc)))

car '(aa bb cc) [ car = first element of list ]

expression  (car (' (aa bb cc)))
value       aa

car '((a b)c d)

expression  (car (' ((a b) c d)))
value       (a b)

car '(aa)

expression  (car (' (aa)))
value       aa

car aa [ ignore error ]

expression  (car aa)
value       aa

cdr '(aa bb cc) [ cdr = rest of list ]

expression  (cdr (' (aa bb cc)))
value       (bb cc)

cdr '((a b)c d)

expression  (cdr (' ((a b) c d)))
value       (c d)

cdr '(aa)

expression  (cdr (' (aa)))
value       ()

cdr aa [ ignore error ]

expression  (cdr aa)
value       aa

cadr '(aa bb cc) [ combinations of car & cdr ]

expression  (car (cdr (' (aa bb cc))))
value       bb

caddr '(aa bb cc)

expression  (car (cdr (cdr (' (aa bb cc)))))
value       cc

cons 'aa '(bb cc) [ cons = inverse of car & cdr ]

expression  (cons (' aa) (' (bb cc)))
value       (aa bb cc)

cons'(a b)'(c d)

expression  (cons (' (a b)) (' (c d)))
value       ((a b) c d)

cons aa nil

expression  (cons aa nil)
value       (aa)

cons aa ()

expression  (cons aa ())
value       (aa)

cons aa bb [ ignore error ]

expression  (cons aa bb)
value       aa

("cons aa) [ supply nil for missing arguments ]

expression  (cons aa)
value       (aa)

("cons '(aa) '(bb) '(cc)) [ ignore extra arguments ]

expression  (cons (' (aa)) (' (bb)) (' (cc)))
value       ((aa) bb)

atom ' aa [ is-atomic? predicate ]

expression  (atom (' aa))
value       true

atom '(aa)

expression  (atom (' (aa)))
value       false

atom '(  )

expression  (atom (' ()))
value       true

= aa bb [ are-equal-S-expressions? predicate ]

expression  (= aa bb)
value       false

= aa aa

expression  (= aa aa)
value       true

= '(a b)'(a b)

expression  (= (' (a b)) (' (a b)))
value       true

= '(a b)'(a x)

expression  (= (' (a b)) (' (a x)))
value       false

if true x y [ if ... then ... else ... ]

expression  (if true x y)
value       x

if false x y

expression  (if false x y)
value       y

if xxx x y [ anything not false is true ]

expression  (if xxx x y)
value       x

[ display intermediate results ]
cdr display cdr display cdr display '( a b c d e )

expression  (cdr (display (cdr (display (cdr (display (' (a b 
            c d e))))))))
display     (a b c d e)
display     (b c d e)
display     (c d e)
value       (d e)

('lambda(x y)x 1 2) [ lambda expression ]

expression  ((' (lambda (x y) x)) 1 2)
value       1

('lambda(x y)y 1 2)

expression  ((' (lambda (x y) y)) 1 2)
value       2

('lambda(x y)cons y cons x nil 1 2)

expression  ((' (lambda (x y) (cons y (cons x nil)))) 1 2)
value       (2 1)

(if true  "car "cdr '(a b c)) [ function expressions ]

expression  ((if true car cdr) (' (a b c)))
value       a

(if false "car "cdr '(a b c))

expression  ((if false car cdr) (' (a b c)))
value       (b c)

('lambda()cons x cons y nil) [ function with no arguments ]

expression  ((' (lambda () (cons x (cons y nil)))))
value       (x y)

[ Here is a way to create an expression and then
  evaluate it in the current environment.  EVAL (see
  below) does this using a clean environment instead. ]
(display
cons "lambda cons nil cons display 'cons x cons y nil nil)

expression  ((display (cons lambda (cons nil (cons (display ('
             (cons x (cons y nil)))) nil)))))
display     (cons x (cons y nil))
display     (lambda () (cons x (cons y nil)))
value       (x y)

[ let ... be ... in ... ]
 
let x a cons x cons x nil [ first case, let x be ... in ... ]

expression  ((' (lambda (x) (cons x (cons x nil)))) a)
value       (a a)

x

expression  x
value       x

[ second case, let (f x) be ... in ... ]
 
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

append '(a b c) '(d e f) [ concatenate-list primitive ]

expression  (append (' (a b c)) (' (d e f)))
value       (a b c d e f)

[ define "by hand" temporarily ]
 
let (cat x y) if atom x y cons car x (cat cdr x y)
    (cat '(a b c) '(d e f))

expression  ((' (lambda (cat) (cat (' (a b c)) (' (d e f))))) 
            (' (lambda (x y) (if (atom x) y (cons (car x) (cat
             (cdr x) y))))))
value       (a b c d e f)

cat

expression  cat
value       cat

[ define "by hand" permanently ]
 
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

define x (a b c) [ define atom, not function ]

define      x
value       (a b c)

cons x nil

expression  (cons x nil)
value       ((a b c))

define x (d e f)

define      x
value       (d e f)

cons x nil

expression  (cons x nil)
value       ((d e f))

size abc [ size of S-expression in characters ]

expression  (size abc)
value       3

size ' ( a b c )

expression  (size (' (a b c)))
value       7

length ' ( a b c ) [ number of elements in list ]

expression  (length (' (a b c)))
value       3

length display bits ' a [ S-expression --> bits ]

expression  (length (display (bits (' a))))
display     (0 1 1 0 0 0 0 1 0 0 0 0 1 0 1 0)
value       16

length display bits ' abc [ extra character is \n ]

expression  (length (display (bits (' abc))))
display     (0 1 1 0 0 0 0 1 0 1 1 0 0 0 1 0 0 1 1 0 0 0 1 1 0
             0 0 0 1 0 1 0)
value       32

length display bits nil

expression  (length (display (bits nil)))
display     (0 0 1 0 1 0 0 0 0 0 1 0 1 0 0 1 0 0 0 0 1 0 1 0)
value       24

length display bits ' (a)

expression  (length (display (bits (' (a)))))
display     (0 0 1 0 1 0 0 0 0 1 1 0 0 0 0 1 0 0 1 0 1 0 0 1 0
             0 0 0 1 0 1 0)
value       32

[ plus ]
+ abc 15 [ not number --> 0 ]

expression  (+ abc 15)
value       15

+ '(abc) 15

expression  (+ (' (abc)) 15)
value       15

+ 10 15

expression  (+ 10 15)
value       25

- 10 15 [ non-negative minus ]

expression  (- 10 15)
value       0

- 15 10

expression  (- 15 10)
value       5

* 10 15 [ times ]

expression  (* 10 15)
value       150

^ 10 15 [ power ]

expression  (^ 10 15)
value       1000000000000000

< 10 15 [ less than ]

expression  (< 10 15)
value       true

< 10 10

expression  (< 10 10)
value       false

> 15 10 [ greater than ]

expression  (> 15 10)
value       true

> 10 10

expression  (> 10 10)
value       false

<= 15 10 [ less than or equal ]

expression  (<= 15 10)
value       false

<= 10 10

expression  (<= 10 10)
value       true

>= 10 15 [ greater than or equal ]

expression  (>= 10 15)
value       false

>= 10 10

expression  (>= 10 10)
value       true

= 10 15 [ equal ]

expression  (= 10 15)
value       false

= 10 10

expression  (= 10 10)
value       true

[ here not number isn't considered zero ]
= abc 0

expression  (= abc 0)
value       false

= 0003 3 [ other ways numbers are funny ]

expression  (= 3 3)
value       true

000099 [ leading zeros removed ]

expression  99
value       99

[ and numbers are constants ]
let x b cons x cons x nil

expression  ((' (lambda (x) (cons x (cons x nil)))) b)
value       (b b)

let 99 45 cons 99 cons 99 nil

expression  ((' (lambda (99) (cons 99 (cons 99 nil)))) 45)
value       (99 99)

define 99 45

define      99
value       45

cons 99 cons 99 nil

expression  (cons 99 (cons 99 nil))
value       (99 99)

[ decimal<-->binary conversions ]
 
base10-to-2 255

expression  (base10-to-2 255)
value       (1 1 1 1 1 1 1 1)

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

[ illustrate eval & try ]
 
eval display '+ display 5 display 15

expression  (eval (display (' (+ (display 5) (display 15)))))
display     (+ (display 5) (display 15))
display     5
display     15
value       20

try 0 display '+ display 5 display 15 nil

expression  (try 0 (display (' (+ (display 5) (display 15)))) 
            nil)
display     (+ (display 5) (display 15))
value       (success 20 (5 15))

try 0 display '+ debug 5 debug 15 nil

expression  (try 0 (display (' (+ (debug 5) (debug 15)))) nil)
display     (+ (debug 5) (debug 15))
debug       5
debug       15
value       (success 20 ())

[ eval & try use initial variable bindings ]
 
cons x nil

expression  (cons x nil)
value       ((d e f))

eval 'cons x nil

expression  (eval (' (cons x nil)))
value       (x)

try 0 'cons x nil nil

expression  (try 0 (' (cons x nil)) nil)
value       (success (x) ())

define five! [ to illustrate time limits ]
let (f x) if = display x 0 1 * x (f - x 1)
    (f 5)

define      five!
value       ((' (lambda (f) (f 5))) (' (lambda (x) (if (= (dis
            play x) 0) 1 (* x (f (- x 1)))))))

eval five!

expression  (eval five!)
display     5
display     4
display     3
display     2
display     1
display     0
value       120

[ by the way, numbers can be big: ]
let (f x) if = x 0 1 * x (f - x 1)
    (f 100) [ one hundred factorial! ]

expression  ((' (lambda (f) (f 100))) (' (lambda (x) (if (= x 
            0) 1 (* x (f (- x 1)))))))
value       93326215443944152681699238856266700490715968264381
            62146859296389521759999322991560894146397615651828
            62536979208272237582511852109168640000000000000000
            00000000

[ time limit is nesting depth of re-evaluations
  due to function calls & eval & try ]
 
try 0 five! nil

expression  (try 0 five! nil)
value       (failure out-of-time ())

try 1 five! nil

expression  (try 1 five! nil)
value       (failure out-of-time ())

try 2 five! nil

expression  (try 2 five! nil)
value       (failure out-of-time (5))

try 3 five! nil

expression  (try 3 five! nil)
value       (failure out-of-time (5 4))

try 4 five! nil

expression  (try 4 five! nil)
value       (failure out-of-time (5 4 3))

try 5 five! nil

expression  (try 5 five! nil)
value       (failure out-of-time (5 4 3 2))

try 6 five! nil

expression  (try 6 five! nil)
value       (failure out-of-time (5 4 3 2 1))

try 7 five! nil

expression  (try 7 five! nil)
value       (success 120 (5 4 3 2 1 0))

try no-time-limit five! nil

expression  (try no-time-limit five! nil)
value       (success 120 (5 4 3 2 1 0))

define two* [ to illustrate running out of data ]
 let (f x) if = 0 x nil
           cons * 2 display read-bit (f - x 1)
     (f 5)

define      two*
value       ((' (lambda (f) (f 5))) (' (lambda (x) (if (= 0 x)
             nil (cons (* 2 (display (read-bit))) (f (- x 1)))
            ))))

try 6 two* '(1 0 1 0 1)

expression  (try 6 two* (' (1 0 1 0 1)))
value       (failure out-of-time (1 0 1 0 1))

try 7 two* '(1 0 1 0 1)

expression  (try 7 two* (' (1 0 1 0 1)))
value       (success (2 0 2 0 2) (1 0 1 0 1))

try 7 two* '(1 0 1)

expression  (try 7 two* (' (1 0 1)))
value       (failure out-of-data (1 0 1))

try no-time-limit two* '(1 0 1)

expression  (try no-time-limit two* (' (1 0 1)))
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

[ illustrate nested try's ]
[ most constraining limit wins ]
 
try 20
'cons abcdef try 10
'let (f n) (f display + n 1) (f 0) [infinite loop]
nil nil

expression  (try 20 (' (cons abcdef (try 10 (' ((' (lambda (f)
             (f 0))) (' (lambda (n) (f (display (+ n 1))))))) 
            nil))) nil)
value       (success (abcdef failure out-of-time (1 2 3 4 5 6 
            7 8 9)) ())

try 10
'cons abcdef try 20
'let (f n) (f display + n 1) (f 0) [infinite loop]
nil nil

expression  (try 10 (' (cons abcdef (try 20 (' ((' (lambda (f)
             (f 0))) (' (lambda (n) (f (display (+ n 1))))))) 
            nil))) nil)
value       (failure out-of-time ())

try 10
'cons abcdef try 20
'let (f n) (f debug + n 1) (f 0) [infinite loop]
nil nil

expression  (try 10 (' (cons abcdef (try 20 (' ((' (lambda (f)
             (f 0))) (' (lambda (n) (f (debug (+ n 1))))))) ni
            l))) nil)
debug       1
debug       2
debug       3
debug       4
debug       5
debug       6
debug       7
debug       8
value       (failure out-of-time ())

try no-time-limit
'cons abcdef try 20
'let (f n) (f display + n 1) (f 0) [infinite loop]
nil nil

expression  (try no-time-limit (' (cons abcdef (try 20 (' ((' 
            (lambda (f) (f 0))) (' (lambda (n) (f (display (+ 
            n 1))))))) nil))) nil)
value       (success (abcdef failure out-of-time (1 2 3 4 5 6 
            7 8 9 10 11 12 13 14 15 16 17 18 19)) ())

try 10
'cons abcdef try no-time-limit
'let (f n) (f display + n 1) (f 0) [infinite loop]
nil nil

expression  (try 10 (' (cons abcdef (try no-time-limit (' ((' 
            (lambda (f) (f 0))) (' (lambda (n) (f (display (+ 
            n 1))))))) nil))) nil)
value       (failure out-of-time ())

[ illustrate read-bit & read-exp ]
 
read-bit

expression  (read-bit)
value       out-of-data

read-exp

expression  (read-exp)
value       out-of-data

try 0 'read-bit nil

expression  (try 0 (' (read-bit)) nil)
value       (failure out-of-data ())

try 0 'read-exp nil

expression  (try 0 (' (read-exp)) nil)
value       (failure out-of-data ())

try 0 'read-exp bits 'abc

expression  (try 0 (' (read-exp)) (bits (' abc)))
value       (success abc ())

try 0 'read-exp bits '(abc def)

expression  (try 0 (' (read-exp)) (bits (' (abc def))))
value       (success (abc def) ())

try 0 'read-exp bits '(abc(def ghi)jkl)

expression  (try 0 (' (read-exp)) (bits (' (abc (def ghi) jkl)
            )))
value       (success (abc (def ghi) jkl) ())

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

try 0 'read-exp bits '(a b c)

expression  (try 0 (' (read-exp)) (bits (' (a b c))))
value       (success (a b c) ())

try 0 'cons read-exp cons read-exp nil bits '(a b c)

expression  (try 0 (' (cons (read-exp) (cons (read-exp) nil)))
             (bits (' (a b c))))
value       (failure out-of-data ())

try 0 'cons read-exp cons read-exp nil
      append bits '(a b c) bits '(d e f)

expression  (try 0 (' (cons (read-exp) (cons (read-exp) nil)))
             (append (bits (' (a b c))) (bits (' (d e f)))))
value       (success ((a b c) (d e f)) ())

bits 'a [ to get characters codes ]

expression  (bits (' a))
value       (0 1 1 0 0 0 0 1 0 0 0 0 1 0 1 0)

try 0 'read-exp '(0 1 1 0  0 0 0 1) ['a' but no \n character]

expression  (try 0 (' (read-exp)) (' (0 1 1 0 0 0 0 1)))
value       (failure out-of-data ())

try 0 'read-exp '(0 1 1 0  0 0 0 1  0 0 0 0  1 0 1)[0 missing]

expression  (try 0 (' (read-exp)) (' (0 1 1 0 0 0 0 1 0 0 0 0 
            1 0 1)))
value       (failure out-of-data ())

try 0 'read-exp '(0 1 1 0  0 0 0 1  0 0 0 0  1 0 1 0) [okay]

expression  (try 0 (' (read-exp)) (' (0 1 1 0 0 0 0 1 0 0 0 0 
            1 0 1 0)))
value       (success a ())

[ if we get to \n reading 8 bits at a time,
  we will always interpret as a valid S-expression ]
try 0 'read-exp
      '(0 0 0 0 1 0 1 0) [nothing in record; only \n]

expression  (try 0 (' (read-exp)) (' (0 0 0 0 1 0 1 0)))
value       (success () ())

try 0 'read-exp '(1 1 1 1  1 1 1 1  [unprintable character]
                  0 0 0 0  1 0 1 0) [is deleted]

expression  (try 0 (' (read-exp)) (' (1 1 1 1 1 1 1 1 0 0 0 0 
            1 0 1 0)))
value       (success () ())

bits () [ to get characters codes ]

expression  (bits ())
value       (0 0 1 0 1 0 0 0 0 0 1 0 1 0 0 1 0 0 0 0 1 0 1 0)

[ three left parentheses==>three right parentheses supplied ]
try 0 'read-exp '(0 0 1 0  1 0 0 0  0 0 1 0  1 0 0 0
                  0 0 1 0  1 0 0 0  0 0 0 0  1 0 1 0)

expression  (try 0 (' (read-exp)) (' (0 0 1 0 1 0 0 0 0 0 1 0 
            1 0 0 0 0 0 1 0 1 0 0 0 0 0 0 0 1 0 1 0)))
value       (success ((())) ())

[ right parenthesis 'a'==>left parenthesis supplied ]
try 0 'read-exp '(0 0 1 0  1 0 0 1  0 1 1 0  0 0 0 1
                  0 0 0 0  1 0 1 0) [ & extra 'a' ignored ]

expression  (try 0 (' (read-exp)) (' (0 0 1 0 1 0 0 1 0 1 1 0 
            0 0 0 1 0 0 0 0 1 0 1 0)))
value       (success () ())

[ 'a' right parenthesis==>'a' is seen & parenthesis ]
try 0 'read-exp '(0 1 1 0  0 0 0 1  0 0 1 0  1 0 0 1
                  0 0 0 0  1 0 1 0) [ is ignored ]

expression  (try 0 (' (read-exp)) (' (0 1 1 0 0 0 0 1 0 0 1 0 
            1 0 0 1 0 0 0 0 1 0 1 0)))
value       (success a ())

End of LISP Run

Elapsed time is 1 seconds.
