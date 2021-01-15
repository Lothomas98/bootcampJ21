#date and time
time = Sys.time()
print(paste0("The current date and time are: ",time))

#stopwatch
t1 <- Sys.time()
print("My code is running")
print("My code is running")
print("My code is running")
t2 <- Sys.time()
tdelt <- t2-t1
print(paste0("Elapsed Time =",tdelt))

#print a word provided by the user
word = readline(prompt = "Please input a word: ")
print(paste0("Your word was: ",word))

#validate user input
word = readline(prompt = "Please enter a word: ")
if (is.character(word) = FALSE) {
  word = readline(prompt = "Please enter a VALID word: ")
}
print(paste0("Your word was:"))


