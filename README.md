# RcppExamples
Example1: Make a matrix 

-- Description: 

The purpose of this example is to illustrate how to construct a trivial C++ function and then use Rcpp to compile the C++ function, create a wrapper C function, and create a wrapper R function so that the C++ function can be called by the C function which can be called from R. 

Using the Rcpp functions we will discuss several basic properties of C++ and differences with standard R programming. 

The simple functions simply takes several user inputs (number of rows = R, number of columns = C, value to assign elements = V) and creates an R x C matrix where all values are equal to V.

-- Programs: R program matrix.R and Rcpp program make_matrix.rcpp


Example2: Data simulation

-- Description: 

Complex Example: Develop a C++ program that allows users to simulate data for a clinical trial with the following properties:

1. Block randomization

2. Poisson-process or uniform time-to-enrollment distributions

3. Normal or uniform time-to-outcome ascertainment distributions

4. An arbitrary number of independent binary and/or normally distributed covariates

5. Normal, Bernoulli, binomial, or Poisson data models using identity, logistic, probit, or the log link functions for data generation.

-- Programs: R program sim.R and Rcpp program data_sim.rcpp
