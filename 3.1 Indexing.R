#3.1 Indexing

index <- murder_rate < 0.71
index <- murder_rate <= 0.71
index

murders$state[index]

sum(index)

west <- murders$region == "West"

safe <- murder_rate <= 1

index <- safe & west
murders$state[index]


#Indexing Functions 

#Which, nos dice cual entrada es verdadera para lo que pedimos
x <- c(FALSE,TRUE,FALSE,TRUE,TRUE,FALSE)
which(x)

index <- which(murders$state =="Massachusetts")
index

murder_rate[index]

#Match 

#Nos dice cual es el match, osea ver a que lugar pertenece
#cada una de las entradas

index <- match(c("New York","Florida","Texas"),murders$state)


index

murders$state[index]

murder_rate[index]


#  %in%
# %in% chechs if something is in te vector

x <- c("a","b","c","d","e")
y <- c("a","d","f")

y %in% x

# which is an state? 

c("Boston","Dakota", "Washington") %in% murders$state 


#####Examples#####

#Example 1

# Store the murder rate per 100,000 for each state, in `murder_rate`
murder_rate <- murders$total / murders$population * 100000

# Store the `murder_rate < 1` in `low` 
low <- murder_rate <1 

low

#Example 2 

# Store the murder rate per 100,000 for each state, in murder_rate
murder_rate <- murders$total/murders$population*100000

# Store the murder_rate < 1 in low 
low <- murder_rate < 1

# Get the indices of entries that are below 1
index <- which(murder_rate <1 )
index
murder_rate[index]


#Example 3

# Store the murder rate per 100,000 for each state, in murder_rate
murder_rate <- murders$total/murders$population*100000

# Store the murder_rate < 1 in low 
low <- murder_rate < 1

# Names of states with murder rates lower than 1
murders$state[low]



#Example 4 

# Store the murder rate per 100,000 for each state, in `murder_rate`
murder_rate <- murders$total/murders$population*100000

# Store the `murder_rate < 1` in `low` 
low <- murder_rate < 1

# Create a vector ind for states in the Northeast and with murder rates lower than 1. 
ind <- low & murders$region == "Northeast"
# Names of states in `ind` 
murders$state[ind]


#Example 5 #

##Mean nos saca el average, y usamos sum para sacar cuales 
#cumplen ser menores que average usando "<"

# Store the murder rate per 100,000 for each state, in murder_rate
murder_rate <- murders$total/murders$population*100000

# Compute the average murder rate using `mean` and store it in object named `avg`
avg <-mean(murder_rate)

# How many states are < avg ? Check using sum 
sum(murder_rate < avg)


#Example 6

# Store the 3 abbreviations in a vector called `abbs` (remember that they are character vectors and need quotes)
abbs <- c("AK","MI","IA")
# Match the abbs to the murders$abb and store in ind
ind <- match(abbs,murders$abb)
# Print state names from ind

murders$state[ind]



#Example 7

# Store the 5 abbreviations in `abbs`. (remember that they are character vectors)
abbs <- c("MA","ME","MI","MO","MU")

# Use the %in% command to check if the entries of abbs are abbreviations in the the murders data frame
abbs %in% murders$abb


#Example 8

# Store the 5 abbreviations in abbs. (remember that they are character vectors)
abbs <- c("MA", "ME", "MI", "MO", "MU") 

# Use the `which` command and `!` operator to find out which index abbreviations are not actually part of the dataset and store in `ind`
ind <- which(!abbs %in% murders$abb)
# Names of abbreviations in `ind`
abbs[ind]
