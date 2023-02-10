
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

