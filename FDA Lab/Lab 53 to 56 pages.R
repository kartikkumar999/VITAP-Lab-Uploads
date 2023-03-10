var(8)
as.numeric((c("1", "2" , "three" , "4")))
c(1,2,3)[4]
NA -1
NA-NA
a <- data.frame(a = 1:3, b = 2:4)
a[4,]
a[,4]
# Create a vector with some invalid operations
v <- c(1, 2, 3, -4, 5)
v <- v/ 0

# Convert NaN values to NA
z <-v[is.nan(v)] <- NA
z

# What happens when we try to sort the data with NA values
x <- c(3, 2, NA, 4, 1)
sort(x, na.last = TRUE) # returns 1 2 3 4 NA

# How to find the length of a an array
b <- c(1, 2, NA, 4, 5)
length(b) # returns 5

# Print the Air quality dataset in r
airquality

class(airquality)

summary(airquality)

colnames(airquality)

rownames(airquality)

d <- c(1,2,4,5,NA)
is.na(d)

# Load the airquality dataset
data(airquality)

# Get the indices of the missing values in the column "major representation"
missing_indices <- which(is.na(airquality$`major representation`))

# Print the indices of the missing values
print(missing_indices)

# Load the airquality dataset
data(airquality)

# Get the indices of the missing values in the row "major representation"
missing_indices <- which(is.na(as.matrix(airquality)), arr.ind = TRUE)

# Filter the indices for the row "major representation"
missing_indices <- missing_indices[missing_indices[, 2] == "major representation", 1]

# Print the indices of the missing values
print(missing_indices)

# create a sample matrix with missing values
mat <- matrix(c(1, 2, NA, 4, NA, 6, 7, 8, 9), nrow = 3)

# find indices of missing values in row and column number-wise
ind <- which(is.na(mat), arr.ind = TRUE)

# print the indices
print(ind)

# load the airquality dataset
data(airquality)

# count the number of missing values in the dataset
sum(is.na(airquality))

# load the airquality dataset
data(airquality)

# count the number of missing values in each variable
missing_counts <- colSums(is.na(airquality))

# create a table of the missing value counts
missing_table <- data.frame(variable = names(missing_counts),
                            missing_count = missing_counts)

print(missing_table)


# load the airquality dataset
data(airquality)

# remove all rows containing missing values
cleaned_data <- na.omit(airquality)

# check the number of missing values in the cleaned data
sum(is.na(cleaned_data))

data(airquality) 
complete_cases <- complete.cases(airquality)
complete_data <- airquality[complete_cases, ]
print(complete_data)

data(airquality)
complete_data <- na.omit(airquality)
print(complete_data)

data(airquality)
complete_data <- na.exclude(airquality)
print(complete_data)

data(airquality) # load the airquality dataset

# create a logical vector identifying rows that are not complete cases
incomplete_rows <- !complete.cases(airquality)

# print the rows that are not complete cases (i.e., contain missing values)
print(airquality[incomplete_rows,])

x <- c(3,4,5,6,7,8) 
z <-x[x<6] <- 0
z

x[x>=4 & x<=8] <- 100

x[x<5 | x>6] <- 50

x[x<6] <- NA

x[x >= 4 & x <= 8] <- NA

mean(x)

median(x)

x[x < 6] <- "NA"

x[x >= 4 & x <= 8] <- "NA"

x[x < 5 | x > 6] <- "NA"

x <- c(1, 2, NA, 4, NA, 6)
sum(is.na(x))

x <- c(1, 2, NA, "NA", 4)

# count number of NA values
sum(is.na(x))     # output: 1

# count number of "NA" values
sum(x == "NA")    # output: 1


