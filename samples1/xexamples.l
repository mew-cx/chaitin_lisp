[examples.l    ]
 
[Test new lisp.]
 
' (ab c d)
'(ab   cd  )
car '(aa bb cc)
cdr '(aa bb cc)
cadr '(aa bb cc)
caddr '(aa bb cc)
cons '(aa bb cc) '(dd ee ff)
car aa
cdr aa
cons aa bb
let x a x
x
atom ' aa
atom '(aa)
if true x y
if false x y
if xxx x y
let (f x) if atom display x x (f car x)
 (f '(((a)b)c))
f
let (cat x y) if atom x y cons car x (cat cdr x y)
    (cat '(a b c) '(d e f))
cat
define (cat x y) if atom x y cons car x (cat cdr x y)
cat
(cat '(a b c) '(d e f))
define x cadr '(a b c)
x
define x caddr '(a b c)
x
length display
bits ' a
length display
bits ' abc
nil
length display
bits nil
length display
bits ' (a)
size abc
size ' ( a b c )
length ' ( a b c )
+ abc 15
+ '(abc) 15
+ 10 15
- 10 15
- 15 10
* 10 15
^ 10 15
< 10 15
< 10 10
> 10 15
> 10 10
<= 10 15
<= 10 10
>= 10 15
>= 10 10
= 10 15
= 10 10
let (f x) if = 0 x 1 * display x (f - x 1)
    (f 5)
try 0
'let (f x) if = 0 x 1 * display x (f - x 1)
     (f 5)
nil
try 1
'let (f x) if = 0 x 1 * display x (f - x 1)
     (f 5)
nil
try 2
'let (f x) if = 0 x 1 * display x (f - x 1)
     (f 5)
nil
try 3
'let (f x) if = 0 x 1 * display x (f - x 1)
     (f 5)
nil
try 4
'let (f x) if = 0 x 1 * display x (f - x 1)
     (f 5)
nil
try 5
'let (f x) if = 0 x 1 * display x (f - x 1)
     (f 5)
nil
try 6
'let (f x) if = 0 x 1 * display x (f - x 1)
     (f 5)
nil
try 7
'let (f x) if = 0 x 1 * display x (f - x 1)
     (f 5)
nil
try no-time-limit
'let (f x) if = 0 x 1 * display x (f - x 1)
     (f 5)
nil
eval display '+ 5 15
try 6
'let (f x) if = 0 x nil
           cons * 2 display read-bit (f - x 1)
     (f 5)
'(1 0 1 0 1)
try 7
'let (f x) if = 0 x nil
           cons * 2 display read-bit (f - x 1)
     (f 5)
'(1 0 1 0 1)
try 7
'let (f x) if = 0 x nil
           cons * 2 display read-bit (f - x 1)
     (f 5)
'(1 0 1)
try no-time-limit
'let (f x) if = 0 x nil
           cons * 2 display read-bit (f - x 1)
     (f 5)
'(1 0 1)
try 18
'let (f x) if = 0 x nil
           cons * 2 display read-bit (f - x 1)
     (f 16)
bits 'a
base10-to-2 128
base10-to-2 256
base10-to-2 257
base2-to-10 '(1 1 1 1)
base2-to-10 '(1 0 0 0 0)
base2-to-10 '(1 0 0 0 1)
try 20
'cons abcdef try 10
'let (f n) (f display + n 1) (f 0) [Infinite loop.]
nil nil
try 10
'cons abcdef try 20
'let (f n) (f display + n 1) (f 0) [Infinite loop.]
nil nil
try no-time-limit
'cons abcdef try 20
'let (f n) (f display + n 1) (f 0) [Infinite loop.]
nil nil
try 10
'cons abcdef try no-time-limit
'let (f n) (f display + n 1) (f 0) [Infinite loop.]
nil nil
read-bit
read-exp
bits '(abc def)
try no-time-limit 'read-exp bits '(abc def)
bits 'abc
'(abc (def ghi) j)
try 0 'read-bit nil
try 0 'read-exp nil
try 0 'read-exp bits 'abc
try 0 'cons read-exp cons read-bit nil bits 'abc
try 0 'cons read-exp cons read-bit nil append bits 'abc '(0)
try 0 'cons read-exp cons read-bit nil append bits 'abc '(1)
try 0 'read-exp bits '(a b)
try 0 'cons read-exp cons read-bit nil bits '(a b)
try 0 'cons read-exp cons read-exp nil bits '(a b)
try 0 'read-exp bits '(abc(def ghi)j)
try 0 'read-exp '(1 1 1 1) [Character is incomplete.]
try 0 'read-exp '(0 0 0 0 1 0 1 0) [Nothing in record; only \n.]
try 0 'cons read-exp cons read-exp nil append bits '(a b c) bits '(d e f)
try 0 'read-exp '(1 1 1 1  1 1 1 1  0 0 0 0  1 0 1 0) [Invalid character.]
= 0003 3
000099
x
let x b x
x
let 99 45 99
