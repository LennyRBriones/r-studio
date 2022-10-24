#3.2 Basic Data Wrangling 

#usamos esta libreria para introducir funciones utiles
#en manipulacion de datos

library(dplyr)

#la funcion mutate nos permite alterar una tabla para añadir
#o quitar algo 

murders <- mutate(murders,rate=total/population*100000)
murders
head(murders )

#filter esta funcion nos permite filtrar informacion deseada
#utilizando un condicional 

filter(murders,rate <= 0.71)


#select,nos perite seleccionar ciertas filas solamente

new_table <- select(murders,state,region,rate)
filter(new_table,rate <= 0.71)

#usamos pipe para en un solo codigo poder buscar algo especi
#fico dentro del mismo 

murders %>% select(state,region,rate) %>% filter(rate <= 0.71)




####Creating Data Frames 


grades <- data.frame(names=c("Jhon","Juan","Jean","Yao"),
                     exam_1 = c(95,80,90, 85),
                     exam_2 = c(90,85,85,90))

grades 

class(grades$names)

##En caso de que nos muestre como factor por default a los characters, debemos
#de cumplir una condicion en el codigo 

grades <- data.frame(names=c("Jhon","Juan","Jean","Yao"),
                     exam_1 = c(95,80,90, 85),
                     exam_2 = c(90,85,85,90),
                     
                     stringsAsFactors = FALSE)


####Examples###########

#Example 1

# Loading data
library(dslabs)
data(murders)

# Loading dplyr
library(dplyr)

# Redefine murders so that it includes a column named rate with the per 100,000 murder rates
murders <- mutate(murders,rate = total /population*100000)

head(murders)

#Example 2

# Note that if you want ranks from highest to lowest you can take the negative and then compute the ranks 
x <- c(88, 100, 83, 92, 94)
rank(-x)

# Defining rate
rate <-  murders$total/ murders$population * 100000

# Redefine murders to include a column named rank
# with the ranks of rate from highest to lowest
murders <- mutate(murders,rank = rank(-total/population*100000))


#Example 3

# Load dplyr
library(dplyr)

# Use select to only show state names and abbreviations from murders
select(murders,state,abb)


#Example 4

# Add the necessary columns
murders <- mutate(murders, rate = total/population * 100000, rank = rank(-rate))

# Filter to show the top 5 states with the highest murder rates
filter(murders,rank <= 5)
      

#Example 5

# Use filter to create a new data frame no_south
no_south <- filter(murders, region != "South")

no_south
# Use nrow() to calculate the number of rows

nrow(no_south)


#Example 6 

# Create a new data frame called murders_nw with only the states from the northeast and the west
murders_nw <- filter(murders,region %in% c("Northeast","West") )

# Number of states (rows) in this category 
nrow(murders_nw)


#Example 7

# add the rate column
murders <- mutate(murders, rate =  total / population * 100000, rank = rank(-rate))

# Create a table, call it my_states, that satisfies both the conditions 
my_states <- filter(murders,region %in% c("Northeast","West")) %>% filter (rate <= 1)
# Use select to show only the state name, the murder rate and the rank
select(my_states, state,rate,rank)

#Example 8

# Load library
library(dplyr)

## Define the rate column
murders <- mutate(murders, rate =  total / population * 100000, rank = rank(-rate))

# show the result and only include the state, rate, and rank columns, all in one line, in that order
filter(murders,region %in% c("Northeast","West")& rate <= 1) %>% select(state,rate,rank)

#Example 9

# Loading the libraries
library(dplyr)
data(murders)

# Create new data frame called my_states (with specifications in the instructions)
my_states <- murders %>% mutate(rate= total/population *100000,rank=rank(-rate)) %>%
  filter( region %in% c("Northeast","West")& rate<=1) %>% select(state,rate,rank)

my_states