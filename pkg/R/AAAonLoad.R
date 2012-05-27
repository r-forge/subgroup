require(rJava)

.First.lib <- function(libname, pkgname) {
	   .jpackage(pkgname)
	   .jengine(TRUE)
}
