## Set library for R packages ----
rpath <- "/home/username/minmin/R-packages"
.libPaths(c(rpath, .libPaths()))

## Attach packages for parallel computing ----
library(foreach)
library(doFuture)

## Determine number of cores ----
args <- commandArgs(trailingOnly = TRUE)
if (length(args) == 0) {
  nc <- 1
} else {
  eval(parse(text = args[[1]]))
}
cat(nc, "\n")

## Register workers ----
if (nc == 1) {
  registerDoSEQ()
  plan(sequential)
} else {
  registerDoFuture()
  plan(multisession, workers = nc)
  if (getDoParWorkers() == 1) {
    stop("nc > 1, but only one core registered")
  }
}

## Run R script ----
x <- foreach(i = 1:2, .combine = c) %dopar% {
  Sys.sleep(1)
  i
}
x

## Unregister workers ----
if (nc > 1) {
  plan(sequential)
}
