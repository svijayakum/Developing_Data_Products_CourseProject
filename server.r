isLeapYear <- function(year) {
  if (year %% 400 == 0) {
    return (TRUE)
  }
  if (year %% 100 == 0) {
    return (FALSE)
  }
  if (year %% 4 == 0) {
    return (TRUE)
  }
  else{ return (FALSE)}
}

daysInMonth <- function(year,month){
  if (month == 1 | month == 3| month == 5 | month == 7 | month == 8 | month == 10 | month == 12) {
    return (31)
  }
  else if (month == 2){
    if (isLeapYear(year)){
      return (29)
    }
    else {return (28)}
  }
  else {return (30)}
}
nextDay <- function(year, month, day){
  if (day < daysInMonth(year,month)){
    return (list(year, month, day + 1))
  }
  else{
    if (month == 12){
      return (list(year + 1, 1, 1))
    }
    else{return (list(year, month + 1, 1))}
  }
}

dateIsBefore <- function(yearBorn, monthBorn, dayBorn, yearToday, monthToday, dayToday){
  if (yearBorn < yearToday){
    return(TRUE)
  }
  if (yearBorn == yearToday){
    if (monthBorn < monthToday){
      return(TRUE)
    }
    if (monthBorn == monthToday){
      return (dayBorn < dayToday)
    }
  }
  return (FALSE)
}

daysBetweenDates <- function(yearBorn, monthBorn, dayBorn, yearToday, monthToday, dayToday){
  days <- 0
  while (dateIsBefore(yearBorn, monthBorn, dayBorn, yearToday, monthToday, dayToday)){
    result = nextDay(yearBorn,monthBorn,dayBorn)
    yearBorn = result[[1]]
    monthBorn = result[[2]]
    dayBorn = result[[3]]
    days = days+1
  }
  return (days)
}

shinyServer(
  function(input, output) {
    output$yearBorn <- renderPrint({input$yearBorn})
    output$monthBorn <- renderPrint({input$monthBorn})
    output$dayBorn <- renderPrint({input$dayBorn})
    output$daysOld <- renderPrint({daysBetweenDates(input$yearBorn, input$monthBorn, input$dayBorn, input$yearToday, input$monthToday, input$dayToday)})
  }
)