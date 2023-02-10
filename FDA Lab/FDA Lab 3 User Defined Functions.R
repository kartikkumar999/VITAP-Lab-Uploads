
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

statistics <- function(vec){
  mean_val <- mean(vec)
  median_val <- median(vec)
  sd_val <- sd(vec)
  
  return (c(mean = mean_val, median = median_val = sd = sd_val))
}

