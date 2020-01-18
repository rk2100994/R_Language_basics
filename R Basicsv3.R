                                               #DSA R Primer tutorial
R.Version()
RStudio.Version()
.libPaths()
install.packages("jpeg")
installed.packages()
library()
library(jpeg)
?tm
??tm
getwd() 
#setwd("C:\\Users\\Jayendra Vadrevu\\Documents\\R\\MyLib") 
setwd("D:\\DSA\\Data Science is Not a Rocket Science\\files\\1564913774_DSA R Basicsv3") 

#***********************************
#R Reserved Words
?reserved

#**********************************

#R Operators

  #R Assignment Operators

x <- 5
x

x = 9
x


10 -> x
x

#...................................

  #R Arithmetic Operators
x <- 5
y <- 16

x+y

x-y

x*y

y/x

y%/%x

x%/%y

y%%x

y^x
 
#...................................


  #R Relational Operators


x <- 5
y <- 16

x<y

x>y

x<=5

y>=20

y == 16

x != 5

#...................................

   #R Logical Operators


x <- c(TRUE,FALSE,0,6)
y <- c(FALSE,TRUE,FALSE,TRUE)
y
!x

x&y

x&&y

x|y

x||y

#...................................

#************************************


#Vectors
#Vector assignment and coercion


x <- c(1, 5, 4, 9, 0)

length(x)

x <- 1:7
x


y <- 2:-2
y

#Coercion
x <- c(1, 5.4, TRUE, "hello")
x

typeof(x)


#Creating a vector using seq() function

seq(1, 3, by=0.2)          # specify step size
seq(1, 5, length.out=4)    # specify length of the vector

#...................................

#Access elements of vectors

#Integer access
x <- c(1, 5, 4, 9, 0)
x

x[3]           # access 3rd element

x[c(2, 4)]     # access 2nd and 4th element

x[-1]          # access all but 1st element

x[c(2, -4)]    # Throws an error! cannot mix positive and negative integers


x[c(2.4, 3.54)]    # real numbers are truncated to integers



#Logical access

x[c(TRUE, FALSE, FALSE, TRUE)]

x[x < 0]  # filtering vectors based on conditions

x[x > 0]

#Char access
x <- c("first"=3, "second"=0, "third"=9)
names(x)
x
x["second"]

x[c("first", "third")]


#modify a vector

x <- c(1, 5, 4, 9, 0)

x[2] <- 0; x        # modify 2nd element

x[x==0] <- 7; x   # modify elements equal 0

x <- x[1:4]; x      # truncate x to first 4 elements

x <- x+4
x <- x*3
sort(x, decreasing=TRUE)

sum(x, na.rm=TRUE)    # this way we can ignore NA and NaN values
mean(x, na.rm=TRUE)
#..............................................

#Lists


nlst <- list(one = 1, two = c("Hello","DSA"),many = c(3, 4, 5))
nlst
x <- list("a" = 2.5, "b" = TRUE, "c" = 1:3)

str(x)

length(x)

x[c(1:2)]    # index using integer vector
x[-2]        # using negative integer to exclude second component
x[c(T,F,F)]  # index using logical vector
x[c("a","c")]

x$c[3]
x$c[3]<- 5
x
#.................................................

#Matrices


y= matrix(1:9, nrow = 3, ncol = 3)
y
y2= matrix(1:9, nrow = 3)
y2
matrix(1:9, nrow=3, byrow=TRUE)    # fill matrix row-wise
x2 <- matrix(1:9, nrow = 3, dimnames = list(c("X","Y","Z"), c("A","B","C"))) #name the rows and columns of matrix
x2
colnames(x2)
rownames(x2)
cbind(c(1,2,3),c(4,5,6)) #another way of creating matrix column bind
rbind(c(1,2,3),c(4,5,6))  #another way of creating matrix row bind

y
y[c(1,2),c(2,3)]    # select rows 1 & 2 and columns 2 & 3

y[c(3,2),]    # leaving column field blank will select entire columns

y[,]    # leaving row as well as column field blank will select entire matrix

y[-1,]    # select all rows except first

y[c(TRUE,FALSE,TRUE),c(TRUE,TRUE,FALSE)]

x2[2,2] <- 10; x2    # modify a single element
x2[x2<5] <- 0; x2    # modify elements less than 5

t(x2)    # transpose a matrix
cbind(x2, c(1, 2, 3))    # add column
rbind(x2,c(1,2,3))    # add row
dim(x2) <- c(9,1); x2    # change to 9X1 matrix

#.....................................................

#Data frames

x4 <- data.frame("SN" = 1:2, "Age" = c(21,15), "Name" = c("John","Dora"))
x3 <- data.frame("SN" = 1:2, "Age" = c(21,15), "Name" = c("John", "Dora"), stringsAsFactors = FALSE)
x2 <- as.data.frame(x3)

names(x3)
str(x3)

ncol(x3)

nrow(x3)

length(x3)    # returns length of the list, same as ncol()

x3["Name"]
typeof(x3["Name"])
x3$Name
typeof(x3$Name)
typeof(x3)
head(x3,n=3)
x3[x3$Age > 16,]
x3
x3[1,"Age"] <- 20; x3
x3=rbind(x3,list(1,16,"Paul"))
x3
x3[2:3,]    # select 2nd and 3rd row
x3<-cbind(x3,State=c("NY","FL","PH"))
x3
x3$State <- NULL
x3

x3 <- x3[order(x3$Age, decreasing = FALSE),]
x3
#install.packages("xlsx")
library(xlsx) #load the package
write.xlsx(x = x3, file = "test.excelfile.xlsx",
           sheetName = "TestSheet", row.names = TRUE)


#****************************************************************




#Flow Control

#If else
x <- 5
if(x > 0){
  print("Positive number")
}


x <- -5
if(x > 0){
  print("Non-negative number")
} else {
  print("Negative number")
}

y <- if(x > 0) 5 else 6
y



x <- 0
if (x < 0) {
  print("Negative number")
} else if (x > 0) {
  print("Positive number")
} else
  print("Zero")


a = c(5,7,2,9)
ifelse(a %% 2 == 0,"even","odd")



# FOR LOOP

x <- c(2,5,3,9,8,11,6)
count <- 0
for (val in x) {
  if(val %% 2 == 0)  count = count+1
}
print(count)


x <- 1:5

for (val in x) {
  if (val == 3){
    break
  }
  print(val)
}
val


for (val in x) {
  if (val == 3){
    next
  }
  print(val)
}


# While Loop

i <- 1

while (i < 6) {
  print(i)
  i = i+1
}


x <- 1:5


#Repeat


x <- 1

repeat {
  print(x)
  x = x+1
  if (x == 6){
    break
  }
}

#****************************************************************************

#Functions

#func_name <- function (argument) {
#  statement
#}
pow <- function(x, y) {
  # function to print x raised to the power y
  
  result <- x^y
  print(paste(x,"raised to the power", y, "is", result))
}
pow(8, 2)

#assignig default values
pow <- function(x, y = 3) {
  # function to print x raised to the power y
  result <- x^y
  print(paste(x,"raised to the power", y, "is", result))
}

pow(x = 8,)
pow(y = 2, x = 8)


check <- function(x) {
  if (x > 0) {
    result <- "Positive"
  }
  else if (x < 0) {
    result <- "Negative"
  }
  else {
    result <- "Zero"
  }
  return(result)
}

check(1)

check(-10)

check(0)




#multiple returns values

multi_return <- function() {
  my_list <- list("color" = "red", "size" = 20, "shape" = "round")
  return(my_list) 
}

a <- multi_return()
a
