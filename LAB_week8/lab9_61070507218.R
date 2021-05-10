library(tidyverse)
library(dplyr)

demand <- read.csv("L8-demand.csv", sep=";")

model_1 <- lm(Target..Total.orders.~ Urgent.order, data = demand)
summary(model_1)
predict(model_1,demand)

model_2 <- lm(Target..Total.orders. ~ Urgent.order + Non.urgent.order , data = demand)
summary(model_2)
predict(model_2,demand)

model_3 = lm(Target..Total.orders.~Urgent.order*Non.urgent.order,data=demand)
summary(model_3)
predict(model_3,demand)