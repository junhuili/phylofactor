% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/updateTreeList.R
\name{updateTreeList}
\alias{updateTreeList}
\title{internal Phylofactor function - splits the tree corresponding to the split bin}
\usage{
updateTreeList(treeList, binList, grp, tree, skip.check = F)
}
\arguments{
\item{treeList}{list of trees}

\item{binList}{list of bins corresponding to treeList}

\item{grp}{two-element list corresponding to the splitting of an bin}

\item{tree}{phylo class object}

\item{skip.check}{Logical whether to skip checking if we grabbed the correct tree.}
}
\description{
internal Phylofactor function - splits the tree corresponding to the split bin
}
\examples{
library(ape)
set.seed(6)
tree <- rtree(10)
Groups <- getGroups(tree)
treeList <- list(tree)
binList <- list(1:10)
factor <- 2
grp <- getLabelledGrp(factor,tree,Groups)
grp
lapply(grp,FUN=function(g,tree){tree$tip.label[g]},tree=tree)

node=17

treeList <- updateTreeList(treeList,binList,grp,tree)
par(mfrow=c(1,3))
plot.phylo(tree,main='Original Tree',cex=2)
edgelabels('SPLIT',factor,bg='red',cex=2)

plot.phylo(treeList[[1]],main='First Bin Tree',cex=2)
plot.phylo(treeList[[2]],main='Second Bin Tree',cex=2)
}
