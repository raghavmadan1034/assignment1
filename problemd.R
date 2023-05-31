MontyHall <- function() {
  doors <- c("car", "goat", "goat")
  
  # Randomly shuffle the doors
  shuffled_doors <- sample(doors)
  
  # we are not taking input , instead letting R randomly choose any door
  chosen_door <- sample(1:3, 1)
  
  #revealed door is basically the door revelaed by monty
  revealed_door <- which(shuffled_doors == "goat" & seq_along(shuffled_doors) != chosen_door)
  remaining_door <- setdiff(1:3, c(chosen_door, revealed_door))
  

  if (shuffled_doors[remaining_door] == "car") {
    return(1)  # win
  } else {
    return(0)  #lost
  }
}

set.seed(123)
num_simulations <- 1000
wins <- replicate(num_simulations, MontyHall())
winning_probability <- sum(wins) / num_simulations

print(winning_probability)

