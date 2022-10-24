#Sorting 
##Explaning 

library(dslabs)
data(murders)
sort(murders$total)

x<- c(31, 4, 15, 92, 65)

x

sort(x)

# order(X), Este te muestra el orden por posicion, por ejemplo 
#la segunda posicion es la pequeña, de ahí le sigue la tercera
#luego la primera, etc., etc.
order(x)

index<- order(x)

x[index]

murders$state[1:10]

murders$abb[1:10]

index<- order(murders$total)
murders$abb[index]


#Sacar el mayor de algo y el minimo 

max(murders$total)

i_max <- which.max(murders$total)

i_max

murders$state[i_max]

#Sacar Minimo

min(murders$total)

i_min <- which.min(murders$total)

i_min

murders$state[i_min]

## Usando Rank

x <- c(31,4,15,92,65)

x

rank(x)
#(aqui lo que pasa es que rank te pone que el 31 es
#el tercer valor más pequeño, el 4 es el más pequeño, el 15 el tercero
#etc,etc,)



##Sorting Examples

# Example 1

# Access the `state` variable and store it in an object 
states <- murders$state 

# Sort the object alphabetically and redefine the object 
states <- sort(states) 

# Report the first alphabetical value  
states[1]

# Access population values from the dataset and store it in pop

pop <- murders$population

# Sort the object and save it in the same object 

pop <- sort(pop)

# Report the smallest population size 

min(murders$population)

i_min <- which.min(murders$population)

i_min

murders$population[i_min]


#Example 2

# Access population from the dataset and store it in pop

pop <-(murders$population)

# Use the command order to find the vector of indexes that order pop and store in object ord

ord <- order(pop)

# Find the index number of the entry with the smallest population size

ord[1]


#Example 3

# Find the index of the smallest value for variable total 
which.min(murders$total)

# Find the index of the smallest value for population
which.min(murders$population)


#Example 4

# Define the variable i to be the index of the smallest state
i <- which.min(murders$population)

# Define variable states to hold the states
states <- (murders$state)
states
# Use the index you just defined to find the state with the smallest population

states[i] 


#Example 5

# Store temperatures in an object 
temp <- c(35, 88, 42, 84, 81, 30)

# Store city names in an object 
city <- c("Beijing", "Lagos", "Paris", "Rio de Janeiro", "San Juan", "Toronto")

# Create data frame with city names and temperature 
city_temps <- data.frame(name = city, temperature = temp)

# Define a variable states to be the state names 
states <- (murders$state)

# Define a variable ranks to determine the population size ranks 
ranks <- rank(murders$population)

# Create a data frame my_df with the state name and its rank
my_df <- data.frame(name = states, rank= ranks)

my_df

#Example 6

# Define a variable states to be the state names from the murders data frame
states <- (murders$state)

# Define a variable ranks to determine the population size ranks 
ranks <- rank(murders$population)

# Define a variable ind to store the indexes needed to order the population values

ind <- order(murders$population)

# Create a data frame my_df with the state name and its rank and ordered from least populous to most 

my_df <- data.frame(states=states[ind], ranks=ranks[ind])

my_df

#Example 7

# Using new dataset 
library(dslabs)
data(na_example)

# Checking the structure 
str(na_example)

# Find out the mean of the entire dataset 
mean(na_example)

# Use is.na to create a logical index ind that tells which entries are NA
ind <- is.na(na_example)
# Determine how many NA ind has using the sum function
sum(ind)

#Example 8

# Note what we can do with the ! operator
x <- c(1, 2, 3)
ind <- c(FALSE, TRUE, FALSE)
x[!ind]

# Create the ind vector
library(dslabs)
data(na_example)
ind <- is.na(na_example)

# We saw that this gives an NA
mean(na_example)

# Compute the average, for entries of na_example that are not NA 
mean(na_example[!ind])

