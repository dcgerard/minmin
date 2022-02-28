rpath <- "/home/username/minmin/R-packages"
.libPaths(c(rpath, .libPaths()))
install.packages("BiocManager",
                 lib = rpath,
                 repos = "http://cran.us.r-project.org")
BiocManager::install(version = "3.12", lib = rpath, ask = FALSE)
BiocManager::install(c("future",
                       "doFuture",
                       "foreach"),
                     lib = rpath,
                     ask = FALSE)
