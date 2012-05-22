\name{DiscoverSubgroupsByTask}
\alias{DiscoverSubgroupsByTask}
\title{Performs Subgroup Discovery for a given Task}
\description{
Performs subgroup discovery according to the given task.
}
\usage{
DiscoverSubgroupsByTask(task)
}
\arguments{
\item{task}{a subgroup discovery task constructed by
 CreateSDTask.}
}
\seealso{
\code{\link{DiscoverSubgroups}}.
\code{\link{CreateSDTask}}
}
\examples{
# creating a task
data(credit.data)
task <- CreateSDTask(credit.data, as.target("class", "bad"))
taskNum <- CreateSDTask(credit.data, as.target("credit_amount"))

# running the tasks
DiscoverSubgroupsByTask(task)
DiscoverSubgroupsByTask(taskNum)
}
\keyword{subgroup task}

