library(tidyverse)
library(dplyr)
df <- read.csv("Food_Supply_kcal_Data.csv")
x  <- df$Confirmed
y <- df$Deaths
cor.test(x,y)