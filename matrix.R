setwd("C:/Jiawei/cpp-Training/Rcpp-Examples-Day1/example1-basics/source");

library(Rcpp)
library(RcppArmadillo)

source("make_matrix.rcpp")

  ## Test various versions of functions;
  r_make_matrix(5,5,1.2);     ## A
  rcpp_make_matrix(5,5,1.2);  ## B
  rcpp_make_matrix2(5,5,1.2); ## B2
  arma_make_matrix(5,5,1.2);  ## C
  arma_make_matrix2(5,5,1.2); ## C2


## Illustration using the verbose option;


source("make_matrix_verbose.rcpp");
  
  
