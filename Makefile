# Author: Seth M. Fuller
# Date: 10/22/2018
# Filename: Makefile


# Run program sequentially
s:
	sbcl --load sequential.lisp

# Run program in parallel
p:
	sbcl --load parallel.lisp