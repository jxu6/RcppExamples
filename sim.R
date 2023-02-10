
setwd("C:/Users/psioda/Documents/GitHub/Rcpp-Examples/example4-data-simulation/source");


library(Rcpp);
library(RcppArmadillo);

source("data-simulation.rcpp");



set.seed(1);

####### Testing with normal distribution ####################################
data.type  = "Normal";
data.link  = "Identity";
data.parms = list();	
	data.parms[[1]] <- c(1.0,1.0,2.0, 0.5,0.8,-0.6,1.1);	
	data.parms[[2]] <- c(0.25);

enroll.dist  = "Poisson-Process";
enroll.parms = 2;

ascertainment.dist  = "Normal";
ascertainment.parms = c(4,1);

num.trials   = 5;
num.subjects = 60;
block.size   = 6;
num.groups   = 3;


num.covs   = 4;
cov.dist   = c("Normal","Normal","Normal","Bernoulli");
cov.parms  = list();	
	cov.parms[[1]] <- c(0.0,1.0);	
	cov.parms[[2]] <- c(0.0,1.0);	
	cov.parms[[3]] <- c(0.0,1.0);
	cov.parms[[4]] <- c(0.5);


m1 = simulation(data.type,data.link,data.parms,enroll.dist,enroll.parms,ascertainment.dist,ascertainment.parms,
                num.trials,num.groups,block.size,num.subjects,num.covs,cov.dist,cov.parms);

####### Testing with Binomial distribution ####################################
data.type  = "Binomial";
data.link  = "Logistic";
data.parms = list();	
	data.parms[[1]] <- c(0.0,log(2));	
	data.parms[[2]] <- c(50);

enroll.dist  = "Uniform";
enroll.parms = c(0,12);

ascertainment.dist  = "Uniform";
ascertainment.parms = c(2,5);

num.trials   = 10;
num.subjects = 2;
block.size   = 2;
num.groups   = 2;


num.covs   = 0;
cov.dist   = c("NA");
cov.parms  = list();	



m2 = simulation(data.type,data.link,data.parms,enroll.dist,enroll.parms,ascertainment.dist,ascertainment.parms,
                num.trials,num.groups,block.size,num.subjects,num.covs,cov.dist,cov.parms);


####### Testing with bernoulli distribution ####################################
data.type  = "Bernoulli";
data.link  = "Logistic";
data.parms = list();	
	data.parms[[1]] <- c(-0.5,0.5,0.5);	

enroll.dist  = "Poisson-Process";
enroll.parms = 0.125;

ascertainment.dist  = "Normal";
ascertainment.parms = c(4,1);

num.trials   = 2;
num.subjects = 40;
block.size   = 6;
num.groups   = 2;


num.covs   = 2;
cov.dist   = c("Bernoulli");
cov.parms  = list();	
	cov.parms[[1]] <- c(0.5);


m3 = simulation(data.type,data.link,data.parms,enroll.dist,enroll.parms,ascertainment.dist,ascertainment.parms,
                num.trials,num.groups,block.size,num.subjects,num.covs,cov.dist,cov.parms);

####### Testing with poisson distribution ####################################
data.type  = "Poisson";
data.link  = "Log";
data.parms = list();	
	data.parms[[1]] <- c(log(10),log(2),-log(2),log(3));	

enroll.dist  = "Poisson-Process";
enroll.parms = 0.25;

ascertainment.dist  = "Normal";
ascertainment.parms = c(6,0.5);

num.trials   = 1;
num.subjects = 100;
block.size   = 4;
num.groups   = 2;


num.covs   = 2;
cov.dist   = c("Bernoulli","Bernoulli");
cov.parms  = list();	
	cov.parms[[1]] <- c(0.75);
      cov.parms[[2]] <- c(0.50);


m4 = simulation(data.type,data.link,data.parms,enroll.dist,enroll.parms,ascertainment.dist,ascertainment.parms,
                num.trials,num.groups,block.size,num.subjects,num.covs,cov.dist,cov.parms);



