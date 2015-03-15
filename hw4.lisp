{\rtf1\ansi\ansicpg1252\cocoartf1265\cocoasubrtf210
{\fonttbl\f0\fswiss\fcharset0 Helvetica;}
{\colortbl;\red255\green255\blue255;}
\margl1440\margr1440\vieww10800\viewh8400\viewkind0
\deftab720
\pard\pardeftab720

\f0\fs48 \cf0 (defun hello-world ()\
(print "Hello from external file"))\
\
(defun contains(a l)\
())\
\
\
(defun insert_q(o l)\
(cons \'91l \'91o))\
\
(defun sub-pattern(pat str)\
(if(= pat  nil)\
(pat)\
(if (= (car pat) (car str))\
(sub-pattern((cdr pat), (cdr str))\
(sub-pattern((cdr pat), (str)))\
))\
\
(def mapping(l, val)\
(let ((x nil))\
(if (listp car(l))s\
(if (> value car(car(l))))\
(cons (x (cons (x) (car(car(l)))))\
mappling(l, cdr(l))\
(mapping(l, cdr(l)))))\
\
}