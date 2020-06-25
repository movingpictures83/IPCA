#dyn.load(paste("RPluMA", .Platform$dynlib.ext, sep=""))
#source("RPluMA.R")
#log <- oldlog

# library required
library(mixOmics)

input <- function(inputfile) {
  parameters <<- read.table(inputfile, as.is=T);
  rownames(parameters) <<- parameters[,1];
  x <<- read.csv(parameters["data",2], header=TRUE)
  rownames(x) <<- x[,1]
  x <<- x[,-1]
  y <<- read.csv(parameters["metadata", 2], header=TRUE)
  rownames(y) <<- y[,1]
  y <<- y[,-1]
  ncomponents <<- parameters["numcomponents", 2]
  mylabels <<- parameters["metadatalabelcolumn", 2]
 }

run <- function() {
    ipca.res <<- ipca(x, ncomp = as.integer(ncomponents), mode="deflation")
}   

output <- function(outputfile) {
    write.csv(ipca.res$x, outputfile)#"output.csv")
    plotIndiv(ipca.res, ind.names = as.character(y[, as.integer(mylabels)]),
group = as.numeric(as.factor(y[, as.integer(mylabels)])))
} 

