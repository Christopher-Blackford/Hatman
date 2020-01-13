####################################################################################################
##########Hangman game
##Created by: Christopher Blackford (chris.j.blackford@gmail.com)

#Installs libraries if you dan't have them, then loading libraries for generating the words
packages <- c("tm", "pdftools", "stringr")
if(length(setdiff(packages, rownames(installed.packages()))) > 0){
  install.packages(setdiff(packages, rownames(installed.packages())))}

library(tm)
library(pdftools)
library(stringr)

#Installs libraries if you dan't have them,, then loading libraries for plotting the game
packages <- c("rgeos", "sp")
if(length(setdiff(packages, rownames(installed.packages()))) > 0){
  install.packages(setdiff(packages, rownames(installed.packages())))}

library(rgeos)
library(sp)

#Clear workspace so you can play multiple times
rm(list=ls())

#Choose what word list to use 
#You can choose "DEFAULT" (word list I provided) or the name of any pdf you drop into the "./word_files/pdf" directory
Word_list_to_use <- "DEFAULT" 

#If you are using your own pdf for the first time, it may take several minutes for R to parse your document - be patient!
#After the first time you do this for your own pdf, R saves the word list to a text file so this step will be much quicker if you play again
source("./code/Selecting_Word.R")
#Plotting the Hangman game board
source("./code/Hatman_Game_Board.R")
#Preparing the "guess" function
source("./code/Guessing_Function.R")

#To guess a letter, simply run the below line or type in the console just re-run the line below to guess different letters
guess("e")
