;; Author: Seth M. Fuller
;; Date: 10/22/2018
;; File: initMatrix.lisp


;; Load the array-operations package
(ql:quickload :array-operations)


(defun InitializeMatrix () 
    "Creates a matrix of size rows x columns"
   
    (aops:generate (lambda () (random 10)) '(10 10))
)

;; Create two matrices
(defvar matrix1 (InitializeMatrix))
(defvar matrix2 (InitializeMatrix))

(print (aref matrix1 0 0))

(exit)