#Created by Lucas Pao on July 27, 2020
#Last Edited: July 27, 2020

# 1. Data Frames ----------------------------------------------------------

# a) Creating Data Frames -------------------------------------------------

#Create columnns first and combine them into a data frame
names <- c("Alice", "Bob", "Charlie", "David", "Eve"); names
ages <- 15:19
colors <- c("red", "orange", "yellow", "green", "blue")
data1 <- data.frame(names, ages, colors); data1

#Create data frame from scratch
data2 <- data.frame(
  row.names = c("q","w","e","r","t"),
  names = c("Alice", "Bob", "Charlie", "David", "Eve"),
  ages = 15:19,
  colors = c("red", "orange", "yellow", "green", "blue")
);
data2

# b) Accessing Data Frame Elements ----------------------------------------

#Accessing data
data2[1,] #row 1
data2[c(1,2),] #row 1 and 2
data2[,1] #column 1
data2[1,1] #row 1 column 1

#Create row/columnn names and access elements by name
colnames(data2) <- c("column1", "column2", "column3"); data2
rownames(data2) <- c("row1", "row2", "row3", "row4", "row5"); data2
data2$column1
data2$column1[1]
data2["row1",]
data2[,"column1"]
data2["row1","column1"]

#Subsetting Rows (subset, which)
data1
subData <- subset(data1, data1$names == "Charlie"); subData
which(data1$colors == "orange")


# c) Special Table functions ----------------------------------------------
#(expand.grid, outer)
a <- 1:5
b <- 1:5
expand.grid(a,b)
multiplicationTable <- outer(a,b, function(a,b) a*b); multiplicationTable


# 2. Data Analytics -------------------------------------------------------

#Read Data
#Go to "Session" -> "Set Working Directory" -> "Choose Directory"
#Then choose the folder in which the dataset file is located
dataset <- read.csv("Wave5-RShiny-Covid-Dataset.csv")
badday <- subset(dataset, dataset$cases>1000)

#Analyze the data!
mean(badday$month)

#Previewing data (str, head)
str(dataset)
head(dataset)


# 3. Plotting -------------------------------------------------------------
library(graphics) #Graphics
#Other libraries: plotrix, ggplot, tidyverse

#Scatterplots
plot(x=NULL, y=NULL, xlab="x", ylab="y", xlim=c(0,10), ylim=c(-2,2), asp=1, main="Title", axes=TRUE)
x <- seq(1, 10, 0.5); x
y <- sin(x); y

#Points, lines, curves, text
?par #Find all the parameters here
?pch #Find all styles here
#pch: type of point
#cex: size of points/texts
#lty: type of line
#lwd: line thickness
points(x, y, col="blue", pch=20, cex=0.5)
lines(x, y, col="blue", lty=1, lwd=0.5)
abline(v=5, col="red", lty=2)
abline(h=0, col="red", lty=2)
curve(sin, from=0, to=20)
text(10,0, "Hello world", cex=1)

#Segments and arrows
#x0: from(x), x1: to(x), y0: from(y), y1: to(y)
plot(x=NULL, y=NULL, xlab="x", ylab="y", xlim=c(0,10), ylim=c(0,10), asp=1, main="Title", axes=TRUE)
arrows(x0=1, y0=1, x1=3, y1=3, col="green", lty=1, lwd=2)
segments(x0=4, y0=4, x1=6, y1=6, col="green", lty=1, lwd=2)

#Barplots
barplot(height=1:5, names.arg=c("a","b","c","d","e"), xlab="x", ylab="y", main="Title", col="blue", border="red")
barplot(height=data1$ages, names.arg=data1$names, xlab="Name", ylab="Age", ylim=c(0,25), main="Title", col="blue", border="red")
