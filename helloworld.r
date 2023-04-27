# write an R script that performs statistical analysis on the iris data set and generates plots 
# write all output to a file in Markdown format

# start of script

# create a Markdown file
file.create("helloworld.md")

# write the results to the Markdown file
write("# Hello R!!", "helloworld.md")

# load the iris data set
data(iris)

# summary statistics
summary(iris)

# boxplot
boxplot(iris$Sepal.Length, iris$Sepal.Width, iris$Petal.Length, iris$Petal.Width, main="Iris Boxplot", names=c("Sepal Length", "Sepal Width", "Petal Length", "Petal Width"))

# histogram
hist(iris$Sepal.Length, main="Sepal Length Histogram", xlab="Sepal Length", ylab="Frequency", col="blue")

# scatterplot
plot(iris$Sepal.Length, iris$Sepal.Width, main="Sepal Length vs. Sepal Width", xlab="Sepal Length", ylab="Sepal Width", col="red")

# save the plots
dev.copy(png, file="boxplot.png") 

dev.copy(png, file="histogram.png")

dev.copy(png, file="scatterplot.png")

dev.off()

# showcase statistical analysis

# t-test
t.test(iris$Sepal.Length, iris$Sepal.Width) 
# correlation
cor(iris$Sepal.Length, iris$Sepal.Width)
# linear regression

# create a linear model
model <- lm(iris$Sepal.Length ~ iris$Sepal.Width)
# print the model
print(model)

# plot the model
plot(model)

# save the model
save(model, file="lmodel.RData")

# load the model
load("model.RData")

# let model make predictions about Sepal Length based on Sepal Width
predict(model)
# logarithmic regression

# create a logarithmic model
model <- lm(log(iris$Sepal.Length) ~ log(iris$Sepal.Width))

# print the model
print(model)

# plot the model
plot(model)

# save the model
save(model, file="logmodel.RData")

# load the model
load("logmodel.RData")

# let model make predictions
predict(model) # predict the Sepal Length based on Sepal Width

# check the accuracy of the model
summary(model)

# end of statistical analysis
# output the results to a file in Markdown format


# end of script

# How to run the script:
# Rscript helloworld.r
