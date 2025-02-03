library(ggplot2)
library(dplyr)  # Ensure dplyr is loaded for mutate function
library(magrittr)  # Ensure magrittr is loaded for %>% operator

# Sample dataset for luxury car brands
data <- data.frame(
  Brand = c('BMW', 'Mercedes', 'Audi', 'Lexus', 'Porsche', 'Jaguar', 'Tesla', 'Maserati', 'Ferrari', 'Lamborghini'),
  Price = c(60000, 65000, 55000, 50000, 120000, 70000, 75000, 100000, 250000, 300000),
  Horsepower = c(300, 350, 320, 290, 500, 340, 450, 410, 700, 750),
  Sales = c(15000, 18000, 17000, 16000, 5000, 7000, 10000, 2000, 1000, 800),
  Rating = c(4.5, 4.6, 4.4, 4.3, 4.8, 4.2, 4.7, 4.1, 4.9, 5.0)
)

# Bar Chart
ggplot(data, aes(x = Brand, y = Sales, fill = Brand)) +
  geom_bar(stat = 'identity') +
  theme_minimal() +
  ggtitle("Luxury Car Brand Sales")

# Pie Chart with Percentages
data_pie <- data %>% mutate(Percentage = Sales / sum(Sales) * 100)

ggplot(data_pie, aes(x = "", y = Percentage, fill = Brand)) +
  geom_bar(stat = "identity", width = 1) +
  coord_polar(theta = "y") +
  theme_void() +
  geom_text(aes(label = paste0(round(Percentage, 1), "%")), position = position_stack(vjust = 0.5)) +
  ggtitle("Market Share of Luxury Car Brands")

# Boxplot
ggplot(data, aes(x = Brand, y = Price, fill = Brand)) +
  geom_boxplot(outlier.colour = "red", outlier.shape = 16, outlier.size = 3) +
  theme_minimal() +
  labs(title = "Price Distribution of Luxury Cars", x = "Brand", y = "Price") +
  theme(axis.text.x = element_text(angle = 45, hjust = 1))

# Scatterplot
ggplot(data, aes(x = Horsepower, y = Price, color = Brand)) +
  geom_point(size = 4) +
  theme_minimal() +
  ggtitle("Horsepower vs Price")

# Line Chart
ggplot(data, aes(x = Brand, y = Sales, group = 1)) +
  geom_line() +
  geom_point() +
  theme_minimal() +
  ggtitle("Sales Trend of Luxury Car Brands")

# Histogram
ggplot(data, aes(x = Price)) +
  geom_histogram(binwidth = 20000, fill = "blue", color = "black", alpha = 0.7) +
  theme_minimal() +
  labs(title = "Price Distribution of Luxury Cars", x = "Price ($)", y = "Count") +
  geom_density(aes(y = ..count.. * 20000), color = "red", size = 1)

# Heatmap
library(ggplot2)
library(dplyr)  # Ensure dplyr is loaded for mutate function
library(magrittr)  # Ensure magrittr is loaded for %>% operator
library(reshape2)  # Ensure reshape2 is loaded for melt function

# Sample dataset for luxury car brands
data <- data.frame(
  Brand = c('BMW', 'Mercedes', 'Audi', 'Lexus', 'Porsche', 'Jaguar', 'Tesla', 'Maserati', 'Ferrari', 'Lamborghini'),
  Price = c(60000, 65000, 55000, 50000, 120000, 70000, 75000, 100000, 250000, 300000),
  Horsepower = c(300, 350, 320, 290, 500, 340, 450, 410, 700, 750),
  Sales = c(15000, 18000, 17000, 16000, 5000, 7000, 10000, 2000, 1000, 800),
  Rating = c(4.5, 4.6, 4.4, 4.3, 4.8, 4.2, 4.7, 4.1, 4.9, 5.0)
)

# Bar Chart
ggplot(data, aes(x = Brand, y = Sales, fill = Brand)) +
  geom_bar(stat = 'identity') +
  theme_minimal() +
  ggtitle("Luxury Car Brand Sales")

# Pie Chart with Percentages
data_pie <- data %>% mutate(Percentage = Sales / sum(Sales) * 100)

ggplot(data_pie, aes(x = "", y = Percentage, fill = Brand)) +
  geom_bar(stat = "identity", width = 1) +
  coord_polar(theta = "y") +
  theme_void() +
  geom_text(aes(label = paste0(round(Percentage, 1), "%")), position = position_stack(vjust = 0.5)) +
  ggtitle("Market Share of Luxury Car Brands")

# Enhanced Boxplot
ggplot(data, aes(x = Brand, y = Price, fill = Brand)) +
  geom_boxplot(outlier.colour = "red", outlier.shape = 16, outlier.size = 3) +
  theme_minimal() +
  labs(title = "Price Distribution of Luxury Cars", x = "Brand", y = "Price") +
  theme(axis.text.x = element_text(angle = 45, hjust = 1))

# Scatterplot
ggplot(data, aes(x = Horsepower, y = Price, color = Brand)) +
  geom_point(size = 4) +
  theme_minimal() +
  ggtitle("Horsepower vs Price")

# Line Chart
ggplot(data, aes(x = Brand, y = Sales, group = 1)) +
  geom_line() +
  geom_point() +
  theme_minimal() +
  ggtitle("Sales Trend of Luxury Car Brands")

# Improved Histogram
ggplot(data, aes(x = Price)) +
  geom_histogram(binwidth = 20000, fill = "blue", color = "black", alpha = 0.7) +
  theme_minimal() +
  labs(title = "Price Distribution of Luxury Cars", x = "Price ($)", y = "Count") +
  geom_density(aes(y = ..count.. * 20000), color = "red", size = 1)

# Improved Heatmap
if (!requireNamespace("reshape2", quietly = TRUE)) install.packages("reshape2")
library(reshape2)
data_melted <- melt(data, id.vars = "Brand")
ggplot(data_melted, aes(x = Brand, y = variable, fill = value)) +
  geom_tile(color = "black") +
  scale_fill_gradient(low = "lightblue", high = "darkred") +
  theme_minimal() +
  labs(title = "Heatmap of Luxury Car Features", x = "Brand", y = "Feature")

# Bubble Chart
ggplot(data, aes(x = Horsepower, y = Sales, size = Price, color = Brand)) +
  geom_point(alpha = 0.7) +
  theme_minimal() +
  ggtitle("Bubble Chart: Horsepower vs Sales")

# Sample Data
years <- 2000:2010
population <- c(2.5, 2.7, 3.0, 3.2, 3.5, 3.8, 4.0, 4.2, 4.5, 4.8, 5.0)

# Area Plot
plot(years, population, type = "n", main = "Population Growth Over Time",
     xlab = "Years", ylab = "Population (Millions)")
polygon(c(years, rev(years)), c(rep(0, length(years)), rev(population)), 
        col = "lightblue", border = "blue", lwd = 2)
grid(col = "gray", lty = "dotted")


set.seed(1)  # For reproducibility
data <- rnorm(1000, mean = 50, sd = 10)  # 1000 random values from a normal distribution

# Density Plot
plot(density(data), main = "Density Plot", xlab = "Value", ylab = "Density", 
     col = "darkblue", lwd = 2)
grid(col = "gray", lty = "dotted")
