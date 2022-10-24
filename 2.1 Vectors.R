##Vectors Examples

## Example 1
## Here is an example creating a numeric vector named cost
cost <- c(50, 75, 90, 100, 150)

cost

## Create a numeric vector to store the temperatures listed in the instructions
##into a vector named temp
## Make sure to follow the same order in the instructions

temp<- c(35,88,42,84,81,30)

temp

##Example 2
## here is an example of how to create a character vector
food <- c("pizza", "burgers", "salads", "cheese", "pasta")

food
## Create a character vector called city to store the city names
## Make sure to follow the same order as in the instructions

city <- c("Beijing","Lagos", "Paris", "Rio de Janeiro", "San Juan", "Toronto") 

city

## Example 3
# Associate the cost values with its corresponding food item
cost <- c(50, 75, 90, 100, 150)
food <- c("pizza", "burgers", "salads", "cheese", "pasta")
names(cost) <- food

## You already wrote this code
temp <- c(35, 88, 42, 84, 81, 30)
city <- c("Beijing", "Lagos", "Paris", "Rio de Janeiro", "San Juan", "Toronto")

## Associate the temperature values with its corresponding city

names(temp) <- city

temp

## Example 4
## cost of the last 3 items in our food list:
cost[3:5]

## temperatures of the first three cities in the list:

temp[1:3]

temp[c(1,2,3)]

## Example 5
# Access the cost of pizza and pasta from our food list 
cost[c(1,5)]

## Define temp

##temp <- c(35, 88, 42, 84, 81, 30)
##city <- c("Beijing", "Lagos", "Paris", "Rio de Janeiro", "San Juan", "Toronto")
##names(temp) <- city

## Access the temperatures of Paris and San Juan

temp[c("Paris","San Juan")]

##Example 6
## Create a vector m of integers that starts at 32 and ends at 99.
m <- 32:99

## Determine the length of object m.
length(m)

## Create a vector x of integers that starts at 12 and ends at 73.

## Determine the length of object x.
x <- 12:73
x
length(x)

##Example 7
## Create a vector with the multiples of 7, smaller than 50.
seq(7, 49, 7) 

## Create a vector containing all the positive odd numbers smaller than 100.
## The numbers should be in ascending order

seq(1,99,2)

## odd numbers means --> numeros impares

##Example 8
# We can create a vector with the multiples of 7, smaller than 50 like this 
seq(7, 49, 7) 

# But note that the second argument does not need to be the last number
# It simply determines the maximum value permitted
# so the following line of code produces the same vector as seq(7, 49, 7)
seq(7, 50, 7)

# Create a sequence of numbers from 6 to 55, with 4/7 increments and determine its length
x<- seq(6, 55, 4/7) 
length(x)
x

##Example 9 
# Store the sequence in the object a
a<- seq(1,10, length.out =100)

# Determine the class of a
a
class(a)

##Example 10
# Store the sequence in the object a
a <- seq(1,10)

# Determine the class of a
a
class(a)

##Example 11
# Check the class of 1, assigned to the object a
class(1)

# Confirm the class of 1L is integer
class(1L)


#Example 11
# Define the vector x
x <- c(1, 3, 5,"a")

# Note that the x is character vector
x

# Redefine `x` to typecast it to get an integer vector using `as.numeric`.
# You will get a warning but that is okay
class(x)

x<- as.numeric(x)

x
