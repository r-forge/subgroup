require(rJava, verbose=TRUE)

.First.lib <- function(libname, pkgname) {
	   .jpackage(pkgname)
	   .jengine(TRUE)
}
