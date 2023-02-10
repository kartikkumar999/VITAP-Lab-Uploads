
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
  z <- do.call("add_function", list(x+y) 
  # do something with z 
}
#In the above function we are returning the value of x and y and passing it to 
# out new function named other function !
subtract_function(2,3)
