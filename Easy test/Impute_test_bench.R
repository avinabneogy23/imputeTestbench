library(imputeTestbench)
data()
#impute_errors() usage
#default
aa <- impute_errors(dataIn = nhtemp)
aa
plot_errors(aa)
# change the simulation for missing at random observations
aa <- impute_errors(dataIn = nhtemp, smps = 'mar')
aa
plot_errors(aa)
# change the simulation for missing completely at random observations
aa <- impute_errors(dataIn = nhtemp, smps = 'mcar')
aa
plot_errors(aa,plotType = 'line')
# use one interpolation method(interp), increase number of repetitions
aa <- impute_errors(dataIn = nhtemp, methods = 'na.interp', repetition = 100)
aa
plot_errors(aa)
# use one interpolation method(mean), increase number of repetitions
aa <- impute_errors(dataIn = nhtemp, methods = 'na_mean', repetition = 100)
aa
plot_errors(aa,plotType = 'line')
# change the error metric
aa <- impute_errors(dataIn = nhtemp, errorParameter = 'mape')
aa
plot_errors(aa)
#mae() usage
## Generate 100 random numbers within some limits and calculate mean absolute error between original and predicted data
a <- sample(1:15, 10, replace = TRUE)
b <- sample(1:19, 10, replace = TRUE)
c <- mae(a, b)
c
#mape() usage
## Generate 100 random numbers within some limits and calculate mean percent absolute error between original and predicted data
a <- sample(1:15, 10, replace = TRUE)
b <- sample(1:19, 10, replace = TRUE)
c <- mape(a, b)
c
#plot_errors() usage
# bar plot of averages at each repetition
plot_errors(aa, plotType = 'bar')

#plot_impute() usage
# default
plot_impute(dataIn = nhtemp)

# change missing percent total
plot_impute(dataIn = nhtemp, missPercent = 10)

# show missing values
plot_impute(dataIn = nhtemp, showmiss = TRUE)

# use mar sampling
plot_impute(dataIn = nhtemp, smps = 'mar')

#rmse() usage
## Generate 100 random numbers within some limits and calculate Root Mean Square Error
a <- sample(1:17, 50, replace = TRUE)
b <- sample(1:14, 50, replace = TRUE)
c <- rmse(a, b)
c

#sample_dat() usage
a <- rnorm(1000)

# default sampling
sample_dat(a)
# use mar sampling
sample_dat(a, smps = 'mar')
# show a plot of one repetition
sample_dat(a, plot = TRUE)
# show a plot of one repetition, mar sampling
sample_dat(a, smps = 'mar', plot = TRUE)

