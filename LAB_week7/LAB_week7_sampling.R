library(tidyverse)
library(dplyr)
library(ggplot2)

Medical  <- read.csv("insurance.csv",header = TRUE, sep=",")

Medical

quantile(Medical$bmi, runif(10))






summary(Medical$bmi)