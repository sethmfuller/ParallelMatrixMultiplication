# ParallelMatrixMultiplication
A Parallel Matrix Multiplier In Common Lisp

###Run
I used a Makefile for this project in order to make it simple for others to run my code.
- To run the program sequentially run `make s`.
- To run the program in parallel run `make p`.

###Files
- parallel.lisp does the matrix multiplication in parallel
- sequential.lisp does the matrix multiplication sequentially

###Installed Packages
- array-operations `(ql:quickload :array-operations)`
- lparallel `(ql:quickload :lparallel)`