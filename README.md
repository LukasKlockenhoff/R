# R
R Welcome Script. Shows basic Statistical Analysis, Plotting and Basic Functions.

## Mit R arbeiten
### R installieren
https://cran.r-project.org/bin/windows/base/
### R IDE (Integrated Development Environment)
#### RStudio
https://posit.co/download/rstudio-desktop/
#### VSCode
https://code.visualstudio.com/download
#### Jupyter Lab
1. Python installieren
https://www.python.org/downloads/
2. cmd öffnen
3. "pip install jupyterlab" eingeben
https://jupyterlab.readthedocs.io/en/stable/getting_started/installation.html
#### Was dir der Prof empfield ...
...
## Hello R!

```R
# start of script
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

# How to run the script:

# Rscript helloworld.r
```
## Dieses Programm gibt die Datei Rplots.pdf aus, die alle Diagramme enthält und liefert den folgenden Output in der Konsole:

```output
[1] TRUE
  Sepal.Length    Sepal.Width     Petal.Length    Petal.Width   
 Min.   :4.300   Min.   :2.000   Min.   :1.000   Min.   :0.100  
 1st Qu.:5.100   1st Qu.:2.800   1st Qu.:1.600   1st Qu.:0.300  
 Median :5.800   Median :3.000   Median :4.350   Median :1.300  
 Mean   :5.843   Mean   :3.057   Mean   :3.758   Mean   :1.199  
 3rd Qu.:6.400   3rd Qu.:3.300   3rd Qu.:5.100   3rd Qu.:1.800  
 Max.   :7.900   Max.   :4.400   Max.   :6.900   Max.   :2.500  
       Species  
 setosa    :50  
 versicolor:50  
 virginica :50  
                
                
                
quartz_off_screen 
                3 
quartz_off_screen 
                4 
quartz_off_screen 
                5 
pdf 
  2 

        Welch Two Sample t-test

data:  iris$Sepal.Length and iris$Sepal.Width
t = 36.463, df = 225.68, p-value < 2.2e-16
alternative hypothesis: true difference in means is not equal to 0
95 percent confidence interval:
 2.63544 2.93656
sample estimates:
mean of x mean of y 
 5.843333  3.057333 

[1] -0.1175698

Call:
lm(formula = iris$Sepal.Length ~ iris$Sepal.Width)

Coefficients:
     (Intercept)  iris$Sepal.Width  
          6.5262           -0.2234  

       1        2        3        4        5        6        7        8 
5.744459 5.856139 5.811467 5.833803 5.722123 5.655114 5.766795 5.766795 
       9       10       11       12       13       14       15       16 
5.878475 5.833803 5.699787 5.766795 5.856139 5.856139 5.632778 5.543434 
      17       18       19       20       21       22       23       24 
5.655114 5.744459 5.677451 5.677451 5.766795 5.699787 5.722123 5.789131 
      25       26       27       28       29       30       31       32 
5.766795 5.856139 5.766795 5.744459 5.766795 5.811467 5.833803 5.766795 
      33       34       35       36       37       38       39       40 
5.610442 5.588106 5.833803 5.811467 5.744459 5.722123 5.856139 5.766795 
      41       42       43       44       45       46       47       48 
5.744459 6.012492 5.811467 5.744459 5.677451 5.856139 5.677451 5.811467 
      49       50       51       52       53       54       55       56 
5.699787 5.789131 5.811467 5.811467 5.833803 6.012492 5.900812 5.900812 
      57       58       59       60       61       62       63       64 
5.789131 5.990156 5.878475 5.923148 6.079500 5.856139 6.034828 5.878475 
      65       66       67       68       69       70       71       72 
5.878475 5.833803 5.856139 5.923148 6.034828 5.967820 5.811467 5.900812 
      73       74       75       76       77       78       79       80 
5.967820 5.900812 5.878475 5.856139 5.900812 5.856139 5.878475 5.945484 
      81       82       83       84       85       86       87       88 
5.990156 5.990156 5.923148 5.923148 5.856139 5.766795 5.833803 6.012492 
      89       90       91       92       93       94       95       96 
5.856139 5.967820 5.945484 5.856139 5.945484 6.012492 5.923148 5.856139 
      97       98       99      100      101      102      103      104 
5.878475 5.878475 5.967820 5.900812 5.789131 5.923148 5.856139 5.878475 
     105      106      107      108      109      110      111      112 
5.856139 5.856139 5.967820 5.878475 5.967820 5.722123 5.811467 5.923148 
     113      114      115      116      117      118      119      120 
5.856139 5.967820 5.900812 5.811467 5.856139 5.677451 5.945484 6.034828 
     121      122      123      124      125      126      127      128 
5.811467 5.900812 5.900812 5.923148 5.789131 5.811467 5.900812 5.856139 
     129      130      131      132      133      134      135      136 
5.900812 5.856139 5.900812 5.677451 5.900812 5.900812 5.945484 5.856139 
     137      138      139      140      141      142      143      144 
5.766795 5.833803 5.856139 5.833803 5.833803 5.833803 5.923148 5.811467 
     145      146      147      148      149      150 
5.789131 5.856139 5.967820 5.856139 5.766795 5.856139 

Call:
lm(formula = log(iris$Sepal.Length) ~ log(iris$Sepal.Width))

Coefficients:
          (Intercept)  log(iris$Sepal.Width)  
               1.8773                -0.1101  

       1        2        3        4        5        6        7        8 
1.739399 1.756364 1.749262 1.752756 1.736299 1.727490 1.742590 1.742590 
       9       10       11       12       13       14       15       16 
1.760095 1.752756 1.733284 1.742590 1.756364 1.756364 1.724704 1.714214 
      17       18       19       20       21       22       23       24 
1.727490 1.739399 1.730349 1.730349 1.742590 1.733284 1.736299 1.745875 
      25       26       27       28       29       30       31       32 
1.742590 1.756364 1.742590 1.739399 1.742590 1.749262 1.752756 1.742590 
      33       34       35       36       37       38       39       40 
1.721986 1.719334 1.752756 1.749262 1.739399 1.736299 1.756364 1.742590 
      41       42       43       44       45       46       47       48 
1.739399 1.785606 1.749262 1.739399 1.730349 1.756364 1.730349 1.749262 
      49       50       51       52       53       54       55       56 
1.733284 1.745875 1.749262 1.749262 1.752756 1.785606 1.763957 1.763957 
      57       58       59       60       61       62       63       64 
1.745875 1.780922 1.760095 1.767960 1.800987 1.756364 1.790498 1.760095 
      65       66       67       68       69       70       71       72 
1.760095 1.752756 1.756364 1.767960 1.790498 1.776430 1.749262 1.763957 
      73       74       75       76       77       78       79       80 
1.776430 1.763957 1.760095 1.756364 1.763957 1.756364 1.760095 1.772113 
      81       82       83       84       85       86       87       88 
1.780922 1.780922 1.767960 1.767960 1.756364 1.742590 1.752756 1.785606 
      89       90       91       92       93       94       95       96 
1.756364 1.776430 1.772113 1.756364 1.772113 1.785606 1.767960 1.756364 
      97       98       99      100      101      102      103      104 
1.760095 1.760095 1.776430 1.763957 1.745875 1.767960 1.756364 1.760095 
     105      106      107      108      109      110      111      112 
1.756364 1.756364 1.776430 1.760095 1.776430 1.736299 1.749262 1.767960 
     113      114      115      116      117      118      119      120 
1.756364 1.776430 1.763957 1.749262 1.756364 1.730349 1.772113 1.790498 
     121      122      123      124      125      126      127      128 
1.749262 1.763957 1.763957 1.767960 1.745875 1.749262 1.763957 1.756364 
     129      130      131      132      133      134      135      136 
1.763957 1.756364 1.763957 1.730349 1.763957 1.763957 1.772113 1.756364 
     137      138      139      140      141      142      143      144 
1.742590 1.752756 1.756364 1.752756 1.752756 1.752756 1.767960 1.749262 
     145      146      147      148      149      150 
1.745875 1.756364 1.776430 1.756364 1.742590 1.756364 

Call:
lm(formula = log(iris$Sepal.Length) ~ log(iris$Sepal.Width))

Residuals:
    Min      1Q  Median      3Q     Max 
-0.2978 -0.1086 -0.0101  0.1022  0.3365 

Coefficients:
                      Estimate Std. Error t value Pr(>|t|)    
(Intercept)            1.87727    0.09003  20.852   <2e-16 ***
log(iris$Sepal.Width) -0.11005    0.08063  -1.365    0.174    
---
Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1

Residual standard error: 0.1408 on 148 degrees of freedom
Multiple R-squared:  0.01243,   Adjusted R-squared:  0.005759 
F-statistic: 1.863 on 1 and 148 DF,  p-value: 0.1743
```

