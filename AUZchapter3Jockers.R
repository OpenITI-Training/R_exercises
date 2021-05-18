text_v <- scan("~/course_projects/R_exercises/TAWR2/data/text/melville.txt", what = "character", sep = "\n")
start_v <- which(text_v == "CHAPTER 1. Loomings.")
novel_lines_v <- text_v[start_v:length(text_v)] #assign the text string as a vector from start_v to the end of text_v to novel_lines_v
novel_v <- paste(novel_lines_v, collapse = " ")
novel_lower_v <- tolower(novel_v)
moby_words_l <- strsplit(novel_lower_v, "\\W")
moby_word_v <- unlist(moby_words_l)
not_blanks_v <- which(moby_word_v != "")
moby_word_v <- moby_word_v[not_blanks_v]
moby_freqs_t <- table(moby_word_v)
sorted_moby_freqs_t <- sort(moby_freqs_t, decreasing = TRUE) #sorts the table moby_freqs_t by freq. from highest to lowest occuring words
sum(sorted_moby_freqs_t)
moby_length_v <- sum(sorted_moby_freqs_t)
sorted_moby_rel_freqs_t <- 100*(sorted_moby_freqs_t/moby_length_v)
plot(
  sorted_moby_rel_freqs_t[1:10], type = "b", 
  xlab = "Top Ten Words in Moby Dick",
  ylab = "Percentage of Full Text", 
  xaxt = "n"
)
axis (
  1, 1:10,
  labels = names(sorted_moby_rel_freqs_t [1:10])
)

#Begin Jockers 3.5 Practice Exercise 1 
sense_text_v <- scan("~/course_projects/R_exercises/TAWR2/data/text/austen.txt", what = "character", sep = "\n")
sense_start_v <- which(sense_text_v == "CHAPTER 1")
sense_novel_lines_v <- sense_text_v[sense_start_v:length(sense_text_v)]
sense_novel_v <- paste(sense_novel_lines_v, collapse = " ")
sense_novel_lower_v <- tolower(sense_novel_v)
sense_words_l <- strsplit(sense_novel_lower_v, "\\W")
sense_word_v <- unlist(sense_words_l)
sense_not_blanks_v <- which(sense_word_v != "")
sense_word_v <- sense_word_v[sense_not_blanks_v]
sense_freqs_t <- table(sense_word_v)
sorted_sense_freqs_t <- sort(sense_freqs_t, decreasing = TRUE) #sorts the table austen_freqs_t by freq. from highest to lowest occuring words
sum(sorted_sense_freqs_t)
sense_length_v <- sum(sorted_moby_freqs_t)
sorted_sense_rel_freqs_t <- 100*(sorted_sense_freqs_t/sense_length_v)
plot(
  sorted_sense_rel_freqs_t[1:10], type = "b", 
  xlab = "Top Ten Words in Sense & Sensibility",
  ylab = "Percentage of Full Text", 
  xaxt = "n"
)
axis (
  1, 1:10,
  labels = names(sorted_sense_rel_freqs_t [1:10])
)
#Begin Jockers 3.5 Practice Exercise 2 
unique(c(names(sorted_moby_rel_freqs_t[1:10]), names(sorted_sense_rel_freqs_t[1:10])))
#Begin Jockers 3.5 Practice Exercise 3
which(names(sorted_moby_rel_freqs_t[1:10]) %in% names(sorted_sense_rel_freqs_t[1:10])) #my guess 
names(sorted_sense_rel_freqs_t[which(names(sorted_sense_rel_freqs_t[1:10]) %in% names(sorted_moby_rel_freqs_t[1:10]))])
#Begin Jockers 3.5 Practice Exercise 4
names(sorted_sense_rel_freqs_t[which(names(sorted_sense_rel_freqs_t[1:10]) %!in% names(sorted_moby_rel_freqs_t[1:10]))]) #my guess 
#correct answer with notes 
presentSense <- which(names(sorted_sense_rel_freqs_t[1:10]) %in% names(sorted_moby_rel_freqs_t[1:10])) #top 10 rel freq terms found in Sense&Sensibility which are also found in Moby Dick are assigned to the object presentSense
names(sorted_sense_rel_freqs_t[1:10])[-presentSense] #terms in the top 10 from Sense that are also found in Moby are subtracted from the top 10 terms found in Sense alone to get all the words in the top 10 of Sense that are not found in Moby, could be done vice versa as well. 