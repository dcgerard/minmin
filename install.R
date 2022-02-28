rpath <- "/home/username/minmin/R-packages"
.libPaths(c(rpath, .libPaths()))
install.packages(c("future",
                   "doFuture",
                   "foreach"),
                 lib = rpath,
                 repos = "http://cran.us.r-project.org")
