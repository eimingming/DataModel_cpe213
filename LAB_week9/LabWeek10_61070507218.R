library(tidyverse)
library(dplyr)
library(ggplot2)

credit <- read.csv("credit-approval.csv", sep=",")

head(credit)
summary(credit)

credit$A16 <- factor(credit$A16)
model_1 <- glm(A16 ~ ., data = credit, family = "binomial")
summary(model_1)


p_1 <- predict(model_1, type = "response")
p_2 <- factor(ifelse(p_1 > 0.2, "+","-"))

p_2

install.packages('caret')
install.packages('e1071')

library(caret)
library(lattice)

confusionMatrix(p_2,credit$A16,positive = '+', mode = 'prec_recall')
