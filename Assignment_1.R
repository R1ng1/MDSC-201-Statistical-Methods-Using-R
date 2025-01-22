#1. Vectors
v <- c(5, 15, 25, 35, 45)
print(v)
print(length(v))
print(class(v))

#2. Lists
my_list <- list("Data Science", 42.42, FALSE, c("A", "B", "C"))
print(my_list)
print(my_list[[3]])  # Accesses the third element.

#3. Matrices
matrix_1 <- matrix(10:18, nrow = 3, ncol = 3)
print(matrix_1)
print(matrix_1[3, 1])  # Access element in the 3rd row, 1st column.

#4. Arrays
array_1 <- array(1:18, dim = c(3, 3, 2))
print(array_1)
print(array_1[2, 3, 2])  # Access element at 2nd row, 3rd column, 2nd matrix.

#5. Factors
factor_1 <- factor(c("High", "Low", "High", "Medium", "Low"))
print(factor_1)
print(levels(factor_1))


#6. Data Frames
df <- data.frame(Name = c("David", "Eve", "Frank"),
                 Age = c(22, 28, 34),
                 Marks = c(78, 85, 92))
print(df)
print(df$Marks)

#7. ls Function
var1 <- "Hello"
var2 <- 123
my_var <- TRUE
print(ls(pattern = "var"))

#8. Assigning Variables
a <- 25
b = "Welcome"
TRUE -> c
print(a)
print(b)
print(c)
cat("a is", a, "\n")
cat("b is", b, "\n")
cat("c is", c, "\n")

#9. Finding Variables
varA <- c(4, 5, 6)
varB <- "Statistics"
example_var <- 50
print(ls())
print(ls(pattern = "var"))

#10. Deleting Variables
a <- 100
b <- 200
c <- 300
print("Variables before deletion:")
print(ls())
rm(b)
print("Variables after deleting 'b':")
print(ls())
rm(list = ls())
print("Variables after deleting all:")
print(ls())

#11. Adding Two Vectors
vec1 <- c(10, 20, 30)
vec2 <- c(1, 2, 3)
result <- vec1 + vec2
print(result)

#12. Subtracting Two Vectors
vec1 <- c(50, 60, 70)
vec2 <- c(10, 20, 30)
result <- vec1 - vec2
print(result)

#13. Division of Vectors
vec1 <- c(100, 200, 300)
vec2 <- c(2, 4, 5)
result <- vec1 / vec2
print(result)

#14. Colon Operator
sequence <- 20:30
print(sequence)

#15. %in% Operator
vec <- c("cat", "dog", "rabbit")
print("dog" %in% vec)
print("lion" %in% vec)

#16. Matrix Multiplication
matrix1 <- matrix(2:7, nrow = 2, ncol = 3)
transpose <- t(matrix1)
result <- matrix1 %*% transpose
print(result)

#17. if Statement
y <- 8
if (y < 10) {
  print("y is less than 10")
}

#18. if...else if...else Statement
z <- 20
if (z < 15) {
  print("z is less than 15")
} else if (z == 20) {
  print("z is equal to 20")
} else {
  print("z is greater than 20")
}

#19. While Loop
x <- 2
while (x <= 8) {
  print(x)
  x <- x + 2
}

#20. Repeat Loop
x <- 1
repeat {
  print(x)
  x <- x + 1
  if (x > 4) {
    break
  }
}

#21. For Loop
for (i in 6:10) {
  print(i)
}

#22. Break Statement
for (i in 1:8) {
  if (i == 5) {
    break
  }
  print(i)
}

#23. Next Statement
for (i in 1:5) {
  if (i == 2) {
    next
  }
  print(i)
}
