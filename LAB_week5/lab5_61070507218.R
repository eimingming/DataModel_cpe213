library(tidyverse)
library(dplyr)
library(ggplot2)



carSales <- read.csv("Car_sales.csv",header = TRUE, sep=",")


carSales %>%
  group_by(Manufacturer) %>%
  summarise(n = n()) %>%
  ggplot() + geom_col(aes(x=Manufacturer , y=n, fill=Manufacturer))
 
carSales %>%
  