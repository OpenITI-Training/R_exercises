library("readr")
library("stringr")
url <- "https://raw.githubusercontent.com/OpenITI/0325AH/master/data/0310Tabari/0310Tabari.Tarikh/0310Tabari.Tarikh.Shamela0009783BK1-ara1.completed"
lines_v <- read_lines(url)
lines2_v <- read_lines(url, locale = locale(encoding = "UTF-8"))
cat(lines2_v[100:105], sep = "\n")
text_v <- scan(url, what="character", sep="\n", encoding="UTF-8")
splitter_index <- which(text_v == "#META#Header#End#")
lines_v <- text_v[(splitter_index+1):length(text_v)]
length (lines_v)
book_v <- paste(lines_v, collapse = "\n")
book_word_l <- str_split(book_v, "\\W+")
book_word_v <- unlist(book_word_l)
book_freqs_t <- table(book_word_v)
sorted_book_freqs_t <- sort(book_freqs_t, decreasing = TRUE)
# Print 5th most common token: 
cat(sorted_book_freqs_t[5])
# Print the 10 most common tokens and their frequencies: 
cat(sorted_book_freqs_t[1:10])
cat(sorted_book_freqs_t["الخليفة"])
#begin tutorial relative frequencies examples
#method 1 take the length or number of elements in the book_word_v vector
all_tokens <- length(book_word_v)
all_tokens
#method 2 add up all the frequencies in the sorted_book_freqs_t table
all_token_freqs <- sum(sorted_book_freqs_t)
all_token_freqs
all_token_freqs == all_tokens
#calculate relative frequency of most common word in the book by taking absolute frequency of word and divide by total number of words in the book. 
all_token_freqs <- sum(sorted_book_freqs_t)
rel_freq <- sorted_book_freqs_t[1] / all_token_freqs
rel_freq
#calculate relative frequency of al-Khalifah
rel_freq_Khalifa <- sorted_book_freqs_t["الخليفة"] / all_token_freqs
rel_freq_Khalifa
#recycling code to reduce manual calculations 
all_token_freqs <- sum(sorted_book_freqs_t)

most_common <- sorted_book_freqs_t[1:10]
print("10 most common tokens")
most_common
class(most_common)

rel_freq <- most_common / all_token_freqs
print("relative frequencies:")
rel_freq
#code attempt to calculate the percentages of the ten most frequent terms 
# calculate the relative frequency (as a percentage) of the 10 most frequent tokens:
all_token_freqs <- sum(sorted_book_freqs_t)
rel_freq <- sorted_book_freqs_t[1:10] / all_token_freqs
print("relative frequency:")
rel_freq
perc <- 100 * rel_freq
print("relative frequency (percentage):")
perc
# create two numeric vectors, one with 5 elements and one with 3 elements
a <- c(2,3,6,9,1)
b <- c(1,9,3)
# try multiplying them. What happens?
a * b
#the shorter vector will repeat multiplying its elements against the longer vector until it runs out of elements to multiply against on its final iteration, R will then supply a warning message that the longer object length is not a multiple of the shorter object length. 
# create two numeric vectors of different size 
a <- c(3,4,5,10,26,11,2)
b <- c(1,6,8)
# try adding them. What happens?
a + b
#the same thing, the shorter vector will continue to be added to the longer vector until it has run out of elements to repeat the operation and R will return the same warning message as above.  
# Print the cumulative relative frequencies of the 20 most common words in the text: 
all_token_freqs <- sum(sorted_book_freqs_t)

most_common <- sum(sorted_book_freqs_t[1:20])
print("Cumulative 20 most common tokens")
most_common
class(most_common)

rel_freq <- most_common / all_token_freqs
print("relative frequencies:")
rel_freq