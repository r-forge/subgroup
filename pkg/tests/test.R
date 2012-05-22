library(subgroup)

data(credit.data)

patterns.from.data.table <- DiscoverSubgroups(credit.data, as.target("class", "bad"))
result.data.frame <- ToDataFrame(patterns.from.data.table)