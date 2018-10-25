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

(defun MultiplyRow () 
    
)

;; Multiply two matrices together
(defun MultiplyMatrices (matrix1 matrix2)
    "Multiplies two matrices"

    ;; Get the dimensions of matrix 1
    (destructuring-bind (n m) (array-dimensions matrix1)
        (setq matrix1Rows n)
        (setq matrix1Columns m)
    )

    ;; Get the dimensions of matrix 2
    (destructuring-bind (n m) (array-dimensions matrix2)
        (setq matrix2Rows n)
        (setq matrix2Columns m)
    )

    ;; Determine dimensions of new matrix
    (setq newMatrixRows matrix2Columns)
    (setq newMatrixColumns matrix1Rows)

    ;; Create an empty new matrix will with nil values
    (setq newMatrix (aops:generate (lambda () ()) '(2 2)))

    

)


;; Create two matrices
(defvar m1 (InitializeMatrix))
(defvar m2 (InitializeMatrix))

(MultiplyMatrices m1 m2)


;; (loop for i from 0 below matrix1Rows do
;;     (loop for j from 0 below matrix1Columns do
;;         (format t "a[~a ~a] = ~a~%" i j (aref matrix1 i j))))

;; (print matrix1)

(EXIT)