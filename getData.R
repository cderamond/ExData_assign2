# library load
library(dplyr)
#library(lubridate)
#library(ggplot2)

# data load
pm25 <- readRDS("./data/summarySCC_PM25.rds")
scc <- readRDS("./data/Source_Classification_Code.rds")
# transform
pm25 <- pm25 %>%
        mutate(logEm = log(Emissions)) %>%
        mutate(type = as.factor(type))




