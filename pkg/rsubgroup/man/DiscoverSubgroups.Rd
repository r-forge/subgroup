\name{DiscoverSubgroups}
\alias{DiscoverSubgroups}
\title{Performs Subgroup Discovery}
\description{
Performs subgroup discovery according to the given target and
the configuration on the data.
}
\usage{
DiscoverSubgroups(source, target, config=new("SDTaskConfig"), as.df=FALSE)
}
\arguments{
\item{source}{a data.frame or the a character string giving
the filename of an ARFF file to use.}
\item{target}{the target variable (constructed by as.target)
to consider for subgroup discovery.}
\item{config}{an instance of SDTaskConfig providing various
parameters for subgroup discovery.}
\item{as.df}{TRUE, if the result patterns should be returned as
a data.frame using \code{\link{ToDataFrame}}}
}
\seealso{
\code{\link{DiscoverSubgroupsByTask}}.
\code{\link{as.target}}
\code{\link{CreateSDTask}}
\code{\link{SDTaskConfig}}
}
\examples{
# subgroup discovery on a data.frame, for binary target
data(credit.data)
result1 <- DiscoverSubgroups(credit.data, as.target("class", "good"))
result2 <- DiscoverSubgroups(
    credit.data, as.target("class", "good"), new("SDTaskConfig",
    attributes=c("checking_status", "employment")))

ToDataFrame(result1)
ToDataFrame(result2)

# subgroup discovery for numeric target variable
result3 <- DiscoverSubgroups(credit.data, as.target("credit_amount"))

ToDataFrame(result3)
}
\keyword{subgroup discovery}
