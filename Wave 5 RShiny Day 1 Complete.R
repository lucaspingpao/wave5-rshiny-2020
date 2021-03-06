# Created by Lucas Pao
# Last edited: August 16, 2020 by Karina Halevy
# 1. Introduction ---------------------------------------------------------

# To create a new document, go to File -> New File -> R Script
# Print hello world!
# To run a command, move to the line you want to execute and hit Ctrl + Enter or Cmd + Return
print("Hello world!")

# 2. Data types -----------------------------------------------------------

# Assignment operator "<-" assigns the value on the right to the variable on the left
# Unlike other programming languages, you do not need specify the data type of a variable to create one
# To show a variable on the R console, simply type the name of that variable
testVariable1 <- 1; testVariable1 # integer
testVariable2 <- "Hello"; testVariable2 # string
testVariable3 <- TRUE; testVariable3 # boolean

# You can change the data type of a variable using as.numeric or as.character
# You can change the value of a variable as well
testVariable3 <- as.character(testVariable1); testVariable3
testVariable4 <- as.numeric(testVariable3); testVariable4

# Print hello world again!
print("Hello my name is Lucas")
name <- "Lucas"
greeting <- paste("Hello my name is", name)
print(greeting) #no quotes here because we are printing the value inside the variable named greeting, not the word "greeting" itself

# 3. Data structures --------------------------------------------------------------

# a) Vectors

# To create a vector, put the elements of a vector inside the c() function
vectorExample <- c(1, 2, 3, 4, 5); vectorExample

# To append or combine vectors, place all the vectors and extra elements into the c() function
combinedVector <- c(vectorExample, 10, 11, 12); combinedVector

# Sum function adds together all the elements of a vector
sum(vectorExample)

v1 <- c(1, 2, 3, 4); v1
v2 <- c(6, 7, 8, 9); v2

# Standard operations between two vectors acts on each corresponding element individually to produce a third vector
v1 + v2
v1 * v2


# b) Matrices

# Concatenates vectors into a matrix
cbind(v1, v2)
rbind(v1, v2)

# Other way to create matrix
matrixInputs <- c(v1, v2); matrixInputs
matrixExample <- matrix(matrixInputs, nrow=2, ncol=4, byrow=TRUE); matrixExample

# Accessing elements in a matrix
matrixExample[1,3] # Single element
matrixExample[1,] # Whole first row
matrixExample[,3] # Whole third column

# Create row/column names and access matrix elements by name
rownames(matrixExample) <- c("row1", "row2"); matrixExample
colnames(matrixExample) <- c("col1", "col2", "col3", "col4"); matrixExample
matrixExample["row1","col3"] # Single element
matrixExample["row1",] # Whole first row
matrixExample[,"col3"] # Whole third column


# c) Lists

# Create list elements first
line1 <- c(1, 2, 3, 4, 5)
line2 <- c("A", "B", "C")

# Combine list elements into a list
listExample <- list(line1, line2); listExample

# Access list elements
listExample[[2]]

# Create names for list elements and access them by name
names(listExample) <- c("firstline", "secondline"); listExample
listExample$secondline


# 4. Conditionals ---------------------------------------------------------

# Synctactic structure of conditional statements
# if(condition is satisfied) {
#   run command inside brackets once
# }
# 
# while(condition is satisfied) {
#   keep running brackets inside brackets until conditions are no longer satisfied
# }
# 
# for(i in 1:N) {
#   run command inside brackets N times
# }


# Deconstructing the for loop!

1:5 # Vector of elements 1-5

# Iterates through command "print(i)" 5 times
for(i in 1:5) {
  print(i)
}

# Iterates through command "print("Hello world") 5 times
for(i in 1:5) {
  print("Hello world")
}

# 5. Functions ------------------------------------------------------------

# Syntactic structure of functions
# functionName <- function(parameter1, parameter2, etc.) {
#   commands
#   return(output) <--- optional
# }


# Print hello world yet again!
print("Hello my name is Lucas")

# Input name, output "Hello my name is ... "
greet <- function(name) {
  message <- paste("Hello my name is", name)
  return(message)
}
greet("Lucas")
greet("Bob")


