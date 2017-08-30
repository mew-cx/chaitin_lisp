LISP Interpreter Run
 
[godel2.l]
 
[Show that a formal system of complexity N]
[can't prove that a specific object has]
[complexity > N + 4696.]
[Formal system is a never halting lisp expression]
[that output pairs (lisp object, lower bound]
[on its complexity).  E.g., (x 4) means]
[that x has complexity H(x) greater than or equal to 4.]
 
[Examine pairs to see if 2nd element is greater than lower bound.]
[Returns false to indicate not found, or pair if found.]
define (examine pairs lower-bound)
    if atom pairs false
    if < lower-bound cadr car pairs
       car pairs
       (examine cdr pairs lower-bound)
 
define      examine
value       (lambda (pairs lower-bound) (if (atom pairs) false
             (if (< lower-bound (car (cdr (car pairs)))) (car
            pairs) (examine (cdr pairs) lower-bound))))
 
(examine '((x 2)(y 3)) 0)
 
expression  (examine (' ((x 2) (y 3))) 0)
value       (x 2)
 
(examine '((x 2)(y 3)) 1)
 
expression  (examine (' ((x 2) (y 3))) 1)
value       (x 2)
 
(examine '((x 2)(y 3)) 2)
 
expression  (examine (' ((x 2) (y 3))) 2)
value       (y 3)
 
(examine '((x 2)(y 3)) 3)
 
expression  (examine (' ((x 2) (y 3))) 3)
value       false
 
(examine '((x 2)(y 3)) 4)
 
expression  (examine (' ((x 2) (y 3))) 4)
value       false
 
 
[This is an identity function with the size-effect of]
[displaying the number of bits in a binary string.]
define (display-number-of-bits string)
    cadr cons display length string cons string nil
 
define      display-number-of-bits
value       (lambda (string) (car (cdr (cons (display (length
            string)) (cons string nil)))))
 
 
[This is the universal Turing machine U followed by its program.]
cadr try no-time-limit 'eval read-exp
 
[Display number of bits in entire program.]
(display-number-of-bits
 
append [Append prefix and data.]
 
[Display number of bits in the prefix.]
(display-number-of-bits bits '
 
[Examine pairs to see if 2nd element is greater than lower bound.]
[Returns false to indicate not found, or pair if found.]
let (examine pairs lower-bound)
    if atom pairs false
    if < lower-bound cadr car pairs
       car pairs
       (examine cdr pairs lower-bound)
 
                            []
[Main Loop - t is time limit, fas is bits of formal axiomatic system read so far.]
let (loop t fas)            [Run formal axiomatic system again.]
 let v debug try debug t 'eval read-exp debug fas
 [Look for theorem which is pair with 2nd element > # of bits read + size of this prefix.]
 let s (examine caddr v debug + length fas 4696)
 if s car s                 [Found it! Output first element of theorem and halt. Contradiction!]
 if = car v success failure [Surprise, formal system halts, so we do too.]
 if = cadr v out-of-data  (loop t append fas cons read-bit nil)
                            [Read another bit of the formal axiomatic system.]
 if = cadr v out-of-time  (loop + t 1 fas)
                            [Increase time limit]
 unexpected-condition       [This should never happen.]
                            []
(loop 0 nil)    [Initially, 0 time limit and no bits of formal axiomatic system read.]
 
) [end of prefix, start of formal axiomatic system]
 
bits ' display'(x 4881)
 
) [end of entire program for universal Turing machine U]
 
expression  (car (cdr (try no-time-limit (' (eval (read-exp)))
             (display-number-of-bits (append (display-number-o
            f-bits (bits (' ((' (lambda (examine) ((' (lambda
            (loop) (loop 0 nil))) (' (lambda (t fas) ((' (lamb
            da (v) ((' (lambda (s) (if s (car s) (if (= (car v
            ) success) failure (if (= (car (cdr v)) out-of-dat
            a) (loop t (append fas (cons (read-bit) nil))) (if
             (= (car (cdr v)) out-of-time) (loop (+ t 1) fas)
            unexpected-condition)))))) (examine (car (cdr (cdr
             v))) (debug (+ (length fas) 4696)))))) (debug (tr
            y (debug t) (' (eval (read-exp))) (debug fas))))))
            ))) (' (lambda (pairs lower-bound) (if (atom pairs
            ) false (if (< lower-bound (car (cdr (car pairs)))
            ) (car pairs) (examine (cdr pairs) lower-bound))))
            ))))) (bits (' (display (' (x 4881))))))))))
display     4696
display     4880
debug       0
debug       ()
debug       (failure out-of-data ())
debug       4696
debug       0
debug       (0)
debug       (failure out-of-data ())
debug       4697
debug       0
debug       (0 0)
debug       (failure out-of-data ())
debug       4698
debug       0
debug       (0 0 1)
debug       (failure out-of-data ())
debug       4699
debug       0
debug       (0 0 1 0)
debug       (failure out-of-data ())
debug       4700
debug       0
debug       (0 0 1 0 1)
debug       (failure out-of-data ())
debug       4701
debug       0
debug       (0 0 1 0 1 0)
debug       (failure out-of-data ())
debug       4702
debug       0
debug       (0 0 1 0 1 0 0)
debug       (failure out-of-data ())
debug       4703
debug       0
debug       (0 0 1 0 1 0 0 0)
debug       (failure out-of-data ())
debug       4704
debug       0
debug       (0 0 1 0 1 0 0 0 0)
debug       (failure out-of-data ())
debug       4705
debug       0
debug       (0 0 1 0 1 0 0 0 0 1)
debug       (failure out-of-data ())
debug       4706
debug       0
debug       (0 0 1 0 1 0 0 0 0 1 1)
debug       (failure out-of-data ())
debug       4707
debug       0
debug       (0 0 1 0 1 0 0 0 0 1 1 0)
debug       (failure out-of-data ())
debug       4708
debug       0
debug       (0 0 1 0 1 0 0 0 0 1 1 0 0)
debug       (failure out-of-data ())
debug       4709
debug       0
debug       (0 0 1 0 1 0 0 0 0 1 1 0 0 1)
debug       (failure out-of-data ())
debug       4710
debug       0
debug       (0 0 1 0 1 0 0 0 0 1 1 0 0 1 0)
debug       (failure out-of-data ())
debug       4711
debug       0
debug       (0 0 1 0 1 0 0 0 0 1 1 0 0 1 0 0)
debug       (failure out-of-data ())
debug       4712
debug       0
debug       (0 0 1 0 1 0 0 0 0 1 1 0 0 1 0 0 0)
debug       (failure out-of-data ())
debug       4713
debug       0
debug       (0 0 1 0 1 0 0 0 0 1 1 0 0 1 0 0 0 1)
debug       (failure out-of-data ())
debug       4714
debug       0
debug       (0 0 1 0 1 0 0 0 0 1 1 0 0 1 0 0 0 1 1)
debug       (failure out-of-data ())
debug       4715
debug       0
debug       (0 0 1 0 1 0 0 0 0 1 1 0 0 1 0 0 0 1 1 0)
debug       (failure out-of-data ())
debug       4716
debug       0
debug       (0 0 1 0 1 0 0 0 0 1 1 0 0 1 0 0 0 1 1 0 1)
debug       (failure out-of-data ())
debug       4717
debug       0
debug       (0 0 1 0 1 0 0 0 0 1 1 0 0 1 0 0 0 1 1 0 1 0)
debug       (failure out-of-data ())
debug       4718
debug       0
debug       (0 0 1 0 1 0 0 0 0 1 1 0 0 1 0 0 0 1 1 0 1 0 0)
debug       (failure out-of-data ())
debug       4719
debug       0
debug       (0 0 1 0 1 0 0 0 0 1 1 0 0 1 0 0 0 1 1 0 1 0 0 1)
debug       (failure out-of-data ())
debug       4720
debug       0
debug       (0 0 1 0 1 0 0 0 0 1 1 0 0 1 0 0 0 1 1 0 1 0 0 1 0
            )
debug       (failure out-of-data ())
debug       4721
debug       0
debug       (0 0 1 0 1 0 0 0 0 1 1 0 0 1 0 0 0 1 1 0 1 0 0 1 0
             1)
debug       (failure out-of-data ())
debug       4722
debug       0
debug       (0 0 1 0 1 0 0 0 0 1 1 0 0 1 0 0 0 1 1 0 1 0 0 1 0
             1 1)
debug       (failure out-of-data ())
debug       4723
debug       0
debug       (0 0 1 0 1 0 0 0 0 1 1 0 0 1 0 0 0 1 1 0 1 0 0 1 0
             1 1 1)
debug       (failure out-of-data ())
debug       4724
debug       0
debug       (0 0 1 0 1 0 0 0 0 1 1 0 0 1 0 0 0 1 1 0 1 0 0 1 0
             1 1 1 0)
debug       (failure out-of-data ())
debug       4725
debug       0
debug       (0 0 1 0 1 0 0 0 0 1 1 0 0 1 0 0 0 1 1 0 1 0 0 1 0
             1 1 1 0 0)
debug       (failure out-of-data ())
debug       4726
debug       0
debug       (0 0 1 0 1 0 0 0 0 1 1 0 0 1 0 0 0 1 1 0 1 0 0 1 0
             1 1 1 0 0 1)
debug       (failure out-of-data ())
debug       4727
debug       0
debug       (0 0 1 0 1 0 0 0 0 1 1 0 0 1 0 0 0 1 1 0 1 0 0 1 0
             1 1 1 0 0 1 1)
debug       (failure out-of-data ())
debug       4728
debug       0
debug       (0 0 1 0 1 0 0 0 0 1 1 0 0 1 0 0 0 1 1 0 1 0 0 1 0
             1 1 1 0 0 1 1 0)
debug       (failure out-of-data ())
debug       4729
debug       0
debug       (0 0 1 0 1 0 0 0 0 1 1 0 0 1 0 0 0 1 1 0 1 0 0 1 0
             1 1 1 0 0 1 1 0 1)
debug       (failure out-of-data ())
debug       4730
debug       0
debug       (0 0 1 0 1 0 0 0 0 1 1 0 0 1 0 0 0 1 1 0 1 0 0 1 0
             1 1 1 0 0 1 1 0 1 1)
debug       (failure out-of-data ())
debug       4731
debug       0
debug       (0 0 1 0 1 0 0 0 0 1 1 0 0 1 0 0 0 1 1 0 1 0 0 1 0
             1 1 1 0 0 1 1 0 1 1 1)
debug       (failure out-of-data ())
debug       4732
debug       0
debug       (0 0 1 0 1 0 0 0 0 1 1 0 0 1 0 0 0 1 1 0 1 0 0 1 0
             1 1 1 0 0 1 1 0 1 1 1 0)
debug       (failure out-of-data ())
debug       4733
debug       0
debug       (0 0 1 0 1 0 0 0 0 1 1 0 0 1 0 0 0 1 1 0 1 0 0 1 0
             1 1 1 0 0 1 1 0 1 1 1 0 0)
debug       (failure out-of-data ())
debug       4734
debug       0
debug       (0 0 1 0 1 0 0 0 0 1 1 0 0 1 0 0 0 1 1 0 1 0 0 1 0
             1 1 1 0 0 1 1 0 1 1 1 0 0 0)
debug       (failure out-of-data ())
debug       4735
debug       0
debug       (0 0 1 0 1 0 0 0 0 1 1 0 0 1 0 0 0 1 1 0 1 0 0 1 0
             1 1 1 0 0 1 1 0 1 1 1 0 0 0 0)
debug       (failure out-of-data ())
debug       4736
debug       0
debug       (0 0 1 0 1 0 0 0 0 1 1 0 0 1 0 0 0 1 1 0 1 0 0 1 0
             1 1 1 0 0 1 1 0 1 1 1 0 0 0 0 0)
debug       (failure out-of-data ())
debug       4737
debug       0
debug       (0 0 1 0 1 0 0 0 0 1 1 0 0 1 0 0 0 1 1 0 1 0 0 1 0
             1 1 1 0 0 1 1 0 1 1 1 0 0 0 0 0 1)
debug       (failure out-of-data ())
debug       4738
debug       0
debug       (0 0 1 0 1 0 0 0 0 1 1 0 0 1 0 0 0 1 1 0 1 0 0 1 0
             1 1 1 0 0 1 1 0 1 1 1 0 0 0 0 0 1 1)
debug       (failure out-of-data ())
debug       4739
debug       0
debug       (0 0 1 0 1 0 0 0 0 1 1 0 0 1 0 0 0 1 1 0 1 0 0 1 0
             1 1 1 0 0 1 1 0 1 1 1 0 0 0 0 0 1 1 0)
debug       (failure out-of-data ())
debug       4740
debug       0
debug       (0 0 1 0 1 0 0 0 0 1 1 0 0 1 0 0 0 1 1 0 1 0 0 1 0
             1 1 1 0 0 1 1 0 1 1 1 0 0 0 0 0 1 1 0 1)
debug       (failure out-of-data ())
debug       4741
debug       0
debug       (0 0 1 0 1 0 0 0 0 1 1 0 0 1 0 0 0 1 1 0 1 0 0 1 0
             1 1 1 0 0 1 1 0 1 1 1 0 0 0 0 0 1 1 0 1 1)
debug       (failure out-of-data ())
debug       4742
debug       0
debug       (0 0 1 0 1 0 0 0 0 1 1 0 0 1 0 0 0 1 1 0 1 0 0 1 0
             1 1 1 0 0 1 1 0 1 1 1 0 0 0 0 0 1 1 0 1 1 0)
debug       (failure out-of-data ())
debug       4743
debug       0
debug       (0 0 1 0 1 0 0 0 0 1 1 0 0 1 0 0 0 1 1 0 1 0 0 1 0
             1 1 1 0 0 1 1 0 1 1 1 0 0 0 0 0 1 1 0 1 1 0 0)
debug       (failure out-of-data ())
debug       4744
debug       0
debug       (0 0 1 0 1 0 0 0 0 1 1 0 0 1 0 0 0 1 1 0 1 0 0 1 0
             1 1 1 0 0 1 1 0 1 1 1 0 0 0 0 0 1 1 0 1 1 0 0 0)
debug       (failure out-of-data ())
debug       4745
debug       0
debug       (0 0 1 0 1 0 0 0 0 1 1 0 0 1 0 0 0 1 1 0 1 0 0 1 0
             1 1 1 0 0 1 1 0 1 1 1 0 0 0 0 0 1 1 0 1 1 0 0 0 1
            )
debug       (failure out-of-data ())
debug       4746
debug       0
debug       (0 0 1 0 1 0 0 0 0 1 1 0 0 1 0 0 0 1 1 0 1 0 0 1 0
             1 1 1 0 0 1 1 0 1 1 1 0 0 0 0 0 1 1 0 1 1 0 0 0 1
             1)
debug       (failure out-of-data ())
debug       4747
debug       0
debug       (0 0 1 0 1 0 0 0 0 1 1 0 0 1 0 0 0 1 1 0 1 0 0 1 0
             1 1 1 0 0 1 1 0 1 1 1 0 0 0 0 0 1 1 0 1 1 0 0 0 1
             1 0)
debug       (failure out-of-data ())
debug       4748
debug       0
debug       (0 0 1 0 1 0 0 0 0 1 1 0 0 1 0 0 0 1 1 0 1 0 0 1 0
             1 1 1 0 0 1 1 0 1 1 1 0 0 0 0 0 1 1 0 1 1 0 0 0 1
             1 0 0)
debug       (failure out-of-data ())
debug       4749
debug       0
debug       (0 0 1 0 1 0 0 0 0 1 1 0 0 1 0 0 0 1 1 0 1 0 0 1 0
             1 1 1 0 0 1 1 0 1 1 1 0 0 0 0 0 1 1 0 1 1 0 0 0 1
             1 0 0 0)
debug       (failure out-of-data ())
debug       4750
debug       0
debug       (0 0 1 0 1 0 0 0 0 1 1 0 0 1 0 0 0 1 1 0 1 0 0 1 0
             1 1 1 0 0 1 1 0 1 1 1 0 0 0 0 0 1 1 0 1 1 0 0 0 1
             1 0 0 0 0)
debug       (failure out-of-data ())
debug       4751
debug       0
debug       (0 0 1 0 1 0 0 0 0 1 1 0 0 1 0 0 0 1 1 0 1 0 0 1 0
             1 1 1 0 0 1 1 0 1 1 1 0 0 0 0 0 1 1 0 1 1 0 0 0 1
             1 0 0 0 0 1)
debug       (failure out-of-data ())
debug       4752
debug       0
debug       (0 0 1 0 1 0 0 0 0 1 1 0 0 1 0 0 0 1 1 0 1 0 0 1 0
             1 1 1 0 0 1 1 0 1 1 1 0 0 0 0 0 1 1 0 1 1 0 0 0 1
             1 0 0 0 0 1 0)
debug       (failure out-of-data ())
debug       4753
debug       0
debug       (0 0 1 0 1 0 0 0 0 1 1 0 0 1 0 0 0 1 1 0 1 0 0 1 0
             1 1 1 0 0 1 1 0 1 1 1 0 0 0 0 0 1 1 0 1 1 0 0 0 1
             1 0 0 0 0 1 0 1)
debug       (failure out-of-data ())
debug       4754
debug       0
debug       (0 0 1 0 1 0 0 0 0 1 1 0 0 1 0 0 0 1 1 0 1 0 0 1 0
             1 1 1 0 0 1 1 0 1 1 1 0 0 0 0 0 1 1 0 1 1 0 0 0 1
             1 0 0 0 0 1 0 1 1)
debug       (failure out-of-data ())
debug       4755
debug       0
debug       (0 0 1 0 1 0 0 0 0 1 1 0 0 1 0 0 0 1 1 0 1 0 0 1 0
             1 1 1 0 0 1 1 0 1 1 1 0 0 0 0 0 1 1 0 1 1 0 0 0 1
             1 0 0 0 0 1 0 1 1 1)
debug       (failure out-of-data ())
debug       4756
debug       0
debug       (0 0 1 0 1 0 0 0 0 1 1 0 0 1 0 0 0 1 1 0 1 0 0 1 0
             1 1 1 0 0 1 1 0 1 1 1 0 0 0 0 0 1 1 0 1 1 0 0 0 1
             1 0 0 0 0 1 0 1 1 1 1)
debug       (failure out-of-data ())
debug       4757
debug       0
debug       (0 0 1 0 1 0 0 0 0 1 1 0 0 1 0 0 0 1 1 0 1 0 0 1 0
             1 1 1 0 0 1 1 0 1 1 1 0 0 0 0 0 1 1 0 1 1 0 0 0 1
             1 0 0 0 0 1 0 1 1 1 1 0)
debug       (failure out-of-data ())
debug       4758
debug       0
debug       (0 0 1 0 1 0 0 0 0 1 1 0 0 1 0 0 0 1 1 0 1 0 0 1 0
             1 1 1 0 0 1 1 0 1 1 1 0 0 0 0 0 1 1 0 1 1 0 0 0 1
             1 0 0 0 0 1 0 1 1 1 1 0 0)
debug       (failure out-of-data ())
debug       4759
debug       0
debug       (0 0 1 0 1 0 0 0 0 1 1 0 0 1 0 0 0 1 1 0 1 0 0 1 0
             1 1 1 0 0 1 1 0 1 1 1 0 0 0 0 0 1 1 0 1 1 0 0 0 1
             1 0 0 0 0 1 0 1 1 1 1 0 0 1)
debug       (failure out-of-data ())
debug       4760
debug       0
debug       (0 0 1 0 1 0 0 0 0 1 1 0 0 1 0 0 0 1 1 0 1 0 0 1 0
             1 1 1 0 0 1 1 0 1 1 1 0 0 0 0 0 1 1 0 1 1 0 0 0 1
             1 0 0 0 0 1 0 1 1 1 1 0 0 1 0)
debug       (failure out-of-data ())
debug       4761
debug       0
debug       (0 0 1 0 1 0 0 0 0 1 1 0 0 1 0 0 0 1 1 0 1 0 0 1 0
             1 1 1 0 0 1 1 0 1 1 1 0 0 0 0 0 1 1 0 1 1 0 0 0 1
             1 0 0 0 0 1 0 1 1 1 1 0 0 1 0 0)
debug       (failure out-of-data ())
debug       4762
debug       0
debug       (0 0 1 0 1 0 0 0 0 1 1 0 0 1 0 0 0 1 1 0 1 0 0 1 0
             1 1 1 0 0 1 1 0 1 1 1 0 0 0 0 0 1 1 0 1 1 0 0 0 1
             1 0 0 0 0 1 0 1 1 1 1 0 0 1 0 0 1)
debug       (failure out-of-data ())
debug       4763
debug       0
debug       (0 0 1 0 1 0 0 0 0 1 1 0 0 1 0 0 0 1 1 0 1 0 0 1 0
             1 1 1 0 0 1 1 0 1 1 1 0 0 0 0 0 1 1 0 1 1 0 0 0 1
             1 0 0 0 0 1 0 1 1 1 1 0 0 1 0 0 1 0)
debug       (failure out-of-data ())
debug       4764
debug       0
debug       (0 0 1 0 1 0 0 0 0 1 1 0 0 1 0 0 0 1 1 0 1 0 0 1 0
             1 1 1 0 0 1 1 0 1 1 1 0 0 0 0 0 1 1 0 1 1 0 0 0 1
             1 0 0 0 0 1 0 1 1 1 1 0 0 1 0 0 1 0 0)
debug       (failure out-of-data ())
debug       4765
debug       0
debug       (0 0 1 0 1 0 0 0 0 1 1 0 0 1 0 0 0 1 1 0 1 0 0 1 0
             1 1 1 0 0 1 1 0 1 1 1 0 0 0 0 0 1 1 0 1 1 0 0 0 1
             1 0 0 0 0 1 0 1 1 1 1 0 0 1 0 0 1 0 0 0)
debug       (failure out-of-data ())
debug       4766
debug       0
debug       (0 0 1 0 1 0 0 0 0 1 1 0 0 1 0 0 0 1 1 0 1 0 0 1 0
             1 1 1 0 0 1 1 0 1 1 1 0 0 0 0 0 1 1 0 1 1 0 0 0 1
             1 0 0 0 0 1 0 1 1 1 1 0 0 1 0 0 1 0 0 0 0)
debug       (failure out-of-data ())
debug       4767
debug       0
debug       (0 0 1 0 1 0 0 0 0 1 1 0 0 1 0 0 0 1 1 0 1 0 0 1 0
             1 1 1 0 0 1 1 0 1 1 1 0 0 0 0 0 1 1 0 1 1 0 0 0 1
             1 0 0 0 0 1 0 1 1 1 1 0 0 1 0 0 1 0 0 0 0 0)
debug       (failure out-of-data ())
debug       4768
debug       0
debug       (0 0 1 0 1 0 0 0 0 1 1 0 0 1 0 0 0 1 1 0 1 0 0 1 0
             1 1 1 0 0 1 1 0 1 1 1 0 0 0 0 0 1 1 0 1 1 0 0 0 1
             1 0 0 0 0 1 0 1 1 1 1 0 0 1 0 0 1 0 0 0 0 0 0)
debug       (failure out-of-data ())
debug       4769
debug       0
debug       (0 0 1 0 1 0 0 0 0 1 1 0 0 1 0 0 0 1 1 0 1 0 0 1 0
             1 1 1 0 0 1 1 0 1 1 1 0 0 0 0 0 1 1 0 1 1 0 0 0 1
             1 0 0 0 0 1 0 1 1 1 1 0 0 1 0 0 1 0 0 0 0 0 0 0)
debug       (failure out-of-data ())
debug       4770
debug       0
debug       (0 0 1 0 1 0 0 0 0 1 1 0 0 1 0 0 0 1 1 0 1 0 0 1 0
             1 1 1 0 0 1 1 0 1 1 1 0 0 0 0 0 1 1 0 1 1 0 0 0 1
             1 0 0 0 0 1 0 1 1 1 1 0 0 1 0 0 1 0 0 0 0 0 0 0 1
            )
debug       (failure out-of-data ())
debug       4771
debug       0
debug       (0 0 1 0 1 0 0 0 0 1 1 0 0 1 0 0 0 1 1 0 1 0 0 1 0
             1 1 1 0 0 1 1 0 1 1 1 0 0 0 0 0 1 1 0 1 1 0 0 0 1
             1 0 0 0 0 1 0 1 1 1 1 0 0 1 0 0 1 0 0 0 0 0 0 0 1
             0)
debug       (failure out-of-data ())
debug       4772
debug       0
debug       (0 0 1 0 1 0 0 0 0 1 1 0 0 1 0 0 0 1 1 0 1 0 0 1 0
             1 1 1 0 0 1 1 0 1 1 1 0 0 0 0 0 1 1 0 1 1 0 0 0 1
             1 0 0 0 0 1 0 1 1 1 1 0 0 1 0 0 1 0 0 0 0 0 0 0 1
             0 1)
debug       (failure out-of-data ())
debug       4773
debug       0
debug       (0 0 1 0 1 0 0 0 0 1 1 0 0 1 0 0 0 1 1 0 1 0 0 1 0
             1 1 1 0 0 1 1 0 1 1 1 0 0 0 0 0 1 1 0 1 1 0 0 0 1
             1 0 0 0 0 1 0 1 1 1 1 0 0 1 0 0 1 0 0 0 0 0 0 0 1
             0 1 0)
debug       (failure out-of-data ())
debug       4774
debug       0
debug       (0 0 1 0 1 0 0 0 0 1 1 0 0 1 0 0 0 1 1 0 1 0 0 1 0
             1 1 1 0 0 1 1 0 1 1 1 0 0 0 0 0 1 1 0 1 1 0 0 0 1
             1 0 0 0 0 1 0 1 1 1 1 0 0 1 0 0 1 0 0 0 0 0 0 0 1
             0 1 0 0)
debug       (failure out-of-data ())
debug       4775
debug       0
debug       (0 0 1 0 1 0 0 0 0 1 1 0 0 1 0 0 0 1 1 0 1 0 0 1 0
             1 1 1 0 0 1 1 0 1 1 1 0 0 0 0 0 1 1 0 1 1 0 0 0 1
             1 0 0 0 0 1 0 1 1 1 1 0 0 1 0 0 1 0 0 0 0 0 0 0 1
             0 1 0 0 0)
debug       (failure out-of-data ())
debug       4776
debug       0
debug       (0 0 1 0 1 0 0 0 0 1 1 0 0 1 0 0 0 1 1 0 1 0 0 1 0
             1 1 1 0 0 1 1 0 1 1 1 0 0 0 0 0 1 1 0 1 1 0 0 0 1
             1 0 0 0 0 1 0 1 1 1 1 0 0 1 0 0 1 0 0 0 0 0 0 0 1
             0 1 0 0 0 0)
debug       (failure out-of-data ())
debug       4777
debug       0
debug       (0 0 1 0 1 0 0 0 0 1 1 0 0 1 0 0 0 1 1 0 1 0 0 1 0
             1 1 1 0 0 1 1 0 1 1 1 0 0 0 0 0 1 1 0 1 1 0 0 0 1
             1 0 0 0 0 1 0 1 1 1 1 0 0 1 0 0 1 0 0 0 0 0 0 0 1
             0 1 0 0 0 0 0)
debug       (failure out-of-data ())
debug       4778
debug       0
debug       (0 0 1 0 1 0 0 0 0 1 1 0 0 1 0 0 0 1 1 0 1 0 0 1 0
             1 1 1 0 0 1 1 0 1 1 1 0 0 0 0 0 1 1 0 1 1 0 0 0 1
             1 0 0 0 0 1 0 1 1 1 1 0 0 1 0 0 1 0 0 0 0 0 0 0 1
             0 1 0 0 0 0 0 1)
debug       (failure out-of-data ())
debug       4779
debug       0
debug       (0 0 1 0 1 0 0 0 0 1 1 0 0 1 0 0 0 1 1 0 1 0 0 1 0
             1 1 1 0 0 1 1 0 1 1 1 0 0 0 0 0 1 1 0 1 1 0 0 0 1
             1 0 0 0 0 1 0 1 1 1 1 0 0 1 0 0 1 0 0 0 0 0 0 0 1
             0 1 0 0 0 0 0 1 0)
debug       (failure out-of-data ())
debug       4780
debug       0
debug       (0 0 1 0 1 0 0 0 0 1 1 0 0 1 0 0 0 1 1 0 1 0 0 1 0
             1 1 1 0 0 1 1 0 1 1 1 0 0 0 0 0 1 1 0 1 1 0 0 0 1
             1 0 0 0 0 1 0 1 1 1 1 0 0 1 0 0 1 0 0 0 0 0 0 0 1
             0 1 0 0 0 0 0 1 0 0)
debug       (failure out-of-data ())
debug       4781
debug       0
debug       (0 0 1 0 1 0 0 0 0 1 1 0 0 1 0 0 0 1 1 0 1 0 0 1 0
             1 1 1 0 0 1 1 0 1 1 1 0 0 0 0 0 1 1 0 1 1 0 0 0 1
             1 0 0 0 0 1 0 1 1 1 1 0 0 1 0 0 1 0 0 0 0 0 0 0 1
             0 1 0 0 0 0 0 1 0 0 1)
debug       (failure out-of-data ())
debug       4782
debug       0
debug       (0 0 1 0 1 0 0 0 0 1 1 0 0 1 0 0 0 1 1 0 1 0 0 1 0
             1 1 1 0 0 1 1 0 1 1 1 0 0 0 0 0 1 1 0 1 1 0 0 0 1
             1 0 0 0 0 1 0 1 1 1 1 0 0 1 0 0 1 0 0 0 0 0 0 0 1
             0 1 0 0 0 0 0 1 0 0 1 1)
debug       (failure out-of-data ())
debug       4783
debug       0
debug       (0 0 1 0 1 0 0 0 0 1 1 0 0 1 0 0 0 1 1 0 1 0 0 1 0
             1 1 1 0 0 1 1 0 1 1 1 0 0 0 0 0 1 1 0 1 1 0 0 0 1
             1 0 0 0 0 1 0 1 1 1 1 0 0 1 0 0 1 0 0 0 0 0 0 0 1
             0 1 0 0 0 0 0 1 0 0 1 1 1)
debug       (failure out-of-data ())
debug       4784
debug       0
debug       (0 0 1 0 1 0 0 0 0 1 1 0 0 1 0 0 0 1 1 0 1 0 0 1 0
             1 1 1 0 0 1 1 0 1 1 1 0 0 0 0 0 1 1 0 1 1 0 0 0 1
             1 0 0 0 0 1 0 1 1 1 1 0 0 1 0 0 1 0 0 0 0 0 0 0 1
             0 1 0 0 0 0 0 1 0 0 1 1 1 0)
debug       (failure out-of-data ())
debug       4785
debug       0
debug       (0 0 1 0 1 0 0 0 0 1 1 0 0 1 0 0 0 1 1 0 1 0 0 1 0
             1 1 1 0 0 1 1 0 1 1 1 0 0 0 0 0 1 1 0 1 1 0 0 0 1
             1 0 0 0 0 1 0 1 1 1 1 0 0 1 0 0 1 0 0 0 0 0 0 0 1
             0 1 0 0 0 0 0 1 0 0 1 1 1 0 0)
debug       (failure out-of-data ())
debug       4786
debug       0
debug       (0 0 1 0 1 0 0 0 0 1 1 0 0 1 0 0 0 1 1 0 1 0 0 1 0
             1 1 1 0 0 1 1 0 1 1 1 0 0 0 0 0 1 1 0 1 1 0 0 0 1
             1 0 0 0 0 1 0 1 1 1 1 0 0 1 0 0 1 0 0 0 0 0 0 0 1
             0 1 0 0 0 0 0 1 0 0 1 1 1 0 0 1)
debug       (failure out-of-data ())
debug       4787
debug       0
debug       (0 0 1 0 1 0 0 0 0 1 1 0 0 1 0 0 0 1 1 0 1 0 0 1 0
             1 1 1 0 0 1 1 0 1 1 1 0 0 0 0 0 1 1 0 1 1 0 0 0 1
             1 0 0 0 0 1 0 1 1 1 1 0 0 1 0 0 1 0 0 0 0 0 0 0 1
             0 1 0 0 0 0 0 1 0 0 1 1 1 0 0 1 0)
debug       (failure out-of-data ())
debug       4788
debug       0
debug       (0 0 1 0 1 0 0 0 0 1 1 0 0 1 0 0 0 1 1 0 1 0 0 1 0
             1 1 1 0 0 1 1 0 1 1 1 0 0 0 0 0 1 1 0 1 1 0 0 0 1
             1 0 0 0 0 1 0 1 1 1 1 0 0 1 0 0 1 0 0 0 0 0 0 0 1
             0 1 0 0 0 0 0 1 0 0 1 1 1 0 0 1 0 0)
debug       (failure out-of-data ())
debug       4789
debug       0
debug       (0 0 1 0 1 0 0 0 0 1 1 0 0 1 0 0 0 1 1 0 1 0 0 1 0
             1 1 1 0 0 1 1 0 1 1 1 0 0 0 0 0 1 1 0 1 1 0 0 0 1
             1 0 0 0 0 1 0 1 1 1 1 0 0 1 0 0 1 0 0 0 0 0 0 0 1
             0 1 0 0 0 0 0 1 0 0 1 1 1 0 0 1 0 0 0)
debug       (failure out-of-data ())
debug       4790
debug       0
debug       (0 0 1 0 1 0 0 0 0 1 1 0 0 1 0 0 0 1 1 0 1 0 0 1 0
             1 1 1 0 0 1 1 0 1 1 1 0 0 0 0 0 1 1 0 1 1 0 0 0 1
             1 0 0 0 0 1 0 1 1 1 1 0 0 1 0 0 1 0 0 0 0 0 0 0 1
             0 1 0 0 0 0 0 1 0 0 1 1 1 0 0 1 0 0 0 0)
debug       (failure out-of-data ())
debug       4791
debug       0
debug       (0 0 1 0 1 0 0 0 0 1 1 0 0 1 0 0 0 1 1 0 1 0 0 1 0
             1 1 1 0 0 1 1 0 1 1 1 0 0 0 0 0 1 1 0 1 1 0 0 0 1
             1 0 0 0 0 1 0 1 1 1 1 0 0 1 0 0 1 0 0 0 0 0 0 0 1
             0 1 0 0 0 0 0 1 0 0 1 1 1 0 0 1 0 0 0 0 0)
debug       (failure out-of-data ())
debug       4792
debug       0
debug       (0 0 1 0 1 0 0 0 0 1 1 0 0 1 0 0 0 1 1 0 1 0 0 1 0
             1 1 1 0 0 1 1 0 1 1 1 0 0 0 0 0 1 1 0 1 1 0 0 0 1
             1 0 0 0 0 1 0 1 1 1 1 0 0 1 0 0 1 0 0 0 0 0 0 0 1
             0 1 0 0 0 0 0 1 0 0 1 1 1 0 0 1 0 0 0 0 0 0)
debug       (failure out-of-data ())
debug       4793
debug       0
debug       (0 0 1 0 1 0 0 0 0 1 1 0 0 1 0 0 0 1 1 0 1 0 0 1 0
             1 1 1 0 0 1 1 0 1 1 1 0 0 0 0 0 1 1 0 1 1 0 0 0 1
             1 0 0 0 0 1 0 1 1 1 1 0 0 1 0 0 1 0 0 0 0 0 0 0 1
             0 1 0 0 0 0 0 1 0 0 1 1 1 0 0 1 0 0 0 0 0 0 0)
debug       (failure out-of-data ())
debug       4794
debug       0
debug       (0 0 1 0 1 0 0 0 0 1 1 0 0 1 0 0 0 1 1 0 1 0 0 1 0
             1 1 1 0 0 1 1 0 1 1 1 0 0 0 0 0 1 1 0 1 1 0 0 0 1
             1 0 0 0 0 1 0 1 1 1 1 0 0 1 0 0 1 0 0 0 0 0 0 0 1
             0 1 0 0 0 0 0 1 0 0 1 1 1 0 0 1 0 0 0 0 0 0 0 1)
debug       (failure out-of-data ())
debug       4795
debug       0
debug       (0 0 1 0 1 0 0 0 0 1 1 0 0 1 0 0 0 1 1 0 1 0 0 1 0
             1 1 1 0 0 1 1 0 1 1 1 0 0 0 0 0 1 1 0 1 1 0 0 0 1
             1 0 0 0 0 1 0 1 1 1 1 0 0 1 0 0 1 0 0 0 0 0 0 0 1
             0 1 0 0 0 0 0 1 0 0 1 1 1 0 0 1 0 0 0 0 0 0 0 1 0
            )
debug       (failure out-of-data ())
debug       4796
debug       0
debug       (0 0 1 0 1 0 0 0 0 1 1 0 0 1 0 0 0 1 1 0 1 0 0 1 0
             1 1 1 0 0 1 1 0 1 1 1 0 0 0 0 0 1 1 0 1 1 0 0 0 1
             1 0 0 0 0 1 0 1 1 1 1 0 0 1 0 0 1 0 0 0 0 0 0 0 1
             0 1 0 0 0 0 0 1 0 0 1 1 1 0 0 1 0 0 0 0 0 0 0 1 0
             1)
debug       (failure out-of-data ())
debug       4797
debug       0
debug       (0 0 1 0 1 0 0 0 0 1 1 0 0 1 0 0 0 1 1 0 1 0 0 1 0
             1 1 1 0 0 1 1 0 1 1 1 0 0 0 0 0 1 1 0 1 1 0 0 0 1
             1 0 0 0 0 1 0 1 1 1 1 0 0 1 0 0 1 0 0 0 0 0 0 0 1
             0 1 0 0 0 0 0 1 0 0 1 1 1 0 0 1 0 0 0 0 0 0 0 1 0
             1 0)
debug       (failure out-of-data ())
debug       4798
debug       0
debug       (0 0 1 0 1 0 0 0 0 1 1 0 0 1 0 0 0 1 1 0 1 0 0 1 0
             1 1 1 0 0 1 1 0 1 1 1 0 0 0 0 0 1 1 0 1 1 0 0 0 1
             1 0 0 0 0 1 0 1 1 1 1 0 0 1 0 0 1 0 0 0 0 0 0 0 1
             0 1 0 0 0 0 0 1 0 0 1 1 1 0 0 1 0 0 0 0 0 0 0 1 0
             1 0 0)
debug       (failure out-of-data ())
debug       4799
debug       0
debug       (0 0 1 0 1 0 0 0 0 1 1 0 0 1 0 0 0 1 1 0 1 0 0 1 0
             1 1 1 0 0 1 1 0 1 1 1 0 0 0 0 0 1 1 0 1 1 0 0 0 1
             1 0 0 0 0 1 0 1 1 1 1 0 0 1 0 0 1 0 0 0 0 0 0 0 1
             0 1 0 0 0 0 0 1 0 0 1 1 1 0 0 1 0 0 0 0 0 0 0 1 0
             1 0 0 0)
debug       (failure out-of-data ())
debug       4800
debug       0
debug       (0 0 1 0 1 0 0 0 0 1 1 0 0 1 0 0 0 1 1 0 1 0 0 1 0
             1 1 1 0 0 1 1 0 1 1 1 0 0 0 0 0 1 1 0 1 1 0 0 0 1
             1 0 0 0 0 1 0 1 1 1 1 0 0 1 0 0 1 0 0 0 0 0 0 0 1
             0 1 0 0 0 0 0 1 0 0 1 1 1 0 0 1 0 0 0 0 0 0 0 1 0
             1 0 0 0 0)
debug       (failure out-of-data ())
debug       4801
debug       0
debug       (0 0 1 0 1 0 0 0 0 1 1 0 0 1 0 0 0 1 1 0 1 0 0 1 0
             1 1 1 0 0 1 1 0 1 1 1 0 0 0 0 0 1 1 0 1 1 0 0 0 1
             1 0 0 0 0 1 0 1 1 1 1 0 0 1 0 0 1 0 0 0 0 0 0 0 1
             0 1 0 0 0 0 0 1 0 0 1 1 1 0 0 1 0 0 0 0 0 0 0 1 0
             1 0 0 0 0 1)
debug       (failure out-of-data ())
debug       4802
debug       0
debug       (0 0 1 0 1 0 0 0 0 1 1 0 0 1 0 0 0 1 1 0 1 0 0 1 0
             1 1 1 0 0 1 1 0 1 1 1 0 0 0 0 0 1 1 0 1 1 0 0 0 1
             1 0 0 0 0 1 0 1 1 1 1 0 0 1 0 0 1 0 0 0 0 0 0 0 1
             0 1 0 0 0 0 0 1 0 0 1 1 1 0 0 1 0 0 0 0 0 0 0 1 0
             1 0 0 0 0 1 1)
debug       (failure out-of-data ())
debug       4803
debug       0
debug       (0 0 1 0 1 0 0 0 0 1 1 0 0 1 0 0 0 1 1 0 1 0 0 1 0
             1 1 1 0 0 1 1 0 1 1 1 0 0 0 0 0 1 1 0 1 1 0 0 0 1
             1 0 0 0 0 1 0 1 1 1 1 0 0 1 0 0 1 0 0 0 0 0 0 0 1
             0 1 0 0 0 0 0 1 0 0 1 1 1 0 0 1 0 0 0 0 0 0 0 1 0
             1 0 0 0 0 1 1 1)
debug       (failure out-of-data ())
debug       4804
debug       0
debug       (0 0 1 0 1 0 0 0 0 1 1 0 0 1 0 0 0 1 1 0 1 0 0 1 0
             1 1 1 0 0 1 1 0 1 1 1 0 0 0 0 0 1 1 0 1 1 0 0 0 1
             1 0 0 0 0 1 0 1 1 1 1 0 0 1 0 0 1 0 0 0 0 0 0 0 1
             0 1 0 0 0 0 0 1 0 0 1 1 1 0 0 1 0 0 0 0 0 0 0 1 0
             1 0 0 0 0 1 1 1 1)
debug       (failure out-of-data ())
debug       4805
debug       0
debug       (0 0 1 0 1 0 0 0 0 1 1 0 0 1 0 0 0 1 1 0 1 0 0 1 0
             1 1 1 0 0 1 1 0 1 1 1 0 0 0 0 0 1 1 0 1 1 0 0 0 1
             1 0 0 0 0 1 0 1 1 1 1 0 0 1 0 0 1 0 0 0 0 0 0 0 1
             0 1 0 0 0 0 0 1 0 0 1 1 1 0 0 1 0 0 0 0 0 0 0 1 0
             1 0 0 0 0 1 1 1 1 0)
debug       (failure out-of-data ())
debug       4806
debug       0
debug       (0 0 1 0 1 0 0 0 0 1 1 0 0 1 0 0 0 1 1 0 1 0 0 1 0
             1 1 1 0 0 1 1 0 1 1 1 0 0 0 0 0 1 1 0 1 1 0 0 0 1
             1 0 0 0 0 1 0 1 1 1 1 0 0 1 0 0 1 0 0 0 0 0 0 0 1
             0 1 0 0 0 0 0 1 0 0 1 1 1 0 0 1 0 0 0 0 0 0 0 1 0
             1 0 0 0 0 1 1 1 1 0 0)
debug       (failure out-of-data ())
debug       4807
debug       0
debug       (0 0 1 0 1 0 0 0 0 1 1 0 0 1 0 0 0 1 1 0 1 0 0 1 0
             1 1 1 0 0 1 1 0 1 1 1 0 0 0 0 0 1 1 0 1 1 0 0 0 1
             1 0 0 0 0 1 0 1 1 1 1 0 0 1 0 0 1 0 0 0 0 0 0 0 1
             0 1 0 0 0 0 0 1 0 0 1 1 1 0 0 1 0 0 0 0 0 0 0 1 0
             1 0 0 0 0 1 1 1 1 0 0 0)
debug       (failure out-of-data ())
debug       4808
debug       0
debug       (0 0 1 0 1 0 0 0 0 1 1 0 0 1 0 0 0 1 1 0 1 0 0 1 0
             1 1 1 0 0 1 1 0 1 1 1 0 0 0 0 0 1 1 0 1 1 0 0 0 1
             1 0 0 0 0 1 0 1 1 1 1 0 0 1 0 0 1 0 0 0 0 0 0 0 1
             0 1 0 0 0 0 0 1 0 0 1 1 1 0 0 1 0 0 0 0 0 0 0 1 0
             1 0 0 0 0 1 1 1 1 0 0 0 0)
debug       (failure out-of-data ())
debug       4809
debug       0
debug       (0 0 1 0 1 0 0 0 0 1 1 0 0 1 0 0 0 1 1 0 1 0 0 1 0
             1 1 1 0 0 1 1 0 1 1 1 0 0 0 0 0 1 1 0 1 1 0 0 0 1
             1 0 0 0 0 1 0 1 1 1 1 0 0 1 0 0 1 0 0 0 0 0 0 0 1
             0 1 0 0 0 0 0 1 0 0 1 1 1 0 0 1 0 0 0 0 0 0 0 1 0
             1 0 0 0 0 1 1 1 1 0 0 0 0 0)
debug       (failure out-of-data ())
debug       4810
debug       0
debug       (0 0 1 0 1 0 0 0 0 1 1 0 0 1 0 0 0 1 1 0 1 0 0 1 0
             1 1 1 0 0 1 1 0 1 1 1 0 0 0 0 0 1 1 0 1 1 0 0 0 1
             1 0 0 0 0 1 0 1 1 1 1 0 0 1 0 0 1 0 0 0 0 0 0 0 1
             0 1 0 0 0 0 0 1 0 0 1 1 1 0 0 1 0 0 0 0 0 0 0 1 0
             1 0 0 0 0 1 1 1 1 0 0 0 0 0 1)
debug       (failure out-of-data ())
debug       4811
debug       0
debug       (0 0 1 0 1 0 0 0 0 1 1 0 0 1 0 0 0 1 1 0 1 0 0 1 0
             1 1 1 0 0 1 1 0 1 1 1 0 0 0 0 0 1 1 0 1 1 0 0 0 1
             1 0 0 0 0 1 0 1 1 1 1 0 0 1 0 0 1 0 0 0 0 0 0 0 1
             0 1 0 0 0 0 0 1 0 0 1 1 1 0 0 1 0 0 0 0 0 0 0 1 0
             1 0 0 0 0 1 1 1 1 0 0 0 0 0 1 0)
debug       (failure out-of-data ())
debug       4812
debug       0
debug       (0 0 1 0 1 0 0 0 0 1 1 0 0 1 0 0 0 1 1 0 1 0 0 1 0
             1 1 1 0 0 1 1 0 1 1 1 0 0 0 0 0 1 1 0 1 1 0 0 0 1
             1 0 0 0 0 1 0 1 1 1 1 0 0 1 0 0 1 0 0 0 0 0 0 0 1
             0 1 0 0 0 0 0 1 0 0 1 1 1 0 0 1 0 0 0 0 0 0 0 1 0
             1 0 0 0 0 1 1 1 1 0 0 0 0 0 1 0 0)
debug       (failure out-of-data ())
debug       4813
debug       0
debug       (0 0 1 0 1 0 0 0 0 1 1 0 0 1 0 0 0 1 1 0 1 0 0 1 0
             1 1 1 0 0 1 1 0 1 1 1 0 0 0 0 0 1 1 0 1 1 0 0 0 1
             1 0 0 0 0 1 0 1 1 1 1 0 0 1 0 0 1 0 0 0 0 0 0 0 1
             0 1 0 0 0 0 0 1 0 0 1 1 1 0 0 1 0 0 0 0 0 0 0 1 0
             1 0 0 0 0 1 1 1 1 0 0 0 0 0 1 0 0 0)
debug       (failure out-of-data ())
debug       4814
debug       0
debug       (0 0 1 0 1 0 0 0 0 1 1 0 0 1 0 0 0 1 1 0 1 0 0 1 0
             1 1 1 0 0 1 1 0 1 1 1 0 0 0 0 0 1 1 0 1 1 0 0 0 1
             1 0 0 0 0 1 0 1 1 1 1 0 0 1 0 0 1 0 0 0 0 0 0 0 1
             0 1 0 0 0 0 0 1 0 0 1 1 1 0 0 1 0 0 0 0 0 0 0 1 0
             1 0 0 0 0 1 1 1 1 0 0 0 0 0 1 0 0 0 0)
debug       (failure out-of-data ())
debug       4815
debug       0
debug       (0 0 1 0 1 0 0 0 0 1 1 0 0 1 0 0 0 1 1 0 1 0 0 1 0
             1 1 1 0 0 1 1 0 1 1 1 0 0 0 0 0 1 1 0 1 1 0 0 0 1
             1 0 0 0 0 1 0 1 1 1 1 0 0 1 0 0 1 0 0 0 0 0 0 0 1
             0 1 0 0 0 0 0 1 0 0 1 1 1 0 0 1 0 0 0 0 0 0 0 1 0
             1 0 0 0 0 1 1 1 1 0 0 0 0 0 1 0 0 0 0 0)
debug       (failure out-of-data ())
debug       4816
debug       0
debug       (0 0 1 0 1 0 0 0 0 1 1 0 0 1 0 0 0 1 1 0 1 0 0 1 0
             1 1 1 0 0 1 1 0 1 1 1 0 0 0 0 0 1 1 0 1 1 0 0 0 1
             1 0 0 0 0 1 0 1 1 1 1 0 0 1 0 0 1 0 0 0 0 0 0 0 1
             0 1 0 0 0 0 0 1 0 0 1 1 1 0 0 1 0 0 0 0 0 0 0 1 0
             1 0 0 0 0 1 1 1 1 0 0 0 0 0 1 0 0 0 0 0 0)
debug       (failure out-of-data ())
debug       4817
debug       0
debug       (0 0 1 0 1 0 0 0 0 1 1 0 0 1 0 0 0 1 1 0 1 0 0 1 0
             1 1 1 0 0 1 1 0 1 1 1 0 0 0 0 0 1 1 0 1 1 0 0 0 1
             1 0 0 0 0 1 0 1 1 1 1 0 0 1 0 0 1 0 0 0 0 0 0 0 1
             0 1 0 0 0 0 0 1 0 0 1 1 1 0 0 1 0 0 0 0 0 0 0 1 0
             1 0 0 0 0 1 1 1 1 0 0 0 0 0 1 0 0 0 0 0 0 0)
debug       (failure out-of-data ())
debug       4818
debug       0
debug       (0 0 1 0 1 0 0 0 0 1 1 0 0 1 0 0 0 1 1 0 1 0 0 1 0
             1 1 1 0 0 1 1 0 1 1 1 0 0 0 0 0 1 1 0 1 1 0 0 0 1
             1 0 0 0 0 1 0 1 1 1 1 0 0 1 0 0 1 0 0 0 0 0 0 0 1
             0 1 0 0 0 0 0 1 0 0 1 1 1 0 0 1 0 0 0 0 0 0 0 1 0
             1 0 0 0 0 1 1 1 1 0 0 0 0 0 1 0 0 0 0 0 0 0 1)
debug       (failure out-of-data ())
debug       4819
debug       0
debug       (0 0 1 0 1 0 0 0 0 1 1 0 0 1 0 0 0 1 1 0 1 0 0 1 0
             1 1 1 0 0 1 1 0 1 1 1 0 0 0 0 0 1 1 0 1 1 0 0 0 1
             1 0 0 0 0 1 0 1 1 1 1 0 0 1 0 0 1 0 0 0 0 0 0 0 1
             0 1 0 0 0 0 0 1 0 0 1 1 1 0 0 1 0 0 0 0 0 0 0 1 0
             1 0 0 0 0 1 1 1 1 0 0 0 0 0 1 0 0 0 0 0 0 0 1 1)
debug       (failure out-of-data ())
debug       4820
debug       0
debug       (0 0 1 0 1 0 0 0 0 1 1 0 0 1 0 0 0 1 1 0 1 0 0 1 0
             1 1 1 0 0 1 1 0 1 1 1 0 0 0 0 0 1 1 0 1 1 0 0 0 1
             1 0 0 0 0 1 0 1 1 1 1 0 0 1 0 0 1 0 0 0 0 0 0 0 1
             0 1 0 0 0 0 0 1 0 0 1 1 1 0 0 1 0 0 0 0 0 0 0 1 0
             1 0 0 0 0 1 1 1 1 0 0 0 0 0 1 0 0 0 0 0 0 0 1 1 0
            )
debug       (failure out-of-data ())
debug       4821
debug       0
debug       (0 0 1 0 1 0 0 0 0 1 1 0 0 1 0 0 0 1 1 0 1 0 0 1 0
             1 1 1 0 0 1 1 0 1 1 1 0 0 0 0 0 1 1 0 1 1 0 0 0 1
             1 0 0 0 0 1 0 1 1 1 1 0 0 1 0 0 1 0 0 0 0 0 0 0 1
             0 1 0 0 0 0 0 1 0 0 1 1 1 0 0 1 0 0 0 0 0 0 0 1 0
             1 0 0 0 0 1 1 1 1 0 0 0 0 0 1 0 0 0 0 0 0 0 1 1 0
             1)
debug       (failure out-of-data ())
debug       4822
debug       0
debug       (0 0 1 0 1 0 0 0 0 1 1 0 0 1 0 0 0 1 1 0 1 0 0 1 0
             1 1 1 0 0 1 1 0 1 1 1 0 0 0 0 0 1 1 0 1 1 0 0 0 1
             1 0 0 0 0 1 0 1 1 1 1 0 0 1 0 0 1 0 0 0 0 0 0 0 1
             0 1 0 0 0 0 0 1 0 0 1 1 1 0 0 1 0 0 0 0 0 0 0 1 0
             1 0 0 0 0 1 1 1 1 0 0 0 0 0 1 0 0 0 0 0 0 0 1 1 0
             1 0)
debug       (failure out-of-data ())
debug       4823
debug       0
debug       (0 0 1 0 1 0 0 0 0 1 1 0 0 1 0 0 0 1 1 0 1 0 0 1 0
             1 1 1 0 0 1 1 0 1 1 1 0 0 0 0 0 1 1 0 1 1 0 0 0 1
             1 0 0 0 0 1 0 1 1 1 1 0 0 1 0 0 1 0 0 0 0 0 0 0 1
             0 1 0 0 0 0 0 1 0 0 1 1 1 0 0 1 0 0 0 0 0 0 0 1 0
             1 0 0 0 0 1 1 1 1 0 0 0 0 0 1 0 0 0 0 0 0 0 1 1 0
             1 0 0)
debug       (failure out-of-data ())
debug       4824
debug       0
debug       (0 0 1 0 1 0 0 0 0 1 1 0 0 1 0 0 0 1 1 0 1 0 0 1 0
             1 1 1 0 0 1 1 0 1 1 1 0 0 0 0 0 1 1 0 1 1 0 0 0 1
             1 0 0 0 0 1 0 1 1 1 1 0 0 1 0 0 1 0 0 0 0 0 0 0 1
             0 1 0 0 0 0 0 1 0 0 1 1 1 0 0 1 0 0 0 0 0 0 0 1 0
             1 0 0 0 0 1 1 1 1 0 0 0 0 0 1 0 0 0 0 0 0 0 1 1 0
             1 0 0 0)
debug       (failure out-of-data ())
debug       4825
debug       0
debug       (0 0 1 0 1 0 0 0 0 1 1 0 0 1 0 0 0 1 1 0 1 0 0 1 0
             1 1 1 0 0 1 1 0 1 1 1 0 0 0 0 0 1 1 0 1 1 0 0 0 1
             1 0 0 0 0 1 0 1 1 1 1 0 0 1 0 0 1 0 0 0 0 0 0 0 1
             0 1 0 0 0 0 0 1 0 0 1 1 1 0 0 1 0 0 0 0 0 0 0 1 0
             1 0 0 0 0 1 1 1 1 0 0 0 0 0 1 0 0 0 0 0 0 0 1 1 0
             1 0 0 0 0)
debug       (failure out-of-data ())
debug       4826
debug       0
debug       (0 0 1 0 1 0 0 0 0 1 1 0 0 1 0 0 0 1 1 0 1 0 0 1 0
             1 1 1 0 0 1 1 0 1 1 1 0 0 0 0 0 1 1 0 1 1 0 0 0 1
             1 0 0 0 0 1 0 1 1 1 1 0 0 1 0 0 1 0 0 0 0 0 0 0 1
             0 1 0 0 0 0 0 1 0 0 1 1 1 0 0 1 0 0 0 0 0 0 0 1 0
             1 0 0 0 0 1 1 1 1 0 0 0 0 0 1 0 0 0 0 0 0 0 1 1 0
             1 0 0 0 0 1)
debug       (failure out-of-data ())
debug       4827
debug       0
debug       (0 0 1 0 1 0 0 0 0 1 1 0 0 1 0 0 0 1 1 0 1 0 0 1 0
             1 1 1 0 0 1 1 0 1 1 1 0 0 0 0 0 1 1 0 1 1 0 0 0 1
             1 0 0 0 0 1 0 1 1 1 1 0 0 1 0 0 1 0 0 0 0 0 0 0 1
             0 1 0 0 0 0 0 1 0 0 1 1 1 0 0 1 0 0 0 0 0 0 0 1 0
             1 0 0 0 0 1 1 1 1 0 0 0 0 0 1 0 0 0 0 0 0 0 1 1 0
             1 0 0 0 0 1 1)
debug       (failure out-of-data ())
debug       4828
debug       0
debug       (0 0 1 0 1 0 0 0 0 1 1 0 0 1 0 0 0 1 1 0 1 0 0 1 0
             1 1 1 0 0 1 1 0 1 1 1 0 0 0 0 0 1 1 0 1 1 0 0 0 1
             1 0 0 0 0 1 0 1 1 1 1 0 0 1 0 0 1 0 0 0 0 0 0 0 1
             0 1 0 0 0 0 0 1 0 0 1 1 1 0 0 1 0 0 0 0 0 0 0 1 0
             1 0 0 0 0 1 1 1 1 0 0 0 0 0 1 0 0 0 0 0 0 0 1 1 0
             1 0 0 0 0 1 1 1)
debug       (failure out-of-data ())
debug       4829
debug       0
debug       (0 0 1 0 1 0 0 0 0 1 1 0 0 1 0 0 0 1 1 0 1 0 0 1 0
             1 1 1 0 0 1 1 0 1 1 1 0 0 0 0 0 1 1 0 1 1 0 0 0 1
             1 0 0 0 0 1 0 1 1 1 1 0 0 1 0 0 1 0 0 0 0 0 0 0 1
             0 1 0 0 0 0 0 1 0 0 1 1 1 0 0 1 0 0 0 0 0 0 0 1 0
             1 0 0 0 0 1 1 1 1 0 0 0 0 0 1 0 0 0 0 0 0 0 1 1 0
             1 0 0 0 0 1 1 1 0)
debug       (failure out-of-data ())
debug       4830
debug       0
debug       (0 0 1 0 1 0 0 0 0 1 1 0 0 1 0 0 0 1 1 0 1 0 0 1 0
             1 1 1 0 0 1 1 0 1 1 1 0 0 0 0 0 1 1 0 1 1 0 0 0 1
             1 0 0 0 0 1 0 1 1 1 1 0 0 1 0 0 1 0 0 0 0 0 0 0 1
             0 1 0 0 0 0 0 1 0 0 1 1 1 0 0 1 0 0 0 0 0 0 0 1 0
             1 0 0 0 0 1 1 1 1 0 0 0 0 0 1 0 0 0 0 0 0 0 1 1 0
             1 0 0 0 0 1 1 1 0 0)
debug       (failure out-of-data ())
debug       4831
debug       0
debug       (0 0 1 0 1 0 0 0 0 1 1 0 0 1 0 0 0 1 1 0 1 0 0 1 0
             1 1 1 0 0 1 1 0 1 1 1 0 0 0 0 0 1 1 0 1 1 0 0 0 1
             1 0 0 0 0 1 0 1 1 1 1 0 0 1 0 0 1 0 0 0 0 0 0 0 1
             0 1 0 0 0 0 0 1 0 0 1 1 1 0 0 1 0 0 0 0 0 0 0 1 0
             1 0 0 0 0 1 1 1 1 0 0 0 0 0 1 0 0 0 0 0 0 0 1 1 0
             1 0 0 0 0 1 1 1 0 0 0)
debug       (failure out-of-data ())
debug       4832
debug       0
debug       (0 0 1 0 1 0 0 0 0 1 1 0 0 1 0 0 0 1 1 0 1 0 0 1 0
             1 1 1 0 0 1 1 0 1 1 1 0 0 0 0 0 1 1 0 1 1 0 0 0 1
             1 0 0 0 0 1 0 1 1 1 1 0 0 1 0 0 1 0 0 0 0 0 0 0 1
             0 1 0 0 0 0 0 1 0 0 1 1 1 0 0 1 0 0 0 0 0 0 0 1 0
             1 0 0 0 0 1 1 1 1 0 0 0 0 0 1 0 0 0 0 0 0 0 1 1 0
             1 0 0 0 0 1 1 1 0 0 0 0)
debug       (failure out-of-data ())
debug       4833
debug       0
debug       (0 0 1 0 1 0 0 0 0 1 1 0 0 1 0 0 0 1 1 0 1 0 0 1 0
             1 1 1 0 0 1 1 0 1 1 1 0 0 0 0 0 1 1 0 1 1 0 0 0 1
             1 0 0 0 0 1 0 1 1 1 1 0 0 1 0 0 1 0 0 0 0 0 0 0 1
             0 1 0 0 0 0 0 1 0 0 1 1 1 0 0 1 0 0 0 0 0 0 0 1 0
             1 0 0 0 0 1 1 1 1 0 0 0 0 0 1 0 0 0 0 0 0 0 1 1 0
             1 0 0 0 0 1 1 1 0 0 0 0 0)
debug       (failure out-of-data ())
debug       4834
debug       0
debug       (0 0 1 0 1 0 0 0 0 1 1 0 0 1 0 0 0 1 1 0 1 0 0 1 0
             1 1 1 0 0 1 1 0 1 1 1 0 0 0 0 0 1 1 0 1 1 0 0 0 1
             1 0 0 0 0 1 0 1 1 1 1 0 0 1 0 0 1 0 0 0 0 0 0 0 1
             0 1 0 0 0 0 0 1 0 0 1 1 1 0 0 1 0 0 0 0 0 0 0 1 0
             1 0 0 0 0 1 1 1 1 0 0 0 0 0 1 0 0 0 0 0 0 0 1 1 0
             1 0 0 0 0 1 1 1 0 0 0 0 0 1)
debug       (failure out-of-data ())
debug       4835
debug       0
debug       (0 0 1 0 1 0 0 0 0 1 1 0 0 1 0 0 0 1 1 0 1 0 0 1 0
             1 1 1 0 0 1 1 0 1 1 1 0 0 0 0 0 1 1 0 1 1 0 0 0 1
             1 0 0 0 0 1 0 1 1 1 1 0 0 1 0 0 1 0 0 0 0 0 0 0 1
             0 1 0 0 0 0 0 1 0 0 1 1 1 0 0 1 0 0 0 0 0 0 0 1 0
             1 0 0 0 0 1 1 1 1 0 0 0 0 0 1 0 0 0 0 0 0 0 1 1 0
             1 0 0 0 0 1 1 1 0 0 0 0 0 1 1)
debug       (failure out-of-data ())
debug       4836
debug       0
debug       (0 0 1 0 1 0 0 0 0 1 1 0 0 1 0 0 0 1 1 0 1 0 0 1 0
             1 1 1 0 0 1 1 0 1 1 1 0 0 0 0 0 1 1 0 1 1 0 0 0 1
             1 0 0 0 0 1 0 1 1 1 1 0 0 1 0 0 1 0 0 0 0 0 0 0 1
             0 1 0 0 0 0 0 1 0 0 1 1 1 0 0 1 0 0 0 0 0 0 0 1 0
             1 0 0 0 0 1 1 1 1 0 0 0 0 0 1 0 0 0 0 0 0 0 1 1 0
             1 0 0 0 0 1 1 1 0 0 0 0 0 1 1 1)
debug       (failure out-of-data ())
debug       4837
debug       0
debug       (0 0 1 0 1 0 0 0 0 1 1 0 0 1 0 0 0 1 1 0 1 0 0 1 0
             1 1 1 0 0 1 1 0 1 1 1 0 0 0 0 0 1 1 0 1 1 0 0 0 1
             1 0 0 0 0 1 0 1 1 1 1 0 0 1 0 0 1 0 0 0 0 0 0 0 1
             0 1 0 0 0 0 0 1 0 0 1 1 1 0 0 1 0 0 0 0 0 0 0 1 0
             1 0 0 0 0 1 1 1 1 0 0 0 0 0 1 0 0 0 0 0 0 0 1 1 0
             1 0 0 0 0 1 1 1 0 0 0 0 0 1 1 1 0)
debug       (failure out-of-data ())
debug       4838
debug       0
debug       (0 0 1 0 1 0 0 0 0 1 1 0 0 1 0 0 0 1 1 0 1 0 0 1 0
             1 1 1 0 0 1 1 0 1 1 1 0 0 0 0 0 1 1 0 1 1 0 0 0 1
             1 0 0 0 0 1 0 1 1 1 1 0 0 1 0 0 1 0 0 0 0 0 0 0 1
             0 1 0 0 0 0 0 1 0 0 1 1 1 0 0 1 0 0 0 0 0 0 0 1 0
             1 0 0 0 0 1 1 1 1 0 0 0 0 0 1 0 0 0 0 0 0 0 1 1 0
             1 0 0 0 0 1 1 1 0 0 0 0 0 1 1 1 0 0)
debug       (failure out-of-data ())
debug       4839
debug       0
debug       (0 0 1 0 1 0 0 0 0 1 1 0 0 1 0 0 0 1 1 0 1 0 0 1 0
             1 1 1 0 0 1 1 0 1 1 1 0 0 0 0 0 1 1 0 1 1 0 0 0 1
             1 0 0 0 0 1 0 1 1 1 1 0 0 1 0 0 1 0 0 0 0 0 0 0 1
             0 1 0 0 0 0 0 1 0 0 1 1 1 0 0 1 0 0 0 0 0 0 0 1 0
             1 0 0 0 0 1 1 1 1 0 0 0 0 0 1 0 0 0 0 0 0 0 1 1 0
             1 0 0 0 0 1 1 1 0 0 0 0 0 1 1 1 0 0 0)
debug       (failure out-of-data ())
debug       4840
debug       0
debug       (0 0 1 0 1 0 0 0 0 1 1 0 0 1 0 0 0 1 1 0 1 0 0 1 0
             1 1 1 0 0 1 1 0 1 1 1 0 0 0 0 0 1 1 0 1 1 0 0 0 1
             1 0 0 0 0 1 0 1 1 1 1 0 0 1 0 0 1 0 0 0 0 0 0 0 1
             0 1 0 0 0 0 0 1 0 0 1 1 1 0 0 1 0 0 0 0 0 0 0 1 0
             1 0 0 0 0 1 1 1 1 0 0 0 0 0 1 0 0 0 0 0 0 0 1 1 0
             1 0 0 0 0 1 1 1 0 0 0 0 0 1 1 1 0 0 0 0)
debug       (failure out-of-data ())
debug       4841
debug       0
debug       (0 0 1 0 1 0 0 0 0 1 1 0 0 1 0 0 0 1 1 0 1 0 0 1 0
             1 1 1 0 0 1 1 0 1 1 1 0 0 0 0 0 1 1 0 1 1 0 0 0 1
             1 0 0 0 0 1 0 1 1 1 1 0 0 1 0 0 1 0 0 0 0 0 0 0 1
             0 1 0 0 0 0 0 1 0 0 1 1 1 0 0 1 0 0 0 0 0 0 0 1 0
             1 0 0 0 0 1 1 1 1 0 0 0 0 0 1 0 0 0 0 0 0 0 1 1 0
             1 0 0 0 0 1 1 1 0 0 0 0 0 1 1 1 0 0 0 0 0)
debug       (failure out-of-data ())
debug       4842
debug       0
debug       (0 0 1 0 1 0 0 0 0 1 1 0 0 1 0 0 0 1 1 0 1 0 0 1 0
             1 1 1 0 0 1 1 0 1 1 1 0 0 0 0 0 1 1 0 1 1 0 0 0 1
             1 0 0 0 0 1 0 1 1 1 1 0 0 1 0 0 1 0 0 0 0 0 0 0 1
             0 1 0 0 0 0 0 1 0 0 1 1 1 0 0 1 0 0 0 0 0 0 0 1 0
             1 0 0 0 0 1 1 1 1 0 0 0 0 0 1 0 0 0 0 0 0 0 1 1 0
             1 0 0 0 0 1 1 1 0 0 0 0 0 1 1 1 0 0 0 0 0 1)
debug       (failure out-of-data ())
debug       4843
debug       0
debug       (0 0 1 0 1 0 0 0 0 1 1 0 0 1 0 0 0 1 1 0 1 0 0 1 0
             1 1 1 0 0 1 1 0 1 1 1 0 0 0 0 0 1 1 0 1 1 0 0 0 1
             1 0 0 0 0 1 0 1 1 1 1 0 0 1 0 0 1 0 0 0 0 0 0 0 1
             0 1 0 0 0 0 0 1 0 0 1 1 1 0 0 1 0 0 0 0 0 0 0 1 0
             1 0 0 0 0 1 1 1 1 0 0 0 0 0 1 0 0 0 0 0 0 0 1 1 0
             1 0 0 0 0 1 1 1 0 0 0 0 0 1 1 1 0 0 0 0 0 1 1)
debug       (failure out-of-data ())
debug       4844
debug       0
debug       (0 0 1 0 1 0 0 0 0 1 1 0 0 1 0 0 0 1 1 0 1 0 0 1 0
             1 1 1 0 0 1 1 0 1 1 1 0 0 0 0 0 1 1 0 1 1 0 0 0 1
             1 0 0 0 0 1 0 1 1 1 1 0 0 1 0 0 1 0 0 0 0 0 0 0 1
             0 1 0 0 0 0 0 1 0 0 1 1 1 0 0 1 0 0 0 0 0 0 0 1 0
             1 0 0 0 0 1 1 1 1 0 0 0 0 0 1 0 0 0 0 0 0 0 1 1 0
             1 0 0 0 0 1 1 1 0 0 0 0 0 1 1 1 0 0 0 0 0 1 1 0)
debug       (failure out-of-data ())
debug       4845
debug       0
debug       (0 0 1 0 1 0 0 0 0 1 1 0 0 1 0 0 0 1 1 0 1 0 0 1 0
             1 1 1 0 0 1 1 0 1 1 1 0 0 0 0 0 1 1 0 1 1 0 0 0 1
             1 0 0 0 0 1 0 1 1 1 1 0 0 1 0 0 1 0 0 0 0 0 0 0 1
             0 1 0 0 0 0 0 1 0 0 1 1 1 0 0 1 0 0 0 0 0 0 0 1 0
             1 0 0 0 0 1 1 1 1 0 0 0 0 0 1 0 0 0 0 0 0 0 1 1 0
             1 0 0 0 0 1 1 1 0 0 0 0 0 1 1 1 0 0 0 0 0 1 1 0 0
            )
debug       (failure out-of-data ())
debug       4846
debug       0
debug       (0 0 1 0 1 0 0 0 0 1 1 0 0 1 0 0 0 1 1 0 1 0 0 1 0
             1 1 1 0 0 1 1 0 1 1 1 0 0 0 0 0 1 1 0 1 1 0 0 0 1
             1 0 0 0 0 1 0 1 1 1 1 0 0 1 0 0 1 0 0 0 0 0 0 0 1
             0 1 0 0 0 0 0 1 0 0 1 1 1 0 0 1 0 0 0 0 0 0 0 1 0
             1 0 0 0 0 1 1 1 1 0 0 0 0 0 1 0 0 0 0 0 0 0 1 1 0
             1 0 0 0 0 1 1 1 0 0 0 0 0 1 1 1 0 0 0 0 0 1 1 0 0
             0)
debug       (failure out-of-data ())
debug       4847
debug       0
debug       (0 0 1 0 1 0 0 0 0 1 1 0 0 1 0 0 0 1 1 0 1 0 0 1 0
             1 1 1 0 0 1 1 0 1 1 1 0 0 0 0 0 1 1 0 1 1 0 0 0 1
             1 0 0 0 0 1 0 1 1 1 1 0 0 1 0 0 1 0 0 0 0 0 0 0 1
             0 1 0 0 0 0 0 1 0 0 1 1 1 0 0 1 0 0 0 0 0 0 0 1 0
             1 0 0 0 0 1 1 1 1 0 0 0 0 0 1 0 0 0 0 0 0 0 1 1 0
             1 0 0 0 0 1 1 1 0 0 0 0 0 1 1 1 0 0 0 0 0 1 1 0 0
             0 1)
debug       (failure out-of-data ())
debug       4848
debug       0
debug       (0 0 1 0 1 0 0 0 0 1 1 0 0 1 0 0 0 1 1 0 1 0 0 1 0
             1 1 1 0 0 1 1 0 1 1 1 0 0 0 0 0 1 1 0 1 1 0 0 0 1
             1 0 0 0 0 1 0 1 1 1 1 0 0 1 0 0 1 0 0 0 0 0 0 0 1
             0 1 0 0 0 0 0 1 0 0 1 1 1 0 0 1 0 0 0 0 0 0 0 1 0
             1 0 0 0 0 1 1 1 1 0 0 0 0 0 1 0 0 0 0 0 0 0 1 1 0
             1 0 0 0 0 1 1 1 0 0 0 0 0 1 1 1 0 0 0 0 0 1 1 0 0
             0 1 0)
debug       (failure out-of-data ())
debug       4849
debug       0
debug       (0 0 1 0 1 0 0 0 0 1 1 0 0 1 0 0 0 1 1 0 1 0 0 1 0
             1 1 1 0 0 1 1 0 1 1 1 0 0 0 0 0 1 1 0 1 1 0 0 0 1
             1 0 0 0 0 1 0 1 1 1 1 0 0 1 0 0 1 0 0 0 0 0 0 0 1
             0 1 0 0 0 0 0 1 0 0 1 1 1 0 0 1 0 0 0 0 0 0 0 1 0
             1 0 0 0 0 1 1 1 1 0 0 0 0 0 1 0 0 0 0 0 0 0 1 1 0
             1 0 0 0 0 1 1 1 0 0 0 0 0 1 1 1 0 0 0 0 0 1 1 0 0
             0 1 0 0)
debug       (failure out-of-data ())
debug       4850
debug       0
debug       (0 0 1 0 1 0 0 0 0 1 1 0 0 1 0 0 0 1 1 0 1 0 0 1 0
             1 1 1 0 0 1 1 0 1 1 1 0 0 0 0 0 1 1 0 1 1 0 0 0 1
             1 0 0 0 0 1 0 1 1 1 1 0 0 1 0 0 1 0 0 0 0 0 0 0 1
             0 1 0 0 0 0 0 1 0 0 1 1 1 0 0 1 0 0 0 0 0 0 0 1 0
             1 0 0 0 0 1 1 1 1 0 0 0 0 0 1 0 0 0 0 0 0 0 1 1 0
             1 0 0 0 0 1 1 1 0 0 0 0 0 1 1 1 0 0 0 0 0 1 1 0 0
             0 1 0 0 1)
debug       (failure out-of-data ())
debug       4851
debug       0
debug       (0 0 1 0 1 0 0 0 0 1 1 0 0 1 0 0 0 1 1 0 1 0 0 1 0
             1 1 1 0 0 1 1 0 1 1 1 0 0 0 0 0 1 1 0 1 1 0 0 0 1
             1 0 0 0 0 1 0 1 1 1 1 0 0 1 0 0 1 0 0 0 0 0 0 0 1
             0 1 0 0 0 0 0 1 0 0 1 1 1 0 0 1 0 0 0 0 0 0 0 1 0
             1 0 0 0 0 1 1 1 1 0 0 0 0 0 1 0 0 0 0 0 0 0 1 1 0
             1 0 0 0 0 1 1 1 0 0 0 0 0 1 1 1 0 0 0 0 0 1 1 0 0
             0 1 0 0 1 0)
debug       (failure out-of-data ())
debug       4852
debug       0
debug       (0 0 1 0 1 0 0 0 0 1 1 0 0 1 0 0 0 1 1 0 1 0 0 1 0
             1 1 1 0 0 1 1 0 1 1 1 0 0 0 0 0 1 1 0 1 1 0 0 0 1
             1 0 0 0 0 1 0 1 1 1 1 0 0 1 0 0 1 0 0 0 0 0 0 0 1
             0 1 0 0 0 0 0 1 0 0 1 1 1 0 0 1 0 0 0 0 0 0 0 1 0
             1 0 0 0 0 1 1 1 1 0 0 0 0 0 1 0 0 0 0 0 0 0 1 1 0
             1 0 0 0 0 1 1 1 0 0 0 0 0 1 1 1 0 0 0 0 0 1 1 0 0
             0 1 0 0 1 0 1)
debug       (failure out-of-data ())
debug       4853
debug       0
debug       (0 0 1 0 1 0 0 0 0 1 1 0 0 1 0 0 0 1 1 0 1 0 0 1 0
             1 1 1 0 0 1 1 0 1 1 1 0 0 0 0 0 1 1 0 1 1 0 0 0 1
             1 0 0 0 0 1 0 1 1 1 1 0 0 1 0 0 1 0 0 0 0 0 0 0 1
             0 1 0 0 0 0 0 1 0 0 1 1 1 0 0 1 0 0 0 0 0 0 0 1 0
             1 0 0 0 0 1 1 1 1 0 0 0 0 0 1 0 0 0 0 0 0 0 1 1 0
             1 0 0 0 0 1 1 1 0 0 0 0 0 1 1 1 0 0 0 0 0 1 1 0 0
             0 1 0 0 1 0 1 0)
debug       (failure out-of-data ())
debug       4854
debug       0
debug       (0 0 1 0 1 0 0 0 0 1 1 0 0 1 0 0 0 1 1 0 1 0 0 1 0
             1 1 1 0 0 1 1 0 1 1 1 0 0 0 0 0 1 1 0 1 1 0 0 0 1
             1 0 0 0 0 1 0 1 1 1 1 0 0 1 0 0 1 0 0 0 0 0 0 0 1
             0 1 0 0 0 0 0 1 0 0 1 1 1 0 0 1 0 0 0 0 0 0 0 1 0
             1 0 0 0 0 1 1 1 1 0 0 0 0 0 1 0 0 0 0 0 0 0 1 1 0
             1 0 0 0 0 1 1 1 0 0 0 0 0 1 1 1 0 0 0 0 0 1 1 0 0
             0 1 0 0 1 0 1 0 0)
debug       (failure out-of-data ())
debug       4855
debug       0
debug       (0 0 1 0 1 0 0 0 0 1 1 0 0 1 0 0 0 1 1 0 1 0 0 1 0
             1 1 1 0 0 1 1 0 1 1 1 0 0 0 0 0 1 1 0 1 1 0 0 0 1
             1 0 0 0 0 1 0 1 1 1 1 0 0 1 0 0 1 0 0 0 0 0 0 0 1
             0 1 0 0 0 0 0 1 0 0 1 1 1 0 0 1 0 0 0 0 0 0 0 1 0
             1 0 0 0 0 1 1 1 1 0 0 0 0 0 1 0 0 0 0 0 0 0 1 1 0
             1 0 0 0 0 1 1 1 0 0 0 0 0 1 1 1 0 0 0 0 0 1 1 0 0
             0 1 0 0 1 0 1 0 0 1)
debug       (failure out-of-data ())
debug       4856
debug       0
debug       (0 0 1 0 1 0 0 0 0 1 1 0 0 1 0 0 0 1 1 0 1 0 0 1 0
             1 1 1 0 0 1 1 0 1 1 1 0 0 0 0 0 1 1 0 1 1 0 0 0 1
             1 0 0 0 0 1 0 1 1 1 1 0 0 1 0 0 1 0 0 0 0 0 0 0 1
             0 1 0 0 0 0 0 1 0 0 1 1 1 0 0 1 0 0 0 0 0 0 0 1 0
             1 0 0 0 0 1 1 1 1 0 0 0 0 0 1 0 0 0 0 0 0 0 1 1 0
             1 0 0 0 0 1 1 1 0 0 0 0 0 1 1 1 0 0 0 0 0 1 1 0 0
             0 1 0 0 1 0 1 0 0 1 0)
debug       (failure out-of-data ())
debug       4857
debug       0
debug       (0 0 1 0 1 0 0 0 0 1 1 0 0 1 0 0 0 1 1 0 1 0 0 1 0
             1 1 1 0 0 1 1 0 1 1 1 0 0 0 0 0 1 1 0 1 1 0 0 0 1
             1 0 0 0 0 1 0 1 1 1 1 0 0 1 0 0 1 0 0 0 0 0 0 0 1
             0 1 0 0 0 0 0 1 0 0 1 1 1 0 0 1 0 0 0 0 0 0 0 1 0
             1 0 0 0 0 1 1 1 1 0 0 0 0 0 1 0 0 0 0 0 0 0 1 1 0
             1 0 0 0 0 1 1 1 0 0 0 0 0 1 1 1 0 0 0 0 0 1 1 0 0
             0 1 0 0 1 0 1 0 0 1 0 0)
debug       (failure out-of-data ())
debug       4858
debug       0
debug       (0 0 1 0 1 0 0 0 0 1 1 0 0 1 0 0 0 1 1 0 1 0 0 1 0
             1 1 1 0 0 1 1 0 1 1 1 0 0 0 0 0 1 1 0 1 1 0 0 0 1
             1 0 0 0 0 1 0 1 1 1 1 0 0 1 0 0 1 0 0 0 0 0 0 0 1
             0 1 0 0 0 0 0 1 0 0 1 1 1 0 0 1 0 0 0 0 0 0 0 1 0
             1 0 0 0 0 1 1 1 1 0 0 0 0 0 1 0 0 0 0 0 0 0 1 1 0
             1 0 0 0 0 1 1 1 0 0 0 0 0 1 1 1 0 0 0 0 0 1 1 0 0
             0 1 0 0 1 0 1 0 0 1 0 0 1)
debug       (failure out-of-data ())
debug       4859
debug       0
debug       (0 0 1 0 1 0 0 0 0 1 1 0 0 1 0 0 0 1 1 0 1 0 0 1 0
             1 1 1 0 0 1 1 0 1 1 1 0 0 0 0 0 1 1 0 1 1 0 0 0 1
             1 0 0 0 0 1 0 1 1 1 1 0 0 1 0 0 1 0 0 0 0 0 0 0 1
             0 1 0 0 0 0 0 1 0 0 1 1 1 0 0 1 0 0 0 0 0 0 0 1 0
             1 0 0 0 0 1 1 1 1 0 0 0 0 0 1 0 0 0 0 0 0 0 1 1 0
             1 0 0 0 0 1 1 1 0 0 0 0 0 1 1 1 0 0 0 0 0 1 1 0 0
             0 1 0 0 1 0 1 0 0 1 0 0 1 0)
debug       (failure out-of-data ())
debug       4860
debug       0
debug       (0 0 1 0 1 0 0 0 0 1 1 0 0 1 0 0 0 1 1 0 1 0 0 1 0
             1 1 1 0 0 1 1 0 1 1 1 0 0 0 0 0 1 1 0 1 1 0 0 0 1
             1 0 0 0 0 1 0 1 1 1 1 0 0 1 0 0 1 0 0 0 0 0 0 0 1
             0 1 0 0 0 0 0 1 0 0 1 1 1 0 0 1 0 0 0 0 0 0 0 1 0
             1 0 0 0 0 1 1 1 1 0 0 0 0 0 1 0 0 0 0 0 0 0 1 1 0
             1 0 0 0 0 1 1 1 0 0 0 0 0 1 1 1 0 0 0 0 0 1 1 0 0
             0 1 0 0 1 0 1 0 0 1 0 0 1 0 1)
debug       (failure out-of-data ())
debug       4861
debug       0
debug       (0 0 1 0 1 0 0 0 0 1 1 0 0 1 0 0 0 1 1 0 1 0 0 1 0
             1 1 1 0 0 1 1 0 1 1 1 0 0 0 0 0 1 1 0 1 1 0 0 0 1
             1 0 0 0 0 1 0 1 1 1 1 0 0 1 0 0 1 0 0 0 0 0 0 0 1
             0 1 0 0 0 0 0 1 0 0 1 1 1 0 0 1 0 0 0 0 0 0 0 1 0
             1 0 0 0 0 1 1 1 1 0 0 0 0 0 1 0 0 0 0 0 0 0 1 1 0
             1 0 0 0 0 1 1 1 0 0 0 0 0 1 1 1 0 0 0 0 0 1 1 0 0
             0 1 0 0 1 0 1 0 0 1 0 0 1 0 1 0)
debug       (failure out-of-data ())
debug       4862
debug       0
debug       (0 0 1 0 1 0 0 0 0 1 1 0 0 1 0 0 0 1 1 0 1 0 0 1 0
             1 1 1 0 0 1 1 0 1 1 1 0 0 0 0 0 1 1 0 1 1 0 0 0 1
             1 0 0 0 0 1 0 1 1 1 1 0 0 1 0 0 1 0 0 0 0 0 0 0 1
             0 1 0 0 0 0 0 1 0 0 1 1 1 0 0 1 0 0 0 0 0 0 0 1 0
             1 0 0 0 0 1 1 1 1 0 0 0 0 0 1 0 0 0 0 0 0 0 1 1 0
             1 0 0 0 0 1 1 1 0 0 0 0 0 1 1 1 0 0 0 0 0 1 1 0 0
             0 1 0 0 1 0 1 0 0 1 0 0 1 0 1 0 0)
debug       (failure out-of-data ())
debug       4863
debug       0
debug       (0 0 1 0 1 0 0 0 0 1 1 0 0 1 0 0 0 1 1 0 1 0 0 1 0
             1 1 1 0 0 1 1 0 1 1 1 0 0 0 0 0 1 1 0 1 1 0 0 0 1
             1 0 0 0 0 1 0 1 1 1 1 0 0 1 0 0 1 0 0 0 0 0 0 0 1
             0 1 0 0 0 0 0 1 0 0 1 1 1 0 0 1 0 0 0 0 0 0 0 1 0
             1 0 0 0 0 1 1 1 1 0 0 0 0 0 1 0 0 0 0 0 0 0 1 1 0
             1 0 0 0 0 1 1 1 0 0 0 0 0 1 1 1 0 0 0 0 0 1 1 0 0
             0 1 0 0 1 0 1 0 0 1 0 0 1 0 1 0 0 1)
debug       (failure out-of-data ())
debug       4864
debug       0
debug       (0 0 1 0 1 0 0 0 0 1 1 0 0 1 0 0 0 1 1 0 1 0 0 1 0
             1 1 1 0 0 1 1 0 1 1 1 0 0 0 0 0 1 1 0 1 1 0 0 0 1
             1 0 0 0 0 1 0 1 1 1 1 0 0 1 0 0 1 0 0 0 0 0 0 0 1
             0 1 0 0 0 0 0 1 0 0 1 1 1 0 0 1 0 0 0 0 0 0 0 1 0
             1 0 0 0 0 1 1 1 1 0 0 0 0 0 1 0 0 0 0 0 0 0 1 1 0
             1 0 0 0 0 1 1 1 0 0 0 0 0 1 1 1 0 0 0 0 0 1 1 0 0
             0 1 0 0 1 0 1 0 0 1 0 0 1 0 1 0 0 1 0)
debug       (failure out-of-data ())
debug       4865
debug       0
debug       (0 0 1 0 1 0 0 0 0 1 1 0 0 1 0 0 0 1 1 0 1 0 0 1 0
             1 1 1 0 0 1 1 0 1 1 1 0 0 0 0 0 1 1 0 1 1 0 0 0 1
             1 0 0 0 0 1 0 1 1 1 1 0 0 1 0 0 1 0 0 0 0 0 0 0 1
             0 1 0 0 0 0 0 1 0 0 1 1 1 0 0 1 0 0 0 0 0 0 0 1 0
             1 0 0 0 0 1 1 1 1 0 0 0 0 0 1 0 0 0 0 0 0 0 1 1 0
             1 0 0 0 0 1 1 1 0 0 0 0 0 1 1 1 0 0 0 0 0 1 1 0 0
             0 1 0 0 1 0 1 0 0 1 0 0 1 0 1 0 0 1 0 0)
debug       (failure out-of-data ())
debug       4866
debug       0
debug       (0 0 1 0 1 0 0 0 0 1 1 0 0 1 0 0 0 1 1 0 1 0 0 1 0
             1 1 1 0 0 1 1 0 1 1 1 0 0 0 0 0 1 1 0 1 1 0 0 0 1
             1 0 0 0 0 1 0 1 1 1 1 0 0 1 0 0 1 0 0 0 0 0 0 0 1
             0 1 0 0 0 0 0 1 0 0 1 1 1 0 0 1 0 0 0 0 0 0 0 1 0
             1 0 0 0 0 1 1 1 1 0 0 0 0 0 1 0 0 0 0 0 0 0 1 1 0
             1 0 0 0 0 1 1 1 0 0 0 0 0 1 1 1 0 0 0 0 0 1 1 0 0
             0 1 0 0 1 0 1 0 0 1 0 0 1 0 1 0 0 1 0 0 1)
debug       (failure out-of-data ())
debug       4867
debug       0
debug       (0 0 1 0 1 0 0 0 0 1 1 0 0 1 0 0 0 1 1 0 1 0 0 1 0
             1 1 1 0 0 1 1 0 1 1 1 0 0 0 0 0 1 1 0 1 1 0 0 0 1
             1 0 0 0 0 1 0 1 1 1 1 0 0 1 0 0 1 0 0 0 0 0 0 0 1
             0 1 0 0 0 0 0 1 0 0 1 1 1 0 0 1 0 0 0 0 0 0 0 1 0
             1 0 0 0 0 1 1 1 1 0 0 0 0 0 1 0 0 0 0 0 0 0 1 1 0
             1 0 0 0 0 1 1 1 0 0 0 0 0 1 1 1 0 0 0 0 0 1 1 0 0
             0 1 0 0 1 0 1 0 0 1 0 0 1 0 1 0 0 1 0 0 1 0)
debug       (failure out-of-data ())
debug       4868
debug       0
debug       (0 0 1 0 1 0 0 0 0 1 1 0 0 1 0 0 0 1 1 0 1 0 0 1 0
             1 1 1 0 0 1 1 0 1 1 1 0 0 0 0 0 1 1 0 1 1 0 0 0 1
             1 0 0 0 0 1 0 1 1 1 1 0 0 1 0 0 1 0 0 0 0 0 0 0 1
             0 1 0 0 0 0 0 1 0 0 1 1 1 0 0 1 0 0 0 0 0 0 0 1 0
             1 0 0 0 0 1 1 1 1 0 0 0 0 0 1 0 0 0 0 0 0 0 1 1 0
             1 0 0 0 0 1 1 1 0 0 0 0 0 1 1 1 0 0 0 0 0 1 1 0 0
             0 1 0 0 1 0 1 0 0 1 0 0 1 0 1 0 0 1 0 0 1 0 1)
debug       (failure out-of-data ())
debug       4869
debug       0
debug       (0 0 1 0 1 0 0 0 0 1 1 0 0 1 0 0 0 1 1 0 1 0 0 1 0
             1 1 1 0 0 1 1 0 1 1 1 0 0 0 0 0 1 1 0 1 1 0 0 0 1
             1 0 0 0 0 1 0 1 1 1 1 0 0 1 0 0 1 0 0 0 0 0 0 0 1
             0 1 0 0 0 0 0 1 0 0 1 1 1 0 0 1 0 0 0 0 0 0 0 1 0
             1 0 0 0 0 1 1 1 1 0 0 0 0 0 1 0 0 0 0 0 0 0 1 1 0
             1 0 0 0 0 1 1 1 0 0 0 0 0 1 1 1 0 0 0 0 0 1 1 0 0
             0 1 0 0 1 0 1 0 0 1 0 0 1 0 1 0 0 1 0 0 1 0 1 0)
debug       (failure out-of-data ())
debug       4870
debug       0
debug       (0 0 1 0 1 0 0 0 0 1 1 0 0 1 0 0 0 1 1 0 1 0 0 1 0
             1 1 1 0 0 1 1 0 1 1 1 0 0 0 0 0 1 1 0 1 1 0 0 0 1
             1 0 0 0 0 1 0 1 1 1 1 0 0 1 0 0 1 0 0 0 0 0 0 0 1
             0 1 0 0 0 0 0 1 0 0 1 1 1 0 0 1 0 0 0 0 0 0 0 1 0
             1 0 0 0 0 1 1 1 1 0 0 0 0 0 1 0 0 0 0 0 0 0 1 1 0
             1 0 0 0 0 1 1 1 0 0 0 0 0 1 1 1 0 0 0 0 0 1 1 0 0
             0 1 0 0 1 0 1 0 0 1 0 0 1 0 1 0 0 1 0 0 1 0 1 0 0
            )
debug       (failure out-of-data ())
debug       4871
debug       0
debug       (0 0 1 0 1 0 0 0 0 1 1 0 0 1 0 0 0 1 1 0 1 0 0 1 0
             1 1 1 0 0 1 1 0 1 1 1 0 0 0 0 0 1 1 0 1 1 0 0 0 1
             1 0 0 0 0 1 0 1 1 1 1 0 0 1 0 0 1 0 0 0 0 0 0 0 1
             0 1 0 0 0 0 0 1 0 0 1 1 1 0 0 1 0 0 0 0 0 0 0 1 0
             1 0 0 0 0 1 1 1 1 0 0 0 0 0 1 0 0 0 0 0 0 0 1 1 0
             1 0 0 0 0 1 1 1 0 0 0 0 0 1 1 1 0 0 0 0 0 1 1 0 0
             0 1 0 0 1 0 1 0 0 1 0 0 1 0 1 0 0 1 0 0 1 0 1 0 0
             1)
debug       (failure out-of-data ())
debug       4872
debug       0
debug       (0 0 1 0 1 0 0 0 0 1 1 0 0 1 0 0 0 1 1 0 1 0 0 1 0
             1 1 1 0 0 1 1 0 1 1 1 0 0 0 0 0 1 1 0 1 1 0 0 0 1
             1 0 0 0 0 1 0 1 1 1 1 0 0 1 0 0 1 0 0 0 0 0 0 0 1
             0 1 0 0 0 0 0 1 0 0 1 1 1 0 0 1 0 0 0 0 0 0 0 1 0
             1 0 0 0 0 1 1 1 1 0 0 0 0 0 1 0 0 0 0 0 0 0 1 1 0
             1 0 0 0 0 1 1 1 0 0 0 0 0 1 1 1 0 0 0 0 0 1 1 0 0
             0 1 0 0 1 0 1 0 0 1 0 0 1 0 1 0 0 1 0 0 1 0 1 0 0
             1 0)
debug       (failure out-of-data ())
debug       4873
debug       0
debug       (0 0 1 0 1 0 0 0 0 1 1 0 0 1 0 0 0 1 1 0 1 0 0 1 0
             1 1 1 0 0 1 1 0 1 1 1 0 0 0 0 0 1 1 0 1 1 0 0 0 1
             1 0 0 0 0 1 0 1 1 1 1 0 0 1 0 0 1 0 0 0 0 0 0 0 1
             0 1 0 0 0 0 0 1 0 0 1 1 1 0 0 1 0 0 0 0 0 0 0 1 0
             1 0 0 0 0 1 1 1 1 0 0 0 0 0 1 0 0 0 0 0 0 0 1 1 0
             1 0 0 0 0 1 1 1 0 0 0 0 0 1 1 1 0 0 0 0 0 1 1 0 0
             0 1 0 0 1 0 1 0 0 1 0 0 1 0 1 0 0 1 0 0 1 0 1 0 0
             1 0 0)
debug       (failure out-of-data ())
debug       4874
debug       0
debug       (0 0 1 0 1 0 0 0 0 1 1 0 0 1 0 0 0 1 1 0 1 0 0 1 0
             1 1 1 0 0 1 1 0 1 1 1 0 0 0 0 0 1 1 0 1 1 0 0 0 1
             1 0 0 0 0 1 0 1 1 1 1 0 0 1 0 0 1 0 0 0 0 0 0 0 1
             0 1 0 0 0 0 0 1 0 0 1 1 1 0 0 1 0 0 0 0 0 0 0 1 0
             1 0 0 0 0 1 1 1 1 0 0 0 0 0 1 0 0 0 0 0 0 0 1 1 0
             1 0 0 0 0 1 1 1 0 0 0 0 0 1 1 1 0 0 0 0 0 1 1 0 0
             0 1 0 0 1 0 1 0 0 1 0 0 1 0 1 0 0 1 0 0 1 0 1 0 0
             1 0 0 0)
debug       (failure out-of-data ())
debug       4875
debug       0
debug       (0 0 1 0 1 0 0 0 0 1 1 0 0 1 0 0 0 1 1 0 1 0 0 1 0
             1 1 1 0 0 1 1 0 1 1 1 0 0 0 0 0 1 1 0 1 1 0 0 0 1
             1 0 0 0 0 1 0 1 1 1 1 0 0 1 0 0 1 0 0 0 0 0 0 0 1
             0 1 0 0 0 0 0 1 0 0 1 1 1 0 0 1 0 0 0 0 0 0 0 1 0
             1 0 0 0 0 1 1 1 1 0 0 0 0 0 1 0 0 0 0 0 0 0 1 1 0
             1 0 0 0 0 1 1 1 0 0 0 0 0 1 1 1 0 0 0 0 0 1 1 0 0
             0 1 0 0 1 0 1 0 0 1 0 0 1 0 1 0 0 1 0 0 1 0 1 0 0
             1 0 0 0 0)
debug       (failure out-of-data ())
debug       4876
debug       0
debug       (0 0 1 0 1 0 0 0 0 1 1 0 0 1 0 0 0 1 1 0 1 0 0 1 0
             1 1 1 0 0 1 1 0 1 1 1 0 0 0 0 0 1 1 0 1 1 0 0 0 1
             1 0 0 0 0 1 0 1 1 1 1 0 0 1 0 0 1 0 0 0 0 0 0 0 1
             0 1 0 0 0 0 0 1 0 0 1 1 1 0 0 1 0 0 0 0 0 0 0 1 0
             1 0 0 0 0 1 1 1 1 0 0 0 0 0 1 0 0 0 0 0 0 0 1 1 0
             1 0 0 0 0 1 1 1 0 0 0 0 0 1 1 1 0 0 0 0 0 1 1 0 0
             0 1 0 0 1 0 1 0 0 1 0 0 1 0 1 0 0 1 0 0 1 0 1 0 0
             1 0 0 0 0 1)
debug       (failure out-of-data ())
debug       4877
debug       0
debug       (0 0 1 0 1 0 0 0 0 1 1 0 0 1 0 0 0 1 1 0 1 0 0 1 0
             1 1 1 0 0 1 1 0 1 1 1 0 0 0 0 0 1 1 0 1 1 0 0 0 1
             1 0 0 0 0 1 0 1 1 1 1 0 0 1 0 0 1 0 0 0 0 0 0 0 1
             0 1 0 0 0 0 0 1 0 0 1 1 1 0 0 1 0 0 0 0 0 0 0 1 0
             1 0 0 0 0 1 1 1 1 0 0 0 0 0 1 0 0 0 0 0 0 0 1 1 0
             1 0 0 0 0 1 1 1 0 0 0 0 0 1 1 1 0 0 0 0 0 1 1 0 0
             0 1 0 0 1 0 1 0 0 1 0 0 1 0 1 0 0 1 0 0 1 0 1 0 0
             1 0 0 0 0 1 0)
debug       (failure out-of-data ())
debug       4878
debug       0
debug       (0 0 1 0 1 0 0 0 0 1 1 0 0 1 0 0 0 1 1 0 1 0 0 1 0
             1 1 1 0 0 1 1 0 1 1 1 0 0 0 0 0 1 1 0 1 1 0 0 0 1
             1 0 0 0 0 1 0 1 1 1 1 0 0 1 0 0 1 0 0 0 0 0 0 0 1
             0 1 0 0 0 0 0 1 0 0 1 1 1 0 0 1 0 0 0 0 0 0 0 1 0
             1 0 0 0 0 1 1 1 1 0 0 0 0 0 1 0 0 0 0 0 0 0 1 1 0
             1 0 0 0 0 1 1 1 0 0 0 0 0 1 1 1 0 0 0 0 0 1 1 0 0
             0 1 0 0 1 0 1 0 0 1 0 0 1 0 1 0 0 1 0 0 1 0 1 0 0
             1 0 0 0 0 1 0 1)
debug       (failure out-of-data ())
debug       4879
debug       0
debug       (0 0 1 0 1 0 0 0 0 1 1 0 0 1 0 0 0 1 1 0 1 0 0 1 0
             1 1 1 0 0 1 1 0 1 1 1 0 0 0 0 0 1 1 0 1 1 0 0 0 1
             1 0 0 0 0 1 0 1 1 1 1 0 0 1 0 0 1 0 0 0 0 0 0 0 1
             0 1 0 0 0 0 0 1 0 0 1 1 1 0 0 1 0 0 0 0 0 0 0 1 0
             1 0 0 0 0 1 1 1 1 0 0 0 0 0 1 0 0 0 0 0 0 0 1 1 0
             1 0 0 0 0 1 1 1 0 0 0 0 0 1 1 1 0 0 0 0 0 1 1 0 0
             0 1 0 0 1 0 1 0 0 1 0 0 1 0 1 0 0 1 0 0 1 0 1 0 0
             1 0 0 0 0 1 0 1 0)
debug       (failure out-of-time ())
debug       4880
debug       1
debug       (0 0 1 0 1 0 0 0 0 1 1 0 0 1 0 0 0 1 1 0 1 0 0 1 0
             1 1 1 0 0 1 1 0 1 1 1 0 0 0 0 0 1 1 0 1 1 0 0 0 1
             1 0 0 0 0 1 0 1 1 1 1 0 0 1 0 0 1 0 0 0 0 0 0 0 1
             0 1 0 0 0 0 0 1 0 0 1 1 1 0 0 1 0 0 0 0 0 0 0 1 0
             1 0 0 0 0 1 1 1 1 0 0 0 0 0 1 0 0 0 0 0 0 0 1 1 0
             1 0 0 0 0 1 1 1 0 0 0 0 0 1 1 1 0 0 0 0 0 1 1 0 0
             0 1 0 0 1 0 1 0 0 1 0 0 1 0 1 0 0 1 0 0 1 0 1 0 0
             1 0 0 0 0 1 0 1 0)
debug       (success (x 4881) ((x 4881)))
debug       4880
value       x
 
End of LISP Run
 
Elapsed time is 1 seconds.
