source("getData.R")
library(ggplot2)
#library(stringr)
# loading data

data <- left_join(select(scc[grep("coal", scc$SCC.Level.Three, ignore.case = TRUE),], 1:3), 
                  pm25)
g <- ggplot(data, aes(yearf, logEm))
