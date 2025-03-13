install.packages("caret")

install.packages('ggplot2')
install.packages('corrplot')
install.packages('dplyr')

install.packages('pRoc')

# Loading Libraries
library(ggplot2)
library(caret)
library(corrplot)
library(dplyr)
library(pROC)

# Step 1: Load the dataset
file_path <- '/content/Salary_Data.csv'
df <- read.csv(file_path)
print("Data Preview:")
head(df)

print("\nSummary Statistics:")
summarise_all(df, funs(mean, sd, min, max))

print("\nNull Values Count:")
sapply(df, function(x) sum(is.na(x)))

print("\nNumber of Duplicates:")
nrow(df) - nrow(unique(df))

corr <- cor(df[, sapply(df, is.numeric)])
corrplot(corr, method='color', type='upper', tl.col='black', tl.srt=45)

ggplot(df, aes(x=YearsExperience, y=Salary)) +
  geom_point(color='blue') +
  ggtitle('Scatter Plot: Years of Experience vs. Salary')

X <- df$YearsExperience
y <- df$Salary
set.seed(42)
trainIndex <- createDataPartition(y, p=0.8, list=FALSE)
X_train <- df[trainIndex, 'YearsExperience']
y_train <- df[trainIndex, 'Salary']
X_test <- df[-trainIndex, 'YearsExperience']
y_test <- df[-trainIndex, 'Salary']

model <- lm(Salary ~ YearsExperience, data=df[trainIndex, ])
summary(model)

# Make predictions
y_pred <- predict(model, newdata=df[-trainIndex, ])

# Model evaluation
mse <- mean((y_test - y_pred)^2)
r2 <- summary(model)$r.squared
print(paste("Mean Squared Error (MSE):", mse))
print(paste("R-squared (R²):", r2))

# Visualizing the regression line
ggplot() +
  geom_point(aes(x = X_test, y = y_test), color = 'blue') +
  geom_line(aes(x = X_test, y = y_pred), color = 'red') +
  ggtitle('Simple Linear Regression') +
  xlab('Years of Experience') +
  ylab('Salary')

# Roc Curve

binary_y_test <- ifelse(y_test > median(y_test), 1, 0)
binary_y_pred <- ifelse(y_pred > median(y_test), 1, 0)

roc_curve <- roc(binary_y_test, y_pred)
plot(roc_curve, col="blue", main="ROC Curve")
auc(roc_curve)
