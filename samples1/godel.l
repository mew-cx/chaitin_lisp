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
[Size expression.]
size expression
[Run expression & show that it knows its own size
 and can find something bigger than it is.]
eval expression
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
