Developing Data Products Course Presentation
========================================================
author: Swathi Vijayakuar
date: Thu Jun 09 18:07:45 2016
transition: fade



Introduction
========================================================

The final project for the Data Products Course has two parts:
- Develop and deploy a shiny app
  - App is available at the following website:       
           https://svijayakum.shinyapps.io/CourseProject/
- Create and publish a presentation that explains the app
  - Source code for ui.R and server.R files are available on the GitHub:

Your Age in Days!
========================================================
This is a simple app that allows you determine your age in Days. 
- Two sets of inputs are needed
  - Your birth date and today's date
    - Year month and day should be entered in seperately for each set of input

The Code
========================================================
The code required to determine your age in days is 5 part
- isLeapYear
 <small> - Determines if either of the years you entered are leap year.</small>
- daysInMonth
  <small>- Outputs the number of days in Month using "isLeapYear" to determine number of days in Febuary.</small>
- nextDay
  <small>- Uses both the "isLeapYear" & "daysInMonth" function to output the correct next day.</small>
- dateIsBefore
  <small>- Makes sure that your birthday is before current day to avoid a negative birthday.</small>
- daysBetweenDates
  <small>- Main function called to determin your birthday in the number of days.</small> 

Example
========================================================
![alt text](C:/Users/S.Vijayakumar/datasciencecoursera/Developing_Data_Products_CourseProject/DaysOld.PNG)






