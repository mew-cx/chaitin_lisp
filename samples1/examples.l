[ Test new lisp & show how it works ]
 
aa [ initially all atoms eval to self ]
nil [ except nil = the empty list ]
'aa [ quote = literally ]
'(aa bb cc) [ delimiters are ' " ( ) [ ] blank \n ]
(aa bb cc) [ what if quote omitted?! ]
'car '(aa bb cc) [ here effect is different ]
car '(aa bb cc) [ car = first element of list ]
car '((a b)c d)
car '(aa)
car aa [ ignore error ]
cdr '(aa bb cc) [ cdr = rest of list ]
cdr '((a b)c d)
cdr '(aa)
cdr aa [ ignore error ]
cadr '(aa bb cc) [ combinations of car & cdr ]
caddr '(aa bb cc)
cons 'aa '(bb cc) [ cons = inverse of car & cdr ]
cons'(a b)'(c d)
cons aa nil
cons aa ()
cons aa bb [ ignore error ]
("cons aa) [ supply nil for missing arguments ]
("cons '(aa) '(bb) '(cc)) [ ignore extra arguments ]
atom ' aa [ is-atomic? predicate ]
atom '(aa)
atom '(  )
= aa bb [ are-equal-S-expressions? predicate ]
= aa aa
= '(a b)'(a b)
= '(a b)'(a x)
if true x y [ if ... then ... else ... ]
if false x y
if xxx x y [ anything not false is true ]
[ display intermediate results ]
cdr display cdr display cdr display '( a b c d e )
('lambda(x y)x 1 2) [ lambda expression ]
('lambda(x y)y 1 2)
('lambda(x y)cons y cons x nil 1 2)
(if true  "car "cdr '(a b c)) [ function expressions ]
(if false "car "cdr '(a b c))
('lambda()cons x cons y nil) [ function with no arguments ]
[ Here is a way to create an expression and then
  evaluate it in the current environment.  EVAL (see
  below) does this using a clean environment instead. ]
(display
cons "lambda cons nil cons display 'cons x cons y nil nil)
[ let ... be ... in ... ]
 
let x a cons x cons x nil [ first case, let x be ... in ... ]
x
[ second case, let (f x) be ... in ... ]
 
let (f x) if atom display x x (f car x)
 (f '(((a)b)c))
f
append '(a b c) '(d e f) [ concatenate-list primitive ]
[ define "by hand" temporarily ]
 
let (cat x y) if atom x y cons car x (cat cdr x y)
    (cat '(a b c) '(d e f))
cat
[ define "by hand" permanently ]
 
define (cat x y) if atom x y cons car x (cat cdr x y)
cat
(cat '(a b c) '(d e f))
define x (a b c) [ define atom, not function ]
cons x nil
define x (d e f)
cons x nil
size abc [ size of S-expression in characters ]
size ' ( a b c )
length ' ( a b c ) [ number of elements in list ]
length display bits ' a [ S-expression --> bits ]
length display bits ' abc [ extra character is \n ]
length display bits nil
length display bits ' (a)
[ plus ]
+ abc 15 [ not number --> 0 ]
+ '(abc) 15
+ 10 15
- 10 15 [ non-negative minus ]
- 15 10
* 10 15 [ times ]
^ 10 15 [ power ]
< 10 15 [ less than ]
< 10 10
> 15 10 [ greater than ]
> 10 10
<= 15 10 [ less than or equal ]
<= 10 10
>= 10 15 [ greater than or equal ]
>= 10 10
= 10 15 [ equal ]
= 10 10
[ here not number isn't considered zero ]
= abc 0
= 0003 3 [ other ways numbers are funny ]
000099 [ leading zeros removed ]
[ and numbers are constants ]
let x b cons x cons x nil
let 99 45 cons 99 cons 99 nil
define 99 45
cons 99 cons 99 nil
[ decimal<-->binary conversions ]
 
base10-to-2 255
base10-to-2 256
base10-to-2 257
base2-to-10 '(1 1 1 1)
base2-to-10 '(1 0 0 0 0)
base2-to-10 '(1 0 0 0 1)
[ illustrate eval & try ]
 
eval display '+ display 5 display 15
try 0 display '+ display 5 display 15 nil
try 0 display '+ debug 5 debug 15 nil
[ eval & try use initial variable bindings ]
 
cons x nil
eval 'cons x nil
try 0 'cons x nil nil
define five! [ to illustrate time limits ]
let (f x) if = display x 0 1 * x (f - x 1)
    (f 5)
eval five!
[ by the way, numbers can be big: ]
let (f x) if = x 0 1 * x (f - x 1)
    (f 100) [ one hundred factorial! ]
[ time limit is nesting depth of re-evaluations
  due to function calls & eval & try ]
 
try 0 five! nil
try 1 five! nil
try 2 five! nil
try 3 five! nil
try 4 five! nil
try 5 five! nil
try 6 five! nil
try 7 five! nil
try no-time-limit five! nil
define two* [ to illustrate running out of data ]
 let (f x) if = 0 x nil
           cons * 2 display read-bit (f - x 1)
     (f 5)
try 6 two* '(1 0 1 0 1)
try 7 two* '(1 0 1 0 1)
try 7 two* '(1 0 1)
try no-time-limit two* '(1 0 1)
try 18
'let (f x) if = 0 x nil
           cons * 2 display read-bit (f - x 1)
     (f 16)
bits 'a
[ illustrate nested try's ]
[ most constraining limit wins ]
 
try 20
'cons abcdef try 10
'let (f n) (f display + n 1) (f 0) [infinite loop]
nil nil
try 10
'cons abcdef try 20
'let (f n) (f display + n 1) (f 0) [infinite loop]
nil nil
try 10
'cons abcdef try 20
'let (f n) (f debug + n 1) (f 0) [infinite loop]
nil nil
try no-time-limit
'cons abcdef try 20
'let (f n) (f display + n 1) (f 0) [infinite loop]
nil nil
try 10
'cons abcdef try no-time-limit
'let (f n) (f display + n 1) (f 0) [infinite loop]
nil nil
[ illustrate read-bit & read-exp ]
 
read-bit
read-exp
try 0 'read-bit nil
try 0 'read-exp nil
try 0 'read-exp bits 'abc
try 0 'read-exp bits '(abc def)
try 0 'read-exp bits '(abc(def ghi)jkl)
try 0 'cons read-exp cons read-bit nil bits 'abc
try 0 'cons read-exp cons read-bit nil append bits 'abc '(0)
try 0 'cons read-exp cons read-bit nil append bits 'abc '(1)
try 0 'read-exp bits '(a b c)
try 0 'cons read-exp cons read-exp nil bits '(a b c)
try 0 'cons read-exp cons read-exp nil
      append bits '(a b c) bits '(d e f)
bits 'a [ to get characters codes ]
try 0 'read-exp '(0 1 1 0  0 0 0 1) ['a' but no \n character]
try 0 'read-exp '(0 1 1 0  0 0 0 1  0 0 0 0  1 0 1)[0 missing]
try 0 'read-exp '(0 1 1 0  0 0 0 1  0 0 0 0  1 0 1 0) [okay]
[ if we get to \n reading 8 bits at a time,
  we will always interpret as a valid S-expression ]
try 0 'read-exp
      '(0 0 0 0 1 0 1 0) [nothing in record; only \n]
try 0 'read-exp '(1 1 1 1  1 1 1 1  [unprintable character]
                  0 0 0 0  1 0 1 0) [is deleted]
bits () [ to get characters codes ]
[ three left parentheses==>three right parentheses supplied ]
try 0 'read-exp '(0 0 1 0  1 0 0 0  0 0 1 0  1 0 0 0
                  0 0 1 0  1 0 0 0  0 0 0 0  1 0 1 0)
[ right parenthesis 'a'==>left parenthesis supplied ]
try 0 'read-exp '(0 0 1 0  1 0 0 1  0 1 1 0  0 0 0 1
                  0 0 0 0  1 0 1 0) [ & extra 'a' ignored ]
[ 'a' right parenthesis==>'a' is seen & parenthesis ]
try 0 'read-exp '(0 1 1 0  0 0 0 1  0 0 1 0  1 0 0 1
                  0 0 0 0  1 0 1 0) [ is ignored ]
