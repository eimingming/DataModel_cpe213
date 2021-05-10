library(tidyverse)
library(dplyr)

library(ggplot2)
library(caret)
library(lattice)

credit <- read.csv("credit-approval.csv", sep=",")

summary(credit)

model <- glm(A16 ~ ., data = credit, family = "binomial")

pred <- predict(model, type = "response")
pred2 <- factor(ifelse(pred > 0.2, "+","-"))

confusionMatrix(pred2,credit$A16,positive = '+', mode = 'prec_recall')
confusionMatrix(pred2,credit$A16,positive = '-', mode = 'prec_recall')
