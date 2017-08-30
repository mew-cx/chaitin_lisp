#! /bin/bash
# 2017-08-29 http://mew.cx/
# Run all the *.l files, writing their output over the *.r files.

set errexit
set nounset
set physical

LISP="..//src/lisp"

if [ ! -x $LISP ] ; then
    (cd ../src; make)
fi

for IN in *.l ; do
    OUT="$(basename $IN l)r"
    echo $IN
    $LISP < $IN > $OUT
done

# Use "git diff ." to compare new results to original files.
# diffs seem due to whitespace or execution time changes.

# Use "git checkout ." to restore the original files.

# vim: set sw=4 ts=8 et ic ai:
