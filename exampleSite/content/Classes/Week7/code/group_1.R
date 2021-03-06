######################
## Group 1 ###########
######################

# You receive the sales data for the sales example we saw a couple of weeks ago

sales <- read.csv("https://raw.githubusercontent.com/maibennett/sta235/main/exampleSite/content/Classes/Week7/data/sales.csv")

# Check out the data
head(sales)

# id: identification for each person
# time: time of arrival, since the store opened
# age: age of the person
# female: whether the customer is female or not
# income: average income for the customer
# sales: amount of the purchase
# treat: whether the person received a discount or not (e.g. was within the first 1,000 customers)

# Task 1) Create a plot with the running variable in the x-axis and the treatment variable in the y-axis.
# Questions to answer: 
# i) What is the running variable? Can you obtain the cutoff for treatment assignment?
# ii) What does this plot tells you?

library(ggplot2)

# Task 2) Identify your cutoff score and assign it to c <-
# Add to your previous plot a fitted smooth line for each side of the cutoff adding to your previous code the following:
# geom_smooth(data = filter(sales, time>c), method = "loess", se=TRUE, color = "red", fill = "red")
# and geom_smooth(data = filter(sales, time<=c), method = "loess", se=TRUE, color = "blue", fill = "blue")