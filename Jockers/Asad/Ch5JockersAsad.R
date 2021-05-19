# Load text 
text_v <- scan("~/course_projects/R_exercises/TAWR2/data/text/melville.txt", what = "character", sep = "\n")
start_v <- which(text_v == "CHAPTER 1. Loomings.")
novel_lines_v <- text_v[start_v:length(text_v)]
# 5.3 ID Chap Breaks with grep
chap_positions_v <- grep("^CHAPTER \\d", novel_lines_v)
# 5.3.5 ID end of the book
last_position_v <- length(novel_lines_v)
chap_positions_v <- c(chap_positions_v , last_position_v)
# 5.4 for loop and if conditional
#print the chapter positions
for (i in 1:length(chap_positions_v)){
  print(chap_positions_v[i])
}
#print cardinal positions and chapter positions in vector
for (i in 1:length(chap_positions_v)){
  print(paste("Chapter ", i, " begins at position ", chap_positions_v[i]), sep="")
}
#create two empty list objects for storage 
chapter_raws_l <- list()
chapter_freqs_l <- list()
for (i in 1:length(chap_positions_v)){
  if(i != length(chap_positions_v)){ 
    chapter_title <- novel_lines_v[chap_positions_v[i]]
    start <- chap_positions_v[i] + 1 
    end <- chap_positions_v[i + 1] - 1 
    chapter_lines_v <- novel_lines_v[start:end]
    chapter_words_v <- tolower(paste(chapter_lines_v, collapse = " "))
    chapter_words_l <- strsplit(chapter_words_v, "\\W")
    chapter_word_v <- unlist(chapter_words_l)
    chapter_word_v <- chapter_word_v[which(chapter_word_v != "")]  
    chapter_freqs_t <- table(chapter_word_v)
    chapter_raws_l[[chapter_title]] <- chapter_freqs_t
    chapter_freqs_t_rel <- 100*(chapter_freqs_t/sum(chapter_freqs_t))
    chapter_freqs_l[[chapter_title]] <- chapter_freqs_t_rel
  }
}
#5.6.3 lapply
whale_l <- lapply(chapter_freqs_l, '[', 'whale')
#5.6.4 do.call 
whales_m <- do.call(rbind, whale_l)
ahab_l <- lapply(chapter_freqs_l, '[', 'ahab')
ahabs_m <- do.call(rbind, ahab_l)
#5.6.5 cbind
whales_v <- whales_m[,1]
ahabs_v <- ahabs_m[,1]
whales_ahabs_m <- cbind(whales_v, ahabs_v)
dim(whales_ahabs_m)
colnames(whales_ahabs_m) <- c("whale", "ahab")
barplot(whales_ahabs_m, beside = TRUE)
#5.7.1 Exercise 
#attempt 1 
x <- list(a = 1:10, b = 2:25, b = 100:1090)
for(i in a:b(x)){
  print(mean(x))
}
#attempt 2
x <- list(a = 1:10, b = 2:25, b = 100:1090)
for(i in 1:length(x)){
  print(mean(x))
}
#attempt 3
x <- list(a = 1:10, b = 2:25, b = 100:1090)
for(i in x){
  print(mean(x))
}
#attempt 4
x <- list(a = 1:10, b = 2:25, b = 100:1090)
for(i in x){
  print(mean(i))
}
#attempt 5 - what did I do here? How do I just do "mean a = ; mean b = ; mean b ="
x <- list(a = 1:10, b = 2:25, b = 100:1090)
for(i in x){
  print(paste(i, " mean is ",  mean(i), sep = ""))
}
#5.7.2 Exercise
queequeg_l <- lapply(chapter_freqs_l, '[', 'queequeg')
queequegs_m <- do.call(rbind, queequeg_l)
queequegs_v <- queequegs_m[,1]
whales_ahabs_queequegs_m <- cbind(whales_v, ahabs_v, queequegs_v)
#5.7.3 Exercise comparison of raw word counts per chapter. 
whaleraw_l <- lapply(chapter_raws_l, '[', 'whale')
whalesraw_m <- do.call(rbind, whaleraw_l)
ahabraw_l <- lapply(chapter_raws_l, '[', 'ahab')
ahabsraw_m <- do.call(rbind, ahabraw_l)
whalesraw_v <- whalesraw_m[,1]
ahabsraw_v <- ahabsraw_m[,1]
whalesraw_ahabsraw_m <- cbind(whalesraw_v, ahabsraw_v)
colnames(whalesraw_ahabsraw_m) <- c("whale", "ahab")
barplot(whalesraw_ahabsraw_m, beside = TRUE)