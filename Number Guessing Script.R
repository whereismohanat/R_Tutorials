#Number Guessing Game

#Step 1 - Create a Number Vector from 1 to 100

num_vec <- c(1:10000)

# Step 2 - We generate a random number between 1 and 100 using the runif function
# The number generated here is a deimcal number which will be rounded in the next step

random_no <- runif(1, min= 1, max = 10000)

#Step 3 - We use the round function to round-off the generated random number

random_no <- round(random_no, digits = 0)


#Step 4 - We take a guess from the user as an input

user_guess <- readline(prompt = "Guess the Number:")

#Step 4 - The guessed number is indexed in the vector and the index is saved to user_guess_vector_index

user_guess_vector_index <- match(user_guess,num_vec)

#Step 4 - The index is used to redeclare the guesses number to a new variable user_guess_found_in_vector

user_guess_found_in_vector<- num_vec[user_guess_vector_index]

#Step 5 - for loop is used to check for user_guess_found_in_vector in the num_vec vector

for (user_guess_found_in_vector in num_vec) {
  
  #Step 5.1 - chained else if function is used to created the maxima and minuma function
  
  if(user_guess > random_no){
    
    user_guess = as.integer(readline(prompt = "Enter a lower value"))
  }else if ( user_guess < random_no){
    
    user_guess = as.integer(readline(prompt = "Enter a higher value"))
  } else {
    
    print("Hurray!! You guessed it right!!")
    
    # Step 6- Break function is used to break off the loop when a match is found.
    break
  }
  
}
