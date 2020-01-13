#####Selecting_Word subcode being used by Hatman

#If the text file already exists, just reload it
if(file.exists(paste0("./word_files/word_lists/", Word_list_to_use, "_WordList.txt"))){
  Word_list <- read.csv(paste0("./word_files/word_lists/", Word_list_to_use, "_WordList.txt"), header = F)
  Word_list$V1 <- as.character(Word_list$V1)
  seed <- sample(1:nrow(Word_list),1)
  
  }else if(file.exists(paste0("./word_files/pdf/", Word_list_to_use, ".pdf"))){
    source("./code/Generating_Word_List.R")
    Word_list <- read.csv(paste0("./word_files/word_lists/", Word_list_to_use, "_WordList.txt"), header = F)
    Word_list$V1 <- as.character(Word_list$V1)
    seed <- sample(1:nrow(Word_list),1)
    
  }else{print("Can't find pdf file, please double check file name and re-run from rm(list=ls()) once corrected")}


#We want to keep this word hidden from our global environment pane, so instead of defining it here, I keep it relational to word list
#word <- Word_list[sample(1:nrow(Word_list), 1),]

#set.seed(seed)
#strsplit(Word_list[sample(1:nrow(Word_list),1),], "")[[1]]

Letters_chosen_right <- vector()
Letters_chosen_wrong <- vector()

#####
####
###
##
#END