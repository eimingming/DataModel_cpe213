library(tidyverse)
library(dplyr)
library(ggplot2)
library(e1071)


Personal  <- read.csv("insurance.csv",header = TRUE, sep=",")


Personal  %>%
  group_by(sex) %>%
  summarise(n = n())%>%
  ggplot() + geom_col(aes(x=sex, y=n, fill=sex)) 


brk <- c(0,10,20,30,40,50,60)
h <- hist(Personal$age)
data.frame(Break = h$breaks[-1], Freq = h$counts)

ggplot(Personal) + geom_histogram(aes(x=age) ,fill='purple',color='white', bins=47)


summary(Personal$age)
sd(Personal$age)
skewness(Personal$age)
Personal$age



Personal  %>%
  group_by(age) %>%
  ggplot() + geom_area(aes(x=age), bins=47)


Personal  %>%
  ggplot(aes(aes(x=age,y = count)))+ 
  boxplot(dat$hwy,
          ylab = "hwy"
  )
