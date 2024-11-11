#Step -1
# Install and load required package
install.packages("UsingR")
library(UsingR)

# Load the father-son dataset
data(father.son)
##Using R studio, successfully imported and loaded father.son.Data

#step -2
##Producing the scatter-plot for father's height Vs son's height 
plot(father.son$fheight, father.son$sheight, xlab="Father's height (in)", ylab="Son's height (in)", pch=20, main="Father-Son Height Regression Analysis")
# Explanation - x axis represents father's height -> fheight
#            - y axis represents son's height ->sheight
#            - solid circle marks (pch=20) represent each data point.

# Step -3
model <- lm(father.son$sheight ~ father.son$fheight)
# Explanation - Fit a linear model lm() predicting son's height based on father's height

#step -4
fmean <- mean(father.son$fheight)
smean <- mean(father.son$sheight)
slope_sd <- sd(father.son$sheight) / sd(father.son$fheight)
intercept_sd <- smean - slope_sd * fmean
# Explanation - Calculate means for center point
#              - Calculate SD line parameters

# Add SD line (in blue)
abline(a=intercept_sd, b=slope_sd, col="blue", lwd=2)

#Step -5
mean_fheight <- mean(father.son$fheight)
mean_sheight <- a + b * mean_fheight
points(mean_fheight, mean_sheight, col="purple", pch=19, cex=1.5)
#Explanation - Calculate the center (x and y co-ordinates) of the regression line
             # - points() add a purple point at the center to mark the center of the regression line

#Step -6
abline(h=smean, col="green", lty=2)
abline(v=fmean, col="green", lty=2)
# Explanation - abline(v) adds a vertical line at mean_fheight in green
#             - abline(h) adds a horizontal line at mean_sheight in green


# Add legend
legend("topleft", 
       legend=c("Regression Line", "SD Line", "Mean Lines"),
       col=c("red", "blue", "green"), 
       lty=c(1,1,2), 
       lwd=c(2,2,1))


#Step -7
summary(model)
#Explanation - Display the summery of the linear model

# Output for summary(model)
# > summary(model)
# 
# Call:
#   lm(formula = father.son$sheight ~ father.son$fheight)
# 
# Residuals:
#   Min      1Q  Median      3Q     Max 
# -8.8772 -1.5144 -0.0079  1.6285  8.9685 
# 
# Coefficients:
#   Estimate Std. Error t value Pr(>|t|)    
# (Intercept)        33.88660    1.83235   18.49   <2e-16 ***
#   father.son$fheight  0.51409    0.02705   19.01   <2e-16 ***
#   ---
#   Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1
# 
# Residual standard error: 2.437 on 1076 degrees of freedom
# Multiple R-squared:  0.2513,	Adjusted R-squared:  0.2506 
# F-statistic: 361.2 on 1 and 1076 DF,  p-value: < 2.2e-16