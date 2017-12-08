library(lightgbm)
library(dplyr)
library(modelr)


test <- read.csv("test.csv")
ls.str(test)


train <- read.csv("train.csv")
ls.str(train)

# city and registered_via need to be converted to categories

members <- read.csv("members.csv")
members$city <- as.factor(members$city)
members$registered_via <- as.factor(members$registered_via)
ls.str(members)

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
