library(tidyverse)
library(skimr)
library(janitor)
library(here)
?here

netflix<-read.csv("netflix_titles.csv")
glimpse(netflix)
head(netflix)
 

?janitor
colnames(netflix)
clean_names(netflix)
remove_empty(netflix)
drop_na(netflix)

library(ggplot2)


ggplot(data=netflix)+
  geom_bar(mapping = aes(x=type,fill=type))+
  labs(title = "count of type",caption = "taken from kaggle")


view(netflix)
ggplot(data=netflix)+
  geom_bar(mapping = aes(x=type,fill=rating))






ggplot(data=netflix)+
  geom_col(mapping=aes(x="",y=type,fill=type,explod=0.1))+
  coord_polar(theta = "y")+
  labs(title="types in netflix")

           