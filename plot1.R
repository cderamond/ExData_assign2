source("getData.R")

# we create a line with year and the median for every year
med <- as.tbl(pm25) %>%
        select(year = yearf, Emissions, logEm) %>%
        group_by(year) %>%
        summarise(medEm = median(Emissions), medLogEm = median(logEm))

with(subset(pm25), {
        boxplot(logEm ~ year, pch = 19, outline = T) #we put box using Log, the lower the better
})
lines(med$year, y = med$medLogEm, col = "blue" , lwd = 1)
title(main = expression('PM'[25]*' emissions by year'),
        ylab = "Log(Emissions)", 
        xlab= "Year")