# Author: Seth M. Fuller
# Date: 10/22/2018
# Filename: Makefile


seq:
	sbcl --load multiplyMatricesSequential.lisp

par:
	sbcl --load multiplyMatricesParallel.lisp