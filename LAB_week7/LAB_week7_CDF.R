library(tidyverse)
library(dplyr)
library(ggplot2)

Medical  <- read.csv("insurance.csv",header = TRUE, sep=",")

Medical

bmi <- ecdf(Medical$bmi)
plot(bmi)





summary(Medical$bmi)