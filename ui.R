shinyUI(
  pageWithSidebar(
    # Application title
    headerPanel("How many Days Old are you?"),
    sidebarPanel(
      numericInput('yearBorn', "Please enter the year you were born in:",1984),
      numericInput('monthBorn', "Please enter the month you were born in:",9, min = 1, max = 12),
      numericInput('dayBorn', "Please enter the day you were born:",19, min = 1, max = 31),
      numericInput('yearToday', "Please enter current year:",2016),
      numericInput('monthToday', "Please enter current month:",9, min = 1, max = 12),
      numericInput('dayToday', "Please enter current day:",19, min = 1, max = 31),
      submitButton('Submit')
    ),
    mainPanel(
      h4('You entered'),
      verbatimTextOutput("yearBorn"),
      h4('You entered'),
      verbatimTextOutput("monthBorn"),
      h4('You entered'),
      verbatimTextOutput("dayBorn"),
      h4("Your age in Days is shown below:"),
      verbatimTextOutput("daysOld")
    )
  )
)