;; Author: Seth M. Fuller
;; Date: 10/22/2018
;; File: initMatrix.lisp

(defun InitializeMatrix (rows columns) 
    "Creates a matrix of size rows x columns"

    (setf matrix (make-array '(rows columns)))
    (write matrix)
)

(InitializeMatrix 4 4)

(exit)