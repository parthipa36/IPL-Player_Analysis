library(ggplot2) # Data visualization
library(readr) # CSV file I/O, e.g. the read_csv function
#library(plyr)
library(dplyr)
library(gridExtra)
library(treemap)
library(RColorBrewer)
library(tidyr)
library(radarchart)
# Input data files are available in the "../input/" directory.
# For example, running this (by clicking run or pressing Shift+Enter) will list the files in the input directory
setwd("C:\\Users\\shubh\\Desktop\\SPORTS_ANALYTICS\\EDA IPL")
deliveries<-read.csv("deliveries.csv")
matches<-read.csv("matches.csv")
matches<-matches[matches$result=="normal",]

# Number of matches plated in different cities
ggplot(matches[which(!is.na(matches$city)),],aes(city,fill= city,rm.na=T)) +geom_bar() +
  theme(axis.text.x = element_text(angle = 90, hjust = 1))+ 
  ylab("Number of Matches Played") +
  guides(fill=FALSE)

# nUMBER OF MATCHES PLAYED IN DIFFERENT STADIUM
ggplot(matches,aes(venue, rm.na=T)) +geom_bar(fill="#0072B2") +
  theme(axis.text.x = element_text(angle = 90, hjust = 1))+ 
  ylab("Number of Matches Played")

# Is winning the toss really an advantage?
matches$toss_match<-ifelse(as.character(matches$toss_winner)==as.character(matches$winner),"Won","Lost")
ggplot(matches[which(!is.na(matches$toss_match)),],aes(toss_match, fill = toss_match))+ 
  geom_bar()+ xlab("Toss") +ylab("Number of matches won")+ ggtitle("How much of a advantage is winning the toss")

# Number of Matches won by each teams 
ggplot(matches,aes(winner)) +geom_bar(fill="#0072B2") +
  theme(axis.text.x = element_text(angle = 90, hjust = 1))+ xlab("Team")+
  ylab("Matches won")


# Top Batsman
df<- deliveries %>% group_by(batsman)%>% summarise(runs=sum(batsman_runs)) %>% arrange(desc(runs)) %>%
  filter(runs > 3000) 
df %>% ggplot(aes(reorder(batsman,-runs),runs,fill=batsman)) +geom_bar(stat = "identity") +xlab("Batsman")+ ylab("Runs")+
  theme(axis.text.x = element_text(angle = 90, hjust = 1))+ xlab("Player")+ ggtitle("Top Batsmen")+ guides(fill=F)












