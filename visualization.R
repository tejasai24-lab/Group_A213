library(tidyverse)
library(ggplot2)
pdf("visualization.pdf")
P2 <- read.csv("Food_Supply_kcal_Data.csv")
Confirmed  <- P2$Confirmed
Deaths  <- P2$Deaths
P1_complete <- P1[complete.cases(P1),]
ggplot(P1_complete,aes ( x = Confirmed , y = Deaths ))+geom_point()+geom_smooth( method = "lm", formula = 'y ~ x')+ggtitle("Correlation of Covid-19 Death ratio and Confirmed cases in the world")+theme(plot.title = element_text(hjust = 0.5))+labs(x = "Confirmed Cases" , y = "Death Ratio")
ggplot(data= P1_complete,aes(x = Deaths))+geom_histogram(aes(y = ..density..), bins = 15, fill ="grey",color = "1")+stat_function(fun = dnorm,args = list(mean = mean(P1_complete$Deaths),sd = sd(P1_complete$Deaths)), col = "red")+ggtitle("Histogram of Death Ratio")+theme(plot.title = element_text(hjust = 0.5))+labs( x = "Deaths Ratio")
dev.off()


  