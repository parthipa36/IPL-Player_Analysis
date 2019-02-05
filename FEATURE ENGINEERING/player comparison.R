library(ggplot2)

setwd("C:\\Users\\PARTHI vs BHARATHI\\Desktop\\trail5")
df_ipl_mvpi = read.csv("C:\\Users\\PARTHI vs BHARATHI\\Desktop\\trail5\\ranking_table.csv")
####2015-17 comparison
df_ipl_mvpi$X<- NULL
#df_ipl_mvpi[df_ipl_mvpi$Player_Name == "V Kohli", c(1)]

id_1 = df_ipl_mvpi[df_ipl_mvpi$Player_Name == "V Kohli", c(1)]
id_2 = df_ipl_mvpi[df_ipl_mvpi$Player_Name == "MS Dhoni", c(1)]
View(df_ipl_mvpi)
#Batting_index_17_16_15
ggplot(subset(df_ipl_mvpi, Player_Id == id_1 | Player_Id == id_2), aes(Player_Name, Batting_index_17_16_15)) + geom_bar(stat = "identity")
View(subset(df_ipl_mvpi, Player_Id == id_1 | Player_Id == id_2))
#Bowling_index_17_16_15
ggplot(subset(df_ipl_mvpi, Player_Id == id_1 | Player_Id == id_2), aes(Player_Name, Bowling_index_17_16_15)) + geom_bar(stat = "identity")

#All_rounder_index_17_16_15
ggplot(subset(df_ipl_mvpi, Player_Id == id_1 | Player_Id == id_2), aes(Player_Name, All_rounder_index_17_16_15)) + geom_bar(stat = "identity")

