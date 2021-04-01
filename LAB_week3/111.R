#import 1 file .csv
superstore <- read.csv("superstore.csv" ,header = TRUE, sep="|")

#plot graph
superstore %>%
  filter(Sales>2500) %>%
  ggplot() + geom_dotplot(aes(x=Category,fill = Category),dotsize=0.5)




