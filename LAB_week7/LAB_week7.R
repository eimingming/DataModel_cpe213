library(tidyverse)
library(dplyr)
library(ggplot2)

Medical  <- read.csv("insurance.csv",header = TRUE, sep=",")

Medical

bmi <- Medical$bmi 
hist(bmi , freq=F , breaks = seq(from=14,to=54,by=2))
lines(density(bmi))




summary(Medical$bmi)
