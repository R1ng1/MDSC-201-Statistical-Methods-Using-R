temperature <- -5
if (temperature > 30) {
  message("It's a hot day.")
} else if (temperature > 0) {
  message("It's a pleasant day.")
} else {
  message("It's cold outside.")
}
------------------------------------
Y <- 10.5
if (is.integer(Y)) {
  print("Y is an Integer")
} else {
  print("Y is not an Integer")
}
------------------------------------
colors <- c("red", "blue", "green")
if ("yellow" %in% colors) {
  print("yellow is found")
} else {
  print("yellow is not found")
}
------------------------------------  
num <- 10
while (num > 5) {
  print(paste("Current value is:", num))
  num <- num - 1
}
------------------------------------ 
counter <- 1
repeat {
  print(paste("Value:", counter))
  counter <- counter + 1
  if (counter > 7) {
    break
  }
}
------------------------------------
letters <- c("A", "B", "C", "D", "E")
for (letter in letters) {
  print(paste("Current letter is:", letter))
}
------------------------------------ 
values <- c(10, 20, 30, 40, 50)
for (val in values) {
  if (val == 30) {
    next
  }
  print(paste("Value is:", val))
}
------------------------------------  
cube <- function(x) {
  return(x^3)
}
result <- cube(3)
print(paste("The cube of 3 is:", result))
------------------------------------
even_numbers <- function() {
  for (i in 1:5) {
    print(i * 2)
  }
}
even_numbers()
------------------------------------
greet <- function(a, b = "Welcome!") {
  print(paste("Hello,", a))
  print(b)
}
greet("Sai")
------------------------------------
x <- "Hello"
y <- "R"
z <- "Programming"
print(paste(x, y, z, sep = " | "))
------------------------------------
decimal <- 9876.54321
formatted_decimal <- format(decimal, digits = 6)
print(formatted_decimal)
------------------------------------
sentence <- "R is a powerful tool for data analysis."
char_count <- nchar(sentence)
print(paste("Number of characters:", char_count))
------------------------------------
phrase <- "Data Science in R"
print(toupper(phrase))  # Uppercase
print(tolower(phrase))  # Lowercase
------------------------------------ 
greeting <- "Good Evening, Everyone!"
sub_text <- substring(greeting, 6, 13)
print(sub_text)
  