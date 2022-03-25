#data is a dataframe with LogR values per probe, each row a probe, each column a sample
#columns mean the columns names, if not columns names then use columns numbers
get.MAPD <- function(data, columns){
	  rows <- list(2:nrow(data))
  	  sapply(columns, function (x){
		   PairDifferences <- sapply(rows, function (y){
						   diff <- data[y,x] - data[c(y-1),x]
						    return(diff)
					})
		   PairDifferences <- PairDifferences[!is.na(PairDifferences)] #Remove NAs
		   MAPD <- round(median(abs(PairDifferences)), 3)
		   return(MAPD)
	  })
}
