library(shiny)
library(shinydashboard)
shinyUI(
  
  dashboardPage(
    dashboardHeader(title = "Sports Analytics"),
    dashboardSidebar(
      sidebarMenu(
        id = "tabs",
        menuItem("Player Information", tabName = "dashboard", icon = icon("dashboard")),
        menuItem("Player Comparision", tabName = "widgets", icon = icon("th")),
        menuItem("Exploratoy Data Analysis",tabName="explore",icon=icon("bar-chart-o"))
      )
      #actionButton('switchtab', 'Switch tab')
    ),
    dashboardBody(
      
    
      
      
      tabItems(
        
        tabItem(tabName = "dashboard",
                tabsetPanel(
                  
                  tabPanel("general information",
                          box(textInput("Name",span("Enter the Player Name",style= "font-size: 20px"),""),
                                        actionButton("action", "See the player"),height=175,width=7),
                
                
                          box(height =175,width = 5),
                
                          box(imageOutput("image_1",width= 420), height = ,width=7 ),
                          box(
                            box(title ="Player Name :",textOutput("pname"),height =,width=10 ),
                            box(title ="Country Name :",textOutput("c_name"),height =,width = 10 ),
                            box(title ="Date Of Birth :",textOutput("Age"),height = ,width=10),
                            box(title ="Batting Hand :",textOutput("B_hand"),height=,width=10 ),
                            box(title ="BOwling Skill :",textOutput("B_skill"),height=,width=10 ),
                            height=420 ,width=5)
                           ),
                
                tabPanel("Player Statistics",
                         box(title ="Hard Hitting ability :",textOutput("hha"),height = ),
                         box(title ="Finisher :",textOutput("fin"),height = ),
                         box(title ="Fast Scoring Ability :",textOutput("fsa"),height = ),
                         box(title ="Consistency Bat :",textOutput("cb"),height= ),
                         box(title ="Runs Between Wicket :",textOutput("rbw"),height = ),
                         box(title ="Economy :",textOutput("eco"),height =),
                         box(title ="Wicket taking Ability :",textOutput("wta"),height = ),
                         box(title ="Crucial Wicket Taking Ability :",textOutput("cwta"),height=),
                         box(title ="Short Performace Index :",textOutput("spi"),height =)
                         #box(title ="Country Name :",textOutput("c_name"),height =)
                         ),
                
                tabPanel("Playing Prediction",
                         box(title ="Batting Rank 2017 :",textOutput("Bat_17"),height = ),
                         box(title ="Bowling Rank 2017",textOutput("Bol_17"),height = ),
                         box(title ="All Rounder Rank 2017",textOutput("All_17"),height = ),
                         box(title ="Batting Rank 2016-17 :",textOutput("Bat_17_16"),height = ),
                         box(title ="Bowling Rank 2016-17",textOutput("Bol_17_16"),height= ),
                         box(title ="All Rounder Rank 2016-17",textOutput("All_17_16"),height =),
                         box(title ="Batting Rank 2015-17",textOutput("Bat_17_16_15"),height = ),
                         box(title ="Bowling Rank 2015-17",textOutput("Bol_17_16_15"),height =),
                         box(title ="All Rounder 2015-17:",textOutput("All_17_16_15"),height = )
                  
                         )
        )),
        
        
        
        
        tabItem(tabName = "widgets",
                h2("Comparision Between Two Players"),
                box(textInput("Player1","Enter player 1"),height=130),
                box(textInput("Player2","Enter player 2",width=300),
                    actionButton("Compare","Compare the Player")),
                box(plotOutput("image_3")),
                box(plotOutput("image_4")),
                box(plotOutput("image_5"))
                
            
                ),
        
        
        
        tabItem(tabName = "explore",
                box(textInput("Name2",span("Type the question : ",style= "font-size: 20px"),""),
                    actionButton("action2", "See the player"),height=175,width=5),
                box("Questions For EDA \n",
                    "1. Number of Matches Played ",
                    "2. Number of Matches won by each teams",
                    "3. Is winning the toss really an advantage",
                    "4. Batting Hand",
                    "5. Bowling Skills",
                    height = 175, width=5),
                box(imageOutput("image_2",width= 200), height = 175 ,width=10 )
        
               )
      )
    )
  )
)