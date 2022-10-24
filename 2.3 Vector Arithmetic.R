# Vector Arithmetic

murders$state[which.max(murders$population)]

max(murders$population)

#convert to centimeters 

heigths <- c(69,62,66,70,70,73,67,73,67,70)

heigths * 2.54

# para sacar el average de todos en caso del average ser 60
heigths - 69


#to compute te murder rate, murders for every 100,000 people

murder_rate <- murders$total/murders$population*100000

murder_rate

# sacar el rate decreciente 

murders$state[order(murder_rate,decreasing=TRUE)]


#Example 1 
# Assign city names to `city` 
city <- c("Beijing", "Lagos", "Paris", "Rio de Janeiro", "San Juan", "Toronto")

# Store temperature values in `temp`
temp <- c(35, 88, 42, 84, 81, 30)

# Convert temperature into Celsius and overwrite the original values of 'temp' with these Celsius values
temp <- 5/9 * (temp - 32)
# Create a data frame `city_temps` 

city_temps <- data.frame( city =city, temperature=temp)

city_temps

#Example 2 

# Define an object `x` with the numbers 1 through 100
x <- c(1:100)
# Compute the sum of 1 + 1/2^2 + 1/3^2...

t <- sum(1/x^2)
t

#Example 3

# Load the data
library(dslabs)
data(murders)

# Store the per 100,000 murder rate for each state in murder_rate
murder_rate <- murders$total/murders$population*100000

# Calculate the average murder rate in the US
mean(murder_rate)
