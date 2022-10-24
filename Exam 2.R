#Second Exam 

#Write a line of code to convert time to hours. 
#Remember there are 60 minutes in an hour. 
#Then write a line of code to calculate the speed of each runner in miles per hour. Speed is distance divided by time.

name <- c("Mandi", "Amy", "Nicole", "Olivia")
distance <- c(0.8, 3.1, 2.8, 4.0)
time <- c(10, 30, 40, 50)

hours <- time/60

hours

speed <- distance/hours

speed

data<- data.frame(name = name, tiempo=hours, velocidad=speed)

data