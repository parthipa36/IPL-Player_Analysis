library(ggplot2)
library(shinydashboard)

server <- function(input, output, session) {
  output$pname <- renderText(input$Name)
  
# +++++++++++++++++++++ Player Image++++++++++++++++++++++++++
  output$image_1 <- renderImage( deleteFile = FALSE,
                                 {
                                   input$action
                                   x <- "G:\\SPORTS_ANALYTICS\\FINAL READY\\www\\"
                                   y <- isolate(input$Name)
                                   z <- paste(x,y,sep="")
                                   w <- paste(z,"jpg",sep=".")
                                   
                                   list(src = w )
                                 })
  output$c_name <- renderText(
    {
      input$action
      data <- read.csv("G:\\SPORTS_ANALYTICS\\FINAL READY\\DATA SET\\Player.csv")
      c <- subset(data,Player_Name == isolate(input$Name))
      b <- print(toString(c$Country, max.levels =0))
    })
  
  
  output$Age <- renderText(
    {
      input$action
      data <- read.csv("G:\\SPORTS_ANALYTICS\\FINAL READY\\DATA SET\\Player.csv")
      show <- subset(data,Player_Name == isolate(input$Name))
      a <-print(toString(show$DOB, max.levels =0))
    })
  
  output$B_hand <- renderText(
    {
      input$action
      data <- read.csv("G:\\SPORTS_ANALYTICS\\FINAL READY\\DATA SET\\Player.csv")
      show <- subset(data,Player_Name == isolate(input$Name))
      a <-print(toString(show$Batting_Hand, max.levels =0))
    })
  
  
  output$B_skill <- renderText(
    {
      input$action
      data <- read.csv("G:\\SPORTS_ANALYTICS\\FINAL READY\\DATA SET\\Player.csv")
      show <- subset(data,Player_Name == isolate(input$Name))
      a <-print(toString(show$Bowling_Skill, max.levels =0))
    })
#++++++++++++++++ Player rank+++++++++++
  # 1.
  output$Bat_17 <- renderText(
    {
      input$action
      data <- read.csv("C:\\Users\\PARTHI vs BHARATHI\\Desktop\\trail5\\ranking_table.csv")
      show <- subset(data,Player_Name == isolate(input$Name))
      a <-print(toString(show$Batting_index_17_rank, max.levels =0))
    })
  # 2.
  output$Bol_17 <- renderText(
    {
      input$action
      data <- read.csv("G:\\SPORTS_ANALYTICS\\FINAL READY\\DATA SET\\ranking_table.csv")
      show <- subset(data,Player_Name == isolate(input$Name))
      a <-print(toString(show$Bowling_index_17_rank, max.levels =0))
    })
  # 3.
  output$All_17 <- renderText(
    {
      input$action
      data <- read.csv("G:\\SPORTS_ANALYTICS\\FINAL READY\\DATA SET\\ranking_table.csv")
      show <- subset(data,Player_Name == isolate(input$Name))
      a <-print(toString(show$All_rounder_index_17_rank, max.levels =0))
    })
  # 4.
  output$Bat_17_16 <- renderText(
    {
      input$action
      data <- read.csv("G:\\SPORTS_ANALYTICS\\FINAL READY\\DATA SET\\ranking_table.csv")
      show <- subset(data,Player_Name == isolate(input$Name))
      a <-print(toString(show$Batting_index_17_16_rank, max.levels =0))
    })
  # 5.
  output$Bol_17_16 <- renderText(
    {
      input$action
      data <- read.csv("G:\\SPORTS_ANALYTICS\\FINAL READY\\DATA SET\\ranking_table.csv")
      show <- subset(data,Player_Name == isolate(input$Name))
      a <-print(toString(show$Bowling_index_17_16_rank, max.levels =0))
    })
  # 6.
  output$All_17_16 <- renderText(
    {
      input$action
      data <- read.csv("G:\\SPORTS_ANALYTICS\\FINAL READY\\DATA SET\\ranking_table.csv")
      show <- subset(data,Player_Name == isolate(input$Name))
      a <-print(toString(show$All_rounder_index_17_16_rank, max.levels =0))
    })
  # 7.
  output$Bat_17_16_15 <- renderText(
    {
      input$action
      data <- read.csv("G:\\SPORTS_ANALYTICS\\FINAL READY\\DATA SET\\ranking_table.csv")
      show <- subset(data,Player_Name == isolate(input$Name))
      a <-print(toString(show$Batting_index_17_16_15_rank, max.levels =0))
    })
  # 8.
  output$Bol_17_16_15 <- renderText(
    {
      input$action
      data <- read.csv("G:\\SPORTS_ANALYTICS\\FINAL READY\\DATA SET\\ranking_table.csv")
      show <- subset(data,Player_Name == isolate(input$Name))
      a <-print(toString(show$Bowling_index_17_16_15_rank, max.levels =0))
    })
  # 9.
  output$All_17_16_15 <- renderText(
    {
      input$action
      data <- read.csv("G:\\SPORTS_ANALYTICS\\FINAL READY\\DATA SET\\ranking_table.csv")
      show <- subset(data,Player_Name == isolate(input$Name))
      a <-print(toString(show$All_rounder_index_17_16_15_rank, max.levels =0))
    })
  

#+++++++++++++++++ Player Statistics+++++++++++++++++++
# 1. 
  output$hha <- renderText(
    {
      input$action
      data2 <- read.csv("G:\\SPORTS_ANALYTICS\\FINAL READY\\DATA SET\\finaliplData.csv")
      show2 <- subset(data2,Player_Name == isolate(input$Name))
      a <-print(toString(show2$hard_Hitting_Ability_17*100/2, max.levels =0))
    })
# 2.
  output$fin <- renderText(
    {
      input$action
      data2 <- read.csv("G:\\SPORTS_ANALYTICS\\FINAL READY\\DATA SET\\finaliplData.csv")
      show2 <- subset(data2,Player_Name == isolate(input$Name))
      a <-print(toString(show2$Finisher_17, max.levels =0))
    })
  
  
# 3.
  output$fsa <- renderText(
    {
      input$action
      data2 <- read.csv("G:\\SPORTS_ANALYTICS\\FINAL READY\\DATA SET\\finaliplData.csv")
      show2 <- subset(data2,Player_Name == isolate(input$Name))
      a <-print(toString(show2$Fast_Scoring_ability_17, max.levels =0))
    })
  
# 4.
  output$cb <- renderText(
    {
      input$action
      data2 <- read.csv("G:\\SPORTS_ANALYTICS\\FINAL READY\\DATA SET\\finaliplData.csv")
      show2 <- subset(data2,Player_Name == isolate(input$Name))
      a <-print(toString(show2$Consistency_bat_17, max.levels =0))
    })
  
# 5.
  output$rbw <- renderText(
    {
      input$action
      data2 <- read.csv("G:\\SPORTS_ANALYTICS\\FINAL READY\\DATA SET\\finaliplData.csv")
      show2 <- subset(data2,Player_Name == isolate(input$Name))
      a <-print(toString(show2$RunsBetweenWicket_17, max.levels =0))
    })
# 6.
  output$eco <- renderText(
    {
      input$action
      data2 <- read.csv("G:\\SPORTS_ANALYTICS\\FINAL READY\\DATA SET\\finaliplData.csv")
      show2 <- subset(data2,Player_Name == isolate(input$Name))
      a <-print(toString(show2$Economy_17, max.levels =0))
    })
# 7.
  output$wta <- renderText(
    {
      input$action
      data2 <- read.csv("G:\\SPORTS_ANALYTICS\\FINAL READY\\DATA SET\\finaliplData.csv")
      show2 <- subset(data2,Player_Name == isolate(input$Name))
      a <-print(toString(show2$Wicket_Taking_Ability_17, max.levels =0))
    })
# 8.
  output$cwta <- renderText(
    {
      input$action
      data2 <- read.csv("G:\\SPORTS_ANALYTICS\\FINAL READY\\DATA SET\\finaliplData.csv")
      show2 <- subset(data2,Player_Name == isolate(input$Name))
      a <-print(toString(show2$Ball_Consistency_17, max.levels =0))
    })
# 9.
  output$spi <- renderText(
    {
      input$action
      data2 <- read.csv("G:\\SPORTS_ANALYTICS\\FINAL READY\\DATA SET\\finaliplData.csv")
      show2 <- subset(data2,Player_Name == isolate(input$Name))
      a <-print(toString(show2$Crucial_Wicket_Taking_Ability_17, max.levels =0))
    })
  
# ++++++++++++++++++++++++++ EDA ++++++++++++++++++
  output$image_2 <- renderImage( deleteFile = FALSE,
                                 {
                                   input$action2
                                   x <- "C:\\Users\\PARTHI vs BHARATHI\\Desktop\\trail5\\EDA\\"
                                   y <- isolate(input$Name2)
                                   z <- paste(x,y,sep="")
                                   w <- paste(z,"png",sep=".")
                                                
                                  list(src = w )
                                 })
# ++++++++++++++++++ Player Comparision+++++++++++
  output$image_3 <- renderPlot({
    input$Compare
    df_ipl_mvpi = read.csv("G:\\SPORTS_ANALYTICS\\FINAL READY\\DATA SET\\ranking_table.csv")
    
    df_ipl_mvpi$X<- NULL
    id_1 = df_ipl_mvpi[df_ipl_mvpi$Player_Name == isolate(input$Player1), c(1)]
    id_2 = df_ipl_mvpi[df_ipl_mvpi$Player_Name == isolate(input$Player2), c(1)]
    
    # Graph :-1
    #Batting_index_17_16_15
    ggplot(subset(df_ipl_mvpi, Player_Id == id_1 | Player_Id == id_2), 
           aes(Player_Name, Batting_index_17_16_15)) + geom_bar(stat = "identity")
    
    
    # Graph :-2
    #Bowling_index_17_16_15
    ggplot(subset(df_ipl_mvpi, Player_Id == id_1 | Player_Id == id_2), 
           aes(Player_Name, Bowling_index_17_16_15)) + geom_bar(stat = "identity")
    
    
    # Graph :-3
    #All_rounder_index_17_16_15
    ggplot(subset(df_ipl_mvpi, Player_Id == id_1 | Player_Id == id_2), 
           aes(Player_Name, All_rounder_index_17_16_15)) + geom_bar(stat = "identity")
  }
  )
  
  
  output$image_4 <- renderPlot({
    input$Compare
    df_ipl_mvpi = read.csv("G:\\SPORTS_ANALYTICS\\FINAL READY\\DATA SET\\ranking_table.csv")
    
    df_ipl_mvpi$X<- NULL
    id_1 = df_ipl_mvpi[df_ipl_mvpi$Player_Name == isolate(input$Player1), c(1)]
    id_2 = df_ipl_mvpi[df_ipl_mvpi$Player_Name == isolate(input$Player2), c(1)]
    
    #print("agdfv")
    
    # Graph :-2
    #Bowling_index_17_16_15
    ggplot(subset(df_ipl_mvpi, Player_Id == id_1 | Player_Id == id_2), 
           aes(Player_Name, Bowling_index_17_16_15)) + geom_bar(stat = "identity")
  }
  )
  
  
  output$image_5 <- renderPlot({
    input$Compare
    df_ipl_mvpi = read.csv("G:\\SPORTS_ANALYTICS\\FINAL READY\\DATA SET\\ranking_table.csv")
    
    df_ipl_mvpi$X<- NULL
    id_1 = df_ipl_mvpi[df_ipl_mvpi$Player_Name == isolate(input$Player1), c(1)]
    id_2 = df_ipl_mvpi[df_ipl_mvpi$Player_Name == isolate(input$Player2), c(1)]
    
    
    # Graph :-3
    #All_rounder_index_17_16_15
    ggplot(subset(df_ipl_mvpi, Player_Id == id_1 | Player_Id == id_2), 
           aes(Player_Name, All_rounder_index_17_16_15)) + geom_bar(stat = "identity")
  }
  )
  
  
  
  
  
  
  
  
  observeEvent(input$switchtab, {
    newtab <- switch(input$tabs,
                     "dashboard" = "widgets",
                     "widgets" = "dashboard",
                     "explore" = "widgets"
    )
    updateTabItems(session, "tabs",newtab)
    
    
    
    
  })
}
