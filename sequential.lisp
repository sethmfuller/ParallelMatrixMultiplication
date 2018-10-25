;; Author: Seth M. Fuller
;; Date: 10/22/2018
;; File: multiplyMatricesSequential.lisp


;; Load the array-operations package
(ql:quickload :array-operations)

;; Create two globally scoped matrices
(defvar matrix1)
(defvar matrix2)
(defvar newMatrix)

;; Create a matrix with random values
(defun InitializeMatrix () 
    "Creates a matrix of size rows x columns"
   
    (aops:generate (lambda () (random 10)) '(100 100))
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

    ;; (setq matrix1Rows (car (array-dimensions matrix1)))
    ;; (setq matrix2Columns (car (cdr (array-dimensions matrix2))))

    (print (typep 5))
    (print (typep (car (array-dimensions matrix1))))

    ;; Create an empty new matrix will with nil values
    ;; (setf newMatrix (aops:generate 
    ;;     (lambda () ()) '(
    ;;         (parse-integer (car (array-dimensions matrix1))) 
    ;;         (car (cdr (array-dimensions matrix2))))))

    (setf newMatrix (aops:generate 
        (lambda () ()) '(1 1)))

    ;; Loop through ever row and multiply
    (time (loop for i from 0 below matrix1Rows
        do (loop for j from 0 below matrix2Columns
            do (MultiplyRow i j))))
)

;; Set the global variables to two new initialize matrices
(setf matrix1 (InitializeMatrix))
(setf matrix2 (InitializeMatrix))


;; Multiply two matricies sequentially
(MultiplyMatrices)

(EXIT)