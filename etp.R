
library(ggplot2)
library(class)


set.seed(123)

data("diamonds")  
View(diamonds)
str(diamonds)  

diamonds <- diamonds %>%  mutate(cut = as.numeric(factor(cut)),   
         color = as.numeric(factor(color)),   
         clarity = as.numeric(factor(clarity)))  

train_set <- sample(1:nrow(diamonds), size = 0.9 * nrow(diamonds))  
train_data <- diamonds[train_set, ]  
test_data <- diamonds[-train_set, ]
train_set
knn(train_data, test_data, train_set, k = 3, prob=TRUE)
