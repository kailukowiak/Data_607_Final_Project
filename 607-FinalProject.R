library(lightgbm)
library(dplyr)
library(modelr)
library(ggplot2)


test <- read.csv("test.csv")
ls.str(test)
head(test)

train <- read.csv("train.csv")
ls.str(train)

# city and registered_via need to be converted to categories

members <- read.csv("members.csv")
members$city <- as.factor(members$city)
members$registered_via <- as.factor(members$registered_via)
ls.str(members)
head(members,30)


membership.year <- substring(members$registration_init_time, 1, 4)
barplot(table(membership.year), xlab = 'Year', ylab = 'User Sign-ups')
chisq.test(table(as.numeric(membership.year)))

membership.month <- substring(as.numeric(members$registration_init_time, 5, 6))
barplot(table(membership.month), xlab = 'Month', ylab = 'User Sign-ups')
chisq <- chisq.test(table(membership.month))
chisq$observed
round(chisq$expected)
#get pearson residuals
round(chisq$residuals, 3)



membership.day <- substring(members$registration_init_time, 7, 8)
barplot(table(membership.day), xlab = 'Day', ylab = 'User Sign-ups')
chisq.test(table(as.numeric(membership.day), as.numeric(membership.month)))
(membership.day)
chisq2 <- chisq.test(table(membership.day, membership.month))
chisq2$observed
round(chisq2$expected)
round(chisq2$residuals,3)
corrplot(chisq2$residuals, is.corr = FALSE)
# the values are statistically significantly asssociated (p-value = 0)


members %>% 
  mutate(registration.year = registration_init_time[1:4]) %>% 
  select(registration.year)

# recode the registration_init_time to make new colums for year,month,day (20150612 -> 2015, 06, 12)
members %>% 
  


# convert language to Factor
songs <- read.csv("songs.csv")
songs$language <- as.factor(songs$language)
ls.str(songs)




# library(modelr) example - should be equivalent to sklearn Kfolds
set.seed(1)  # Run to replicate this post
folds <- crossv_kfold(mtcars, k = 5)
folds
