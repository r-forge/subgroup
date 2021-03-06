###############################################################################
#    rsubgroup package R classes
# 
#    This file is part of the rsubgroup package.
#    Copyright (C) 2011-2019 by Martin Atzmueller
#    
#    This program is free software: you can redistribute it and/or modify
#    it under the terms of the GNU General Public License as published by
#    the Free Software Foundation, either version 3 of the License, or
#    (at your option) any later version.

#    This program is distributed in the hope that it will be useful,
#    but WITHOUT ANY WARRANTY; without even the implied warranty of
#    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#    GNU General Public License for more details.
#    
#    You should have received a copy of the GNU General Public License
#    along with this program.  If not, see <http://www.gnu.org/licenses/>.
#
#    Contact: Martin Atzmueller (martin@atzmueller.net)
###############################################################################

require(rJava)

.onLoad <- function(libname, pkgname) {
	# initialize for rJava
	rJava::.jpackage(pkgname, lib.loc=libname)
	#.jengine(TRUE)
	
		
	# test Java version
	.jinit()
	jv <- .jcall("java/lang/System", "S", "getProperty", "java.runtime.version")
	if(substr(jv, 1L, 2L) == "1.") {
		jvn <- as.numeric(paste0(strsplit(jv, "[.]")[[1L]][1:2], collapse = "."))
		if(jvn < 1.8) stop("Java >= 8 is needed for this package but not available")
	} 

}
