library(tidyverse)
library(dplyr)
library(ggplot2)

footballPlayer <- read.csv("CompleteDataset.csv",header = TRUE, sep=",")

brk <- c(0,10,20,30,40,50,60)
h <- hist(footballPlayer$Age)
data.frame(Break = h$breaks[-1], Freq = h$counts)

ggplot(footballPlayer) + geom_histogram(aes(x=Age) ,color='pink', bins=32)

skewness(h)
summary(footballPlayer$Age)
  

