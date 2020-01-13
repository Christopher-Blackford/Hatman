#####Guessing_Function subcode being used by Hatman

guess <- function(Letter_chosen){
  
  #Capitalize if user didn't
  for(i in 1:length(letters)){if(Letter_chosen == letters[i]){Letter_chosen = LETTERS[i]}}
  
  set.seed(seed)
  Letter_positions <- grep(Letter_chosen, strsplit(Word_list[sample(1:nrow(Word_list), 1),], "")[[1]]) #The second argument here is our word (but hidden!)
  
  #If letter exists in word
  if(length(Letter_positions) >= 1){
    Letters_chosen_right <<- append(Letter_positions, Letters_chosen_right) #The double arrow here saves this object to the global envrionment (default behaviour inside function is to not save object)
    if(length(Letters_chosen_right) == Word_length){print("YOU WIN! Congratulations. To play again, re-run code starting from: '(rm(list - ls())' to clear the memory")}
    source("./code/Hatman_Letters.R", local = T)
    Letters_chosen_right <<- unique(Letters_chosen_right)
    }
  
  #If letter doesn't exist in word
  if(length(Letter_positions) == 0){
    Letters_chosen_wrong <<- append(Letter_chosen, Letters_chosen_wrong)
    
    #Add to hangman
    if(length(Letters_chosen_wrong) == 1){plot(Hat, add=T); print(paste0("Try again. Letters guessed: ", paste(Letters_chosen_wrong, collapse = ", ")))}
    if(length(Letters_chosen_wrong) == 2){plot(Head, add=T); print(paste0("Try again. Letters guessed: ", paste(Letters_chosen_wrong, collapse = ", ")))}
    if(length(Letters_chosen_wrong) == 3){plot(Body, add=T); print(paste0("Try again. Letters guessed: ", paste(Letters_chosen_wrong, collapse = ", ")))}
    if(length(Letters_chosen_wrong) == 4){plot(Arm1, add=T); print(paste0("Try again. Letters guessed: ", paste(Letters_chosen_wrong, collapse = ", ")))}
    if(length(Letters_chosen_wrong) == 5){plot(Arm2, add=T); print(paste0("Try again. Letters guessed: ", paste(Letters_chosen_wrong, collapse = ", ")))}
    if(length(Letters_chosen_wrong) == 6){plot(Leg1, add=T); print(paste0("Try again. Letters guessed: ", paste(Letters_chosen_wrong, collapse = ", ")))}
    if(length(Letters_chosen_wrong) == 7){plot(Leg2, add=T)
      print(paste0("GAME OVER. Thanks for playing! To play again, re-run code starting from '(rm(list - ls())' to clear the memory"))}
    
    }
  
}

#This function reveals the word. If you can't guess it you can use this
#I hid it in here and the tutorial document to reward those who read documentation :)
reveal <- function(){
  set.seed(seed)
  print(paste0("The word is ", Word_list[sample(1:nrow(Word_list), 1),]))
}

#####
####
###
##
#END