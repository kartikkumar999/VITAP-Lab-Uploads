print(mtcars)
str(mtcars)

# The mtcars dataset is a built-in dataset in R, and the datatype of the dataset 
#is a data frame [1]. The variables in the dataset are numeric, character, and factor.

print(nrow(mtcars))
print(ncol(mtcars))

#!The str() function provides information about the structure of an object,
#such as its class, the names of its components, and the classes of its components.
#It also gives information about the number of observations, the number of variables,
#and the class of each variable. Additionally, it will provide any attributes associated with the object,
#such as row names, labels, and dimensions

rownames(mtcars)

colnames(mtcars)

print(nrow(mtcars))
print(ncol(mtcars))

print(mtcars[2])
print(mtcars[c(2,5,13),])
print(mtcars[c(15:20),])
print(mtcars[c(13:24,28,30),])

# Print all odd indexed columns (1,3,5,...)
mtcars[c(TRUE,FALSE),]

# Print all even indexed columns (2,4,6,...)
mtcars[c(FALSE,TRUE),]

#Print every 3rd column from 1st column (1,4,7,10..)
mtcars[seq(1, nrow(mtcars), 3),]

# Print first column and last column
mtcars[c(1, nrow(mtcars)), ncol(mtcars)]

#Print last 3 columns
mtcars[(nrow(mtcars)-2):nrow(mtcars),]

mtcars[3]

# Print the elements of column with name "wt"
mtcars[, "wt"]

#Print the elements of columns "mpg" and "qsec"
mtcars[, c("mpg", "qsec")]

# Print first three columns
mtcars[,c(1:3)]

# Print the elements of columns from 5 to 10
mtcars[c(5:10)]

# Print the elements of columns from 3 to 7, 9 and 11
mtcars[c(3:7,9,11)]

# Print first Row and 2nd and third column
mtcars[1, c(2,3)]

# Print First, Second Row and Second and Third Column
mtcars[c(1,2), c(2,3)]

# Print element at 2nd row, third column
mtcars[2,3]

# Print all the rows having "hp" value less than 100

# Print all the rows having "disp" value is between 100 and 200
