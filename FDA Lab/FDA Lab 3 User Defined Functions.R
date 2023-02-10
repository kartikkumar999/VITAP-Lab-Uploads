
# How do you create a user defined function in R?
user_defined_function <- function(x){
  return (x*10)
}

user_defined_function(10)

# What is the syntax for defining a function in R that takes multiple arguments?

multiply_numbers <- function(number1, number2){
  return (number1*number2)
}

multiply_numbers(2,3)

# How can you pass a default value to an argument in a user defined function in R?

add_numbers <- function(number1, number2= 7){
  return (number1*number2)
}

add_numbers(7)

# How do you return multiple values from a user defined function in R?

return_multiple_values <- function(x,y) {
  return (list(x+y, x-y))
}

return_multiple_values(10,20)

# Can you include other user defined functions within a user defined function in R?

subtract_function <- function(x, y) { 
  # do something with x and y
  z <- do.call("add_function", list(x-y)) 
  # do something with z 
}
#In the above function we are returning the value of x and y and passing it to 
# out new function named other function !
subtract_function(2,3)

# How do you handle errors within a user defined function in R?

my_function5 <- function(x) { 
  result <- tryCatch({ 
    10/x
  }, error = function(e) { 
    # handle the error 
  }) 
 return (result *3)
}

my_function(4)

# What is the difference between a user defined function and a built-in function in R?

#+ The main difference between a user defined function and a built-in function
#+in R is that a user defined function is written by the user, while a built-in
#+function is already stored in the R language and can be called directly.
#+User defined functions can be customized to do any task, while built-in
#+functions are limited to the tasks they are designed to do. Additionally,
#+user defined functions can accept any number of arguments, while built-in 
#functions typically have a fixed number of arguments that they accept.
#+Finally, user defined functions may be more efficient than built-in 
#+functions as they can be optimized for the specific task they are designed to do.


# How do you debug a user defined function in R?

my_function8 <- function(x, y) {
  # set breakpoint at this line
  browser()
  # do something with x and y
  z <- x + y
  # set another breakpoint here
  browser()
  # return z
  return(z)
}

# trace the function
trace(my_function, tracer = browser)

# call the function
result <- my_function(3, 4)

#+ How can you write a user defined function in R that performs a task and then returns the
#+ original inputs?

my_function9 <- function(x,y) {
  result <- x + y
  return(list(x,y,result))
}


my_function9(2,4)

#+ What is the purpose of using user defined functions in R? How does it simplify your code? 

#+ The primary purpose of using user defined functions in R is to simplify and
#+ organize your code by breaking it up into smaller, more manageable pieces
#+  that can be reused and modified easily. By having code in a function, 
#+ you can reduce the amount of code you need to write and make it more readable
#+ and maintainable. This can make it much easier to debug and modify your code,
#+ as well as make it more efficient by avoiding redundant code. Additionally, 
#+ it can make it easier to share your code with others, as functions provide 
#+a clear and concise way to explain how your code works.
#+

#+ Write a function to calculate the factorial of a given number.

factorial <- function(n){
  if (n <=1){
    return (1)
  }
  else {
    return(n* factorial(n-1))
    
  }
}

factorial(6)

#+ Write a function that takes a vector and returns the mean, median and standard deviation of
#+ the elements in the vector.


statistics <- function(vec) {
  mean_val <- mean(vec)
  median_val <- median(vec)
  sd_val <- sd(vec)
  return(c(mean = mean_val, median = median_val, sd = sd_val))
}

statistics(c(1,32,3,4,5,6,87))


#+ Write a function to find the maximum value in a list and its position.

find_max_value_position <- function(list){
  max_value <- list[1]
  max_position <- 1
  for (i in 2:length(list)){
    if (list[i] > max_value){
      max_value <- list[i]
      max_position <- i
    }
  }
  return(list(max_value, max_position))
}

find_max_value_position(c(1,2,3,4,5,6,76,7,0))

#+ Write a function to check if a number is a prime or not.

is_prime <- function(n) {
  if (n < 2) {
    return(FALSE)
  }
  for (i in 2:(n-1)) {
    if (n %% i == 0) {
      return(FALSE)
    }
  }
  return(TRUE)
}

is_prime(3)

#+ Write a function that takes two strings as input and returns the number of times the second
#+ string appears in the first. 

count_substring <- function(string1, string2){
  count <- 0
  for (i in 1:(nchar(string1)-nchar(string2)+1)){
    if (substr(string1,i,i+nchar(string2)-1) == string2)
      count <- count + 1
  }
  return(count)
}

#+ Write a function that calculates the sum of squares of the first &#39;n&#39; natural numbers.
sum_of_squares <- function(n){
  sum <- 0
  for (i in 1:n){
    sum <- sum + i^2
  }
  return(sum)
}

sum_of_squares(8)

# Write a function to sort a matrix by the values in a specific column.

sort_matrix_by_column <- function(matrix, column) {
  sorted_matrix <- matrix[order(matrix[,column]),]
  return(sorted_matrix)
}


# Write a function to find the average of the numbers in a specific column of a matrix.

average_of_column <- function(matrix, column) {
  average <- mean(matrix[,column])
  return(average)
}

# Write a function to convert a character string to title case (i.e. the first letter of each word is
#+ capitalized).

to_title_case <- function(string) {
  words <- strsplit(string, ' ')[[1]]
  words <- toupper(substr(words, 1, 1)) + tolower(substr(words, 2, nchar(words)))
  return(paste(words, collapse=' '))
}

# Write a function that takes two matrices as input and returns their element-wise product (i.e.
#+ Hadamard product).

hadamard_product <- function(matrix1, matrix2) {
  product <- matrix1 * matrix2
  return(product)
}

