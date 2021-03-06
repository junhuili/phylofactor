% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/pf.nullsim.R
\name{pf.nullsim}
\alias{pf.nullsim}
\title{Null Simulation of phylofactor object}
\usage{
pf.nullsim(PF, reps, seed = NULL, method = "Gaussian", output = "ExpVar",
  ...)
}
\arguments{
\item{PF}{class phylofactor object from \code{\link{PhyloFactor}}}

\item{reps}{number of replicate null simulations}

\item{seed}{optional seed for \code{\link{set.seed}}}

\item{method}{string, either "Gaussian" or "Shuffle". If "Gaussian", simulations will be standard log-normal datasets. Otherwise, simulations will be original data with reshuffled rows and columns}

\item{output}{output to return from each simulation. Must be in \code{names(PF)} or \code{c('ExpVar','F','All')}. If 'All', will output phylofactor object from each sim (may be memory intensive)}

\item{...}{optional arguments to \code{\link{PhyloFactor}}}
}
\description{
Null Simulation of phylofactor object
}
\examples{
library(ape)
library(phylofactor)
set.seed(1)
m=7
n=10
tree <- rtree(m)
X <- rnorm(n)
Data <- rlnorm(m*n) \%>\% matrix(.,nrow=m)
rownames(Data) <- tree$tip.label
clade <- c('t1','t3','t6')
for (tip in clade){ Data[tip,] <- Data[tip,]*exp(8*X) }
PF <- PhyloFactor(Data,tree,X,nfactors=4)

nullsim <- pf.nullsim(PF,10,nfactors=4)

plot(PF$ExplainedVar,type='l')
for (nn in 1:10){lines(nullsim[[nn]],col='grey')}
legend('center',c('Original Data','Null Data'),col=c('black','gray'),lty=c(1,1))
}
