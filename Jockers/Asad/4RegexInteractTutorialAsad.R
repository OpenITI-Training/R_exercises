library("stringr")  # importing libraries is always done at the top of a script

url <- "https://raw.githubusercontent.com/OpenITI/0325AH/master/data/0310Tabari/0310Tabari.Tarikh/0310Tabari.Tarikh.Shamela0009783BK1-ara1.completed"
text_v <- scan(url, what="character", sep="\n", encoding="UTF-8")
splitter_index <- which(text_v == "#META#Header#End#")
lines_v <- text_v[(splitter_index+1):length(text_v)]
book_v <- paste(lines_v, collapse = "\n")
book_word_l <- str_split(book_v, "\\W+")
book_word_v <- unlist(book_word_l)
#test example 
library("stringr")  # load the `stringr` package, which contains the `str_detect` function
test_v <- c("ab", "ba", "ad", "aa")  # create a character vector with some dummy values
match_v <- str_detect(test_v, "a.")  # regular expression: match the character "a" followed by another character
match_v
#test plot 
library("stringr")
test_v <- c("ab", "ba", "ad", "aa")
match_v <- str_detect(test_v, "a.")
plot(match_v, 
     type = "h",         # "h" stands for histogram (see below)
     ylim = c(0, 1),     # set the maximum value of the Y axis to 1
     yaxp = c(0, 1, 1),  # set the y axis values (1 interval,  between 0 and 1)
     xaxp = c(1, 4, 3),  # set the x axis values (3 intervals, between 1 and 4)
)
# write the pattern here: 
ptrn_1 <- "حدثن"
ptrn_2 <- "[ياى]"

ptrn <- paste(ptrn_1, ptrn_2, sep="")  # concatenate both patterns into a single pattern

haddathani_v <- str_detect(book_word_v, ptrn)

plot(haddathani_v, 
     type = "h",      # "h" stands for histogram
     yaxt = "n",      # do not include tick marks for values on the Y axis
     ylim = c(0, 1),  # set the maximum value of the Y axis to 1
     xlim = c(0, length(haddathani_v)), # set the maximum value of the X axis to the number of tokens in the text
     main = "Dispersion plot for haddathani/a",  # title for the plot
     xlab = "Index positions",                   # label for the x axis
     ylab = ""                                   # label for the y axis
)
# write the pattern here: 
ptrn_3 <- "أخبرن"
ptrn_4 <- "[يا]"

ptrn_a <- paste(ptrn_3, ptrn_4, sep="")  # concatenate both patterns into a single pattern
akhbarani_v <- str_detect(book_word_v, ptrn_a)

plot(akhbarani_v, 
     type = "h",      # "h" stands for histogram
     yaxt = "n",      # do not include tick marks for values on the Y axis
     ylim = c(0, 1),  # set the maximum value of the Y axis to 1
     xlim = c(0, length(akhbarani_v)), # set the maximum value of the X axis to the number of tokens in the text
     main = "Dispersion plot for akhbarani/na",  # title for the plot
     xlab = "Index positions",                   # label for the x axis
     ylab = ""                                   # label for the y axis
)
# build  the regular expression that can be used to identify the instances where haddathana/i is the first word of a transmission chain: 
ptrn_0 <- "^# [وف]?"  # start of line, followed by hashtag and space, and optionally one of the conjunctions wa- or fa-
ptrn_5 <- "حدثن"  # haddathan
ptrn_6 <- "[ياى]"  # alif, ya or alif maqsura
ptrnb <- paste(ptrn_0, ptrn_5, ptrn_6, sep="")  # concatenate all patterns into a single pattern
haddathani_first_v <- str_detect(lines_v, ptrnb)

# plot the vector:
plot(haddathani_first_v,
     type = "h",
     yaxt = "n",
     ylim = c(0, 1),
     xlim = c(0, length(haddathani_first_v)),
     main = "Dispersion plot for haddathani/a as first element in a chain",
     xlab = "Index positions",
     ylab = ""
)
# write the pattern here: 
ptrn_7 <- "^# [وف]?"  # start of line, followed by hashtag and space, and optionally one of the conjunctions wa- or fa-

ptrn_8 <- "[اأ]"          # alif or alif-with-hamza
ptrn_9 <- "خبرن"      # khbaran
ptrn_11 <- "[ياى]"          # i/a
ptrnc <- paste(ptrn_7, ptrn_8, ptrn_9, ptrn_11, sep="")  # concatenate all patterns into a single pattern

# complete the variable attribution using the str_detect() function:
akhbarani_first_v <- str_detect(lines_v, ptrnc)

plot(akhbarani_first_v,
     type = "h",
     yaxt = "n",
     ylim = c(0, 1),
     xlim = c(0, length(akhbarani_first_v)),
     main = "Dispersion plot for akhbarani/na as first element in a chain",
     xlab = "Index positions",
     ylab = ""
)