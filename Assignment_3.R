# Creating a vector
v <- c(10, 20, 30, 40, 50)
print(v)

# Generating sequences
seq1 <- seq(1, 10, by=2)
print(seq1)

# Repeating elements
rep1 <- rep(c(1, 2, 3), times=3)
print(rep1)

# Getting vector length
print(length(v))

# Sorting values
sorted_v <- sort(v, decreasing = TRUE)
print(sorted_v)

# Getting ordering index
idx <- order(v)
print(idx)

# Reversing elements
rev_v <- rev(v)
print(rev_v)

# Finding unique values
unique_v <- unique(c(1, 2, 2, 3, 3, 3, 4))
print(unique_v)

# Frequency table
print(table(c("A", "B", "A", "C", "B", "A")))

# Finding indices of matching values
match_idx <- match(c(20, 40), v)
print(match_idx)

# Checking if value exists
exists <- 30 %in% v
print(exists)

# Finding index of elements satisfying a condition
idx_condition <- which(v > 25)
print(idx_condition)

# Checking if any value is TRUE
print(any(v > 45))

# Checking if all values are TRUE
print(all(v > 5))

# Checking for missing values
v_with_na <- c(10, 20, NA, 40)
print(is.na(v_with_na))

# Removing NA values
clean_v <- na.omit(v_with_na)
print(clean_v)

# Replacing values
replaced_v <- replace(v, v == 20, 100)
print(replaced_v)

# Concatenating strings
str_concat <- paste("Hello", "World", sep=" ")
print(str_concat)

# Concatenating without spaces
print(paste0("Hello", "World"))

# Convert to uppercase
print(toupper("hello"))

# Convert to lowercase
print(tolower("HELLO"))

# Extract substring
print(substr("HelloWorld", 1, 5))

# Pattern matching
matches <- grep("e", c("apple", "banana", "cherry"), value=TRUE)
print(matches)

# Replace pattern
print(gsub("a", "@", "banana"))

# Split strings
splitted <- strsplit("a,b,c", ",")
print(splitted)

# Convert to numeric
print(as.numeric("123"))

# Convert to character
print(as.character(123))

# Convert to factor
factors <- as.factor(c("Low", "Medium", "High"))
print(factors)

# Convert to date
date_val <- as.Date("2024-02-05")
print(date_val)

# Get current date
print(Sys.Date())

nums <- c(10, 20, 30, 40)

# Sum
print(sum(nums))

# Product
print(prod(nums))

# Cumulative sum
print(cumsum(nums))

# Cumulative product
print(cumprod(nums))

# Mean
print(mean(nums))

# Median
print(median(nums))

# Minimum
print(min(nums))

# Maximum
print(max(nums))

# Range
print(range(nums))

# Variance
print(var(nums))

# Standard deviation
print(sd(nums))

# Compute quantiles
print(quantile(nums, probs = c(0.25, 0.5, 0.75)))

# Round values
print(round(3.14159, 2))

# Ceiling
print(ceiling(3.6))

# Floor
print(floor(3.6))

# Absolute value
print(abs(-10))

# Square root
print(sqrt(25))

# Natural logarithm
print(log(10))

# Exponential function
print(exp(2))

# Factorial
print(factorial(5))

# Binomial coefficient
print(choose(5, 2))

# Trigonometric functions
print(sin(pi/2))
print(cos(0))
print(tan(pi/4))

# Correlation coefficient
x <- c(1, 2, 3, 4, 5)
y <- c(2, 4, 6, 8, 10)
print(cor(x, y))

# Covariance
print(cov(x, y))

# Creating data structures
df <- data.frame(Name=c("A", "B", "C"), Score=c(90, 85, 88))
print(df)

lst <- list(Name="John", Age=25)
print(lst)

mat <- matrix(1:9, nrow=3)
print(mat)

arr <- array(1:12, dim=c(2,2,3))
print(arr)

# Transpose matrix
print(t(mat))

# Row and Column binding
mat1 <- matrix(1:6, nrow=2)
print(rbind(mat1, c(7,8,9)))
print(cbind(mat1, c(10,11)))

# Get dimensions
print(dim(df))

# Number of rows & columns
print(nrow(df))
print(ncol(df))

# Get and set names
print(names(df))

# Subset data
subset_df <- subset(df, Score > 85)
print(subset_df)

# Merge data frames
df2 <- data.frame(Name=c("A", "B"), Age=c(20, 21))
merged_df <- merge(df, df2, by="Name")
print(merged_df)

# Apply functions
print(apply(mat, 1, sum))

# Aggregation
print(aggregate(Score ~ Name, data=df, FUN=mean))

# Conditional execution
x <- 10
if (x > 5) print("Greater than 5") else print("Not greater")

# Loop over sequence
for (i in 1:5) {
  print(i)
}

# While loop
i <- 1
while (i <= 5) {
  print(i)
  i <- i + 1
}

# Repeat loop with break
j <- 1
repeat {
  print(j)
  if (j == 5) break
  j <- j + 1
}

# Define and call function
add_nums <- function(a, b) {
  return(a + b)
}
print(add_nums(5, 10))

  # Get and set working directory
  print(getwd())  # Print the current working directory

# Correct way to change directory (ensure the path exists)
setwd("E:/R_programming")  # Use forward slashes or double backslashes (E:\\R_programming)

# Verify if the working directory changed successfully
print(getwd())

# List files in the working directory
print(list.files())

# Check if the data file exists before reading
if (file.exists("data.csv")) {
  df <- read.csv("data.csv")  # Read CSV file
  print(head(df))  # Display first few rows of the data
} else {
  print("Error: data.csv not found in the working directory.")
}

# Write data to a CSV file safely
df_sample <- data.frame(Name=c("Alice", "Bob", "Charlie"), Score=c(90, 85, 88))
write.csv(df_sample, "output.csv", row.names=FALSE)  # Avoid writing row numbers

# Check if the RDS file exists before reading
if (file.exists("data.rds")) {
  df_loaded <- readRDS("data.rds")  # Read R object
  print(df_loaded)
} else {
  print("Error: data.rds not found. Saving new RDS file.")
  saveRDS(df_sample, "data.rds")  # Save data as RDS for future use
}


grades <- factor(c("A", "B", "A", "C"))
print(levels(grades))

# Reorder levels
relevel(grades, ref="B")

# Convert numeric to factor
grouped <- cut(c(10, 20, 30), breaks=3)
print(grouped)

# Convert to date
date1 <- as.Date("2025-02-05")
print(date1)

# Convert to POSIX format
datetime <- as.POSIXct("2025-02-05 10:30:00")
print(datetime)

# Compute time difference
diff <- difftime(Sys.Date(), as.Date("2025-01-01"), units="days")
print(diff)

# Format date
print(format(Sys.Date(), "%d-%b-%Y"))

# List objects
print(ls())

# Remove object
rm(x)

# Garbage collection
gc()

# Debugging
debug(add_nums)
print(add_nums(5, 10))
undebug(add_nums)

# Print output
print("Hello, World!")
cat("Hello, World!\n")
