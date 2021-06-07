R version 4.0.5 (2021-03-31) -- "Shake and Throw"
Copyright (C) 2021 The R Foundation for Statistical Computing
Platform: x86_64-apple-darwin17.0 (64-bit)

R is free software and comes with ABSOLUTELY NO WARRANTY.
You are welcome to redistribute it under certain conditions.
Type 'license()' or 'licence()' for distribution details.

Natural language support but running in an English locale

R is a collaborative project with many contributors.
Type 'contributors()' for more information and
'citation()' on how to cite R or R packages in publications.

Type 'demo()' for some demos, 'help()' for on-line help, or
'help.start()' for an HTML browser interface to help.
Type 'q()' to quit R.

> > setwd("~/Downloads/TextAnalysisWithR")
Error: unexpected '>' in ">"
> setwd("~/Downloads/TextAnalysisWithR")
> text.v <- scan("data/plainText/melville.txt", what="character", sep="\n")
Read 18874 items
> start.v <- which(text.v == "CHAPTER 1. Loomings.")
> end.v <- which(text.v == "orphan.")
> novel.lines.v <-  text.v[start.v:end.v]
> novel.lines.v <- unlist(novel.lines.v)
> novel.lines.v <- c(novel.lines.v, "END") # Correction for second Edition.
> chap.positions.v <- grep("^CHAPTER \\d", novel.lines.v)
> last.position.v <-  length(novel.lines.v)
> chap.positions.v  <-  c(chap.positions.v , last.position.v)
> chapter.freqs.l <- list()
> chapter.raws.l <- list()
> for(i in 1:length(chap.positions.v)){
  +     if(i != length(chap.positions.v)){
    +         chapter.title <- novel.lines.v[chap.positions.v[i]]
    +         start <- chap.positions.v[i]+1
    +         end <- chap.positions.v[i+1]-1
    +         chapter.lines.v <- novel.lines.v[start:end]
    +         chapter.words.v <- tolower(paste(chapter.lines.v, collapse=" "))
    +         chapter.words.l <- strsplit(chapter.words.v, "\\W")
    +         chapter.word.v <- unlist(chapter.words.l)
    +         chapter.word.v <- chapter.word.v[which(chapter.word.v!="")] 
    +         chapter.freqs.t <- table(chapter.word.v)
    +         chapter.raws.l[[chapter.title]] <-  chapter.freqs.t
    +         chapter.freqs.t.rel <- 100*(chapter.freqs.t/sum(chapter.freqs.t))
    +         chapter.freqs.l[[chapter.title]] <- chapter.freqs.t.rel
    +     }
  + }
> whale.l <- lapply(chapter.freqs.l, '[', 'whale')
> whales.m <- do.call(rbind, whale.l)
> ahab.l <- lapply(chapter.freqs.l, '[', 'ahab')
> ahabs.m <- do.call(rbind, ahab.l)
> whales.v <- as.vector(whales.m[,1])
> ahabs.v <- as.vector(ahabs.m[,1])
> whales.ahabs.m <- cbind(whales.v, ahabs.v)
> colnames(whales.ahabs.m) <- c("whale", "ahab")
> 
  > my.l <- lapply(chapter.freqs.l, "[", "my")
> my.m <- do.call(rbind, my.l)
> my.v <- as.vector(my.m[,1])
> i.l <- lapply(chapter.freqs.l, "[", "i")
> i.m <- do.call(rbind, i.l)
> i.v. <- as.vector(i.m[,1])
> whales.ahabs.my.i.m <- cbind(whales.v, ahabs.v, my.v, i.v)
Error in cbind(whales.v, ahabs.v, my.v, i.v) : object 'i.v' not found
> i.v <- as.vector(i.m[,1])
> whales.ahabs.my.i.m <- cbind(whales.v, ahabs.v, my.v, i.v)
> whales.ahabs.my.i.m[which(is.na(whales.ahabs.my.v, i.v))]
Error in which(is.na(whales.ahabs.my.v, i.v)) : 
  object 'whales.ahabs.my.v' not found
> whales.ahabs.my.i.m[which(is.na(whales.ahabs.my.i.m))] <- 0
> cor(whales.ahabs.my.i.m)
whales.v     ahabs.v       my.v
whales.v  1.0000000 -0.24111255 -0.2567597
ahabs.v  -0.2411126  1.00000000  0.1047527
my.v     -0.2567597  0.10475265  1.0000000
i.v      -0.2823201  0.07093003  0.7739603
i.v
whales.v -0.28232007
ahabs.v   0.07093003
my.v      0.77396033
i.v       1.00000000
> 
  > 
  > 
  > 
  > my.i.m <- cbind(my.v, i.v)
> my.i.m[which(is.na(my.i.m))] <- 0
> my.i.cor.data.df <- as.data.frame(my.i.m)
> cor(my.i.cor.data.df$i, my.i.cor.data.df$my)
[1] 0.7739603
> i.my.cors.v <- NULL
> for(i in 1:100)
  + i.my.cors.v <- c(i.my.cors.v),
Error: unexpected ',' in:
  "for(i in 1:100)
i.my.cors.v <- c(i.my.cors.v),"
> for(i in 1:100){
  + i.my.cors.v <- c(i.my.cors.v,
                     + cor(sample(my.i.cor.data.df$i), my.i.cor.data.df$my))
  + }