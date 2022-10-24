##Exam 3##

#Question 1##

library(dslabs)
data(heights)
options(digits = 3)


avg <- mean(heights$height)

ind <- heights$height > avg

sum(ind)

##Question 2###

indsex <- heights$height > avg & heights$sex== "Female"

sum(indsex)

##Question 3###

indfemale <- heights$sex == "Female"

sum(indfemale)

mean(indfemale)



##Question 4a###

which.min (heights$height)
heights$height[1032]

##Question 4b##

match(50,heights$height)

##Question 4c###

heights$sex[1032]


##Question 5a###

which.max (heights$height)
heights$height[1017]


#Question 5b##

x <- 50:82


##Question 5c##

sum(!(x %in% heights$height))

##Question 6a##
heights2 <- mutate(heights,ht_cm = height*2.54)
heights2
heights2$ht_cm[18]


##Question 6b##

mean(heights2$ht_cm)


##Question 7a##
avgcm <- heights2$sex == "Female"
sum(avgcm)

##or

females <- filter(heights2, sex == "Female")
nrow(females)

##Question 7b##


mean(females$ht_cm)

##Question 8##

library(dslabs)
data(olive)
head(olive)

palmitic <- olive$palmitic
palmitoleic <- olive$palmitoleic
plot(palmitic,palmitoleic)

##Question 9##

hist(olive$eicosenoic)


##Question 10##

boxplot(palmitic~region, data=olive)
