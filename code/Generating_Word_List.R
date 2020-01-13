#####Generating_Word_list subcode being used by Hatman
start_time <- Sys.time()

#Read document into R
doc <- Corpus(URISource(paste0("./word_files/pdf/", Word_list_to_use, ".pdf")), readerControl = list(reader = readPDF()))
doc <- content(doc[[1]])

#Combining pages - unlist() is another option but this I found this safer to preserve characters when almagamating pages
temp <- NULL
for(i in 1:(length(doc))){temp <- paste(temp,doc[i])}; doc <- temp; rm(temp) 

#Breaking into words
doc <- strsplit(doc, " ")[[1]]
doc <- doc[(doc != "")] #Removing indices that are empty

#Record when there are "words" with no letters in them and removing them
#This step could be skipped but it makes subsequent steps quicker I think?

letter_position <- NULL
for (i in 1:length(letters)){
  temp <- grep(x=doc, pattern=letters[i])
  letter_position <- c(temp, letter_position)
  }

letter_position <- sort(unique(letter_position)) #Don't really need sort() here but makes it easier to see where the real words are
doc <- doc[letter_position]
rm(letter_position)

#Split words into characters
doc <- strsplit(unlist(doc), "")

#Record when there are "words" with non-letters in them and removing them
#This step takes a really long time but is great at getting rid of non-letters and also syntax that pdftools uses to identify page breaks
#...But doesn't work with "(" - throws error
## "." (period) is recognized as a letter
## upside down 'e' throws error - may need better method of removing than just checking if each character matches a letter

Record_non_word <- NULL
letters_vector <- c(letters, LETTERS)

#If there is ever a word with non letters in them, remove it

#For each word in the document
for(j in 1:length(doc)){
 a_matrix <- matrix(mapply(grepl, doc[[j]], letters_vector[1], fixed=TRUE)) #fixed = TRUE is very important to identify special characters so it doesn't throw an error

  #For each letter, record if it is an "a", "b", "c", "d", etc.
  for (i in 2:length(letters_vector)){ 
    character_matrix <- matrix(mapply(grepl, doc[[j]], letters_vector[i], fixed = TRUE))
    a_matrix <- cbind(a_matrix, character_matrix)}
  
 a_matrix <- a_matrix*1 #This is a weird R trick that can convert logical to binary
 
 #Within a word, if any letter isn't an "a", "b", "c", "d", etc. remove the word
 if(0 %in% rowSums(a_matrix)){Record_non_word <- append(Record_non_word, j)}
}

doc <- doc[-Record_non_word]

#Remove 1 letter words
if(length(which(nchar(doc) == 1)) != 0){doc <- doc[-which(nchar(doc) == 1)]} #If there are no 1 letter words, don't run this


#End of word list generation
#Combining characters within a word to create a word list
doc <- lapply(doc, FUN = paste, collapse = "")
doc <- unlist(doc)
doc <- sort(doc) #sort alphabetically

#Capitalize
for (j in 1:length(letters)){doc <- gsub(pattern = letters[j], replacement = LETTERS[j], doc)}
#Remove duplicate words
doc <- unique(doc)

#Write out word list
fileConn<-file(paste0("./word_files/word_lists/", Word_list_to_use, "_WordList.txt"))
writeLines(doc, fileConn); close(fileConn)

end_time <- Sys.time(); print(paste0("Word list generation took", gsub(capture.output(end_time - start_time), pattern = "Time difference of", replacement = "")))

#Removing objects that were useful for this file but you don't need
rm(i, j, a_matrix, character_matrix, doc, fileConn, letters_vector, Record_non_word, temp, start_time, end_time)

#####
####
###
##
#END