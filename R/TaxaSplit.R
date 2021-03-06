#' Describes the taxa split at a particular factor summarized by summary.phylofactor
#' @export
#' @param Summary summary.phylofactor object
#' @return list of taxa (with trimmed taxonomy strings) unique to the group & complement for the input summarized factor


TaxaSplit <- function(Summary){

  taxG <- Summary$group1$IDs
  taxC <- Summary$group2$IDs

  #### Grab the first unique taxonomic category for the Group and Complement ###

 taxG[,2] <- uniqueTaxa(taxG[,2],taxC[,2])
 taxC[,2] <- uniqueTaxa(taxC[,2],taxG[,2])

 output <- list(taxG,taxC)
 names(output) <- c('Group 1','Group 2')
 return(output)

}
