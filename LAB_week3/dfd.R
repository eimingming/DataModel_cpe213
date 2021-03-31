#check my working
getwd()


library(tidyverse)

p1 <- ggplot(data = mpg) + geom_point(mapping = aes(x = cty, y = hwy, color = class))


p2 <- p1 + geom_smooth(mapping = aes(x = cty, y = hwy), method = 'lm') + scale_color_brewer(type = 'qual')
p2 + facet_grid(. ~ cyl)
