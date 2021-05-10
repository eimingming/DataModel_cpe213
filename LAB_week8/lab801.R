library(readr)
library(tidyverse)
library(dplyr)
library(ggplot2)


demand <- read.csv("L8-demand.csv", sep=";")
demand

demand2 <- tibble::rowid_to_column(demand, "day")



model <- lm(day~Target..Total.orders., data = demand2)
summary(model)


predict(model,demand2)
demand$predict_order <-predict(model,demand2)

g1 <- ggplot(demand2) + geom_point(aes(x=day , y=Target..Total.orders.))+
  geom_line(aes(x=day , y=predict_order))


g2 <- ggplot(data = demand2, aes(x = day, y = Target..Total.orders.)) +
  geom_point() + 
  geom_abline() + 
  geom_smooth(method = "lm", se = FALSE)

