;; Author: Seth M. Fuller
;; Date: 10/22/2018
;; File: initMatrix.lisp


;; Load the array-operations package
(ql:quickload :array-operations)

;; Create a matrix with random values
(defun InitializeMatrix () 
    "Creates a matrix of size rows x columns"
   
    (aops:generate (lambda () (random 10)) '(2 2))
)

(defun MultiplyRow (matrix1RowIndex matrix2ColumnIndex) 
    "Multiply the matrix1 row at the specified index by 
     the matrix2 column at the specified index"

    (setq sum 0)

    (loop for i from 0 below (length (aops:sub matrix1 matrix1RowIndex))
        do (setf sum (+ sum (* (aref (aops:sub matrix1 matrix1RowIndex) i) (aref (aops:sub matrix2 matrix2ColumnIndex) i)))))

    (setf (aref newMatrix matrix1RowIndex matrix2ColumnIndex) sum)
)

;; Multiply two matrices together
(defun MultiplyMatrices ()
    "Multiplies two matrices"

    ;; Get the dimensions of matrix 1
    (destructuring-bind (n m) (array-dimensions matrix1)
        (setq matrix1Rows n)
        (setq matrix1Columns m)
    )

    ;; Get the dimensions of matrix 2
    (destructuring-bind (n m) (array-dimensions matrix2)
        (setq matrix2Columns m)
        (setq matrix2Rows n)
    )

    ;; Determine dimensions of new matrix
    (defvar newMatrixRows matrix2Columns)
    (defvar newMatrixColumns matrix1Rows)

    ;; Create an empty new matrix will with nil values
    (defvar newMatrix (aops:generate (lambda () ()) '(2 2)))

    ;; Loop through ever row and multiply
    (loop for i from 0 below matrix1Rows
        do (loop for j from 0 below matrix2Columns
            do (MultiplyRow i j)))
)


;; Create two globally scoped matrices
(defvar matrix1 (InitializeMatrix))
(defvar matrix2 (InitializeMatrix))

(MultiplyMatrices)

(print newMatrix)

(EXIT)