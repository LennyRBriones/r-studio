
### 3.3 Basic Plots #####

##Firts we must declarate murders rate because it wasn´t 
library(dplyr)
murders <- mutate(murders,rate = total /population*100000)

head(murders)

#generating a plot 

population_in_millions <- murders$population/10^6
total_gun_murders <- murders$total
plot(population_in_millions,total_gun_murders)

#generating a histogram
hist(murders$rate)

murders$state[which.max(murders$rate)]

#Boxplots

boxplot(rate~region, data = murders)



####Examples####


#Example 1#

# Load the datasets and define some variables
library(dslabs)
data(murders)

population_in_millions <- murders$population/10^6
total_gun_murders <- murders$total

plot(population_in_millions, total_gun_murders)

# Transform population (not population in millions) using the log10 transformation and save to object log10_population

log10_population <- log10(murders$population)

# Transform total gun murders using log10 transformation and save to object log10_total_gun_murders
log10_total_gun_murders <- log10(total_gun_murders)

# Create a scatterplot with the log scale transformed population and murders 
plot(log10_total_gun_murders, log10_population)



#Example 2#

# Store the population in millions and save to population_in_millions 
population_in_millions <- murders$population/10^6


# Create a histogram of this variable
hist(population_in_millions)

#Example 3#

# Create a boxplot of state populations by region for the murders dataset
boxplot(population~region, data=murders)



