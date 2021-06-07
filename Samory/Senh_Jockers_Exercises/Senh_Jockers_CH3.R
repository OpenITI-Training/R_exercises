> sense_start_v <- which(sense_text_v == "CHAPTER 1")
Error in which(sense_text_v == "CHAPTER 1") : 
  object 'sense_text_v' not found
> text.v <-scan("data/plainText/austen.txt") what = "character", sep = "\n"
Error: unexpected symbol in "text.v <-scan("data/plainText/austen.txt") what"
> text.v <-scan("data/plainText/austen.txt", what = "character", sep = "\n")
Read 10906 items
> start.v <- which(text.v == "CHAPTER 1")
> novel.lines.v <- text.v[start.v:length(sense.text.v)]
Error: object 'sense.text.v' not found
> novel.lines.v <text.v[start.v:length(text.v)]
[1] FALSE  TRUE  TRUE  TRUE FALSE FALSE
[7] FALSE FALSE FALSE FALSE FALSE FALSE
[13]  TRUE FALSE FALSE  TRUE FALSE FALSE
[19] FALSE FALSE  TRUE FALSE FALSE  TRUE
[25]  TRUE  TRUE FALSE  TRUE FALSE FALSE
[31]  TRUE  TRUE  TRUE  TRUE FALSE FALSE
[37] FALSE  TRUE  TRUE  TRUE FALSE FALSE
[43] FALSE  TRUE  TRUE  TRUE FALSE FALSE
[49] FALSE  TRUE FALSE FALSE FALSE FALSE
[55] FALSE  TRUE  TRUE  TRUE FALSE FALSE
[61] FALSE  TRUE FALSE  TRUE  TRUE FALSE
[67] FALSE  TRUE FALSE  TRUE FALSE FALSE
[73] FALSE  TRUE  TRUE  TRUE  TRUE  TRUE
[79]  TRUE FALSE FALSE FALSE FALSE FALSE
[85]  TRUE FALSE FALSE  TRUE FALSE  TRUE
[91] FALSE FALSE FALSE FALSE  TRUE  TRUE
[97] FALSE FALSE  TRUE  TRUE FALSE FALSE
[103] FALSE FALSE FALSE  TRUE FALSE FALSE
[109] FALSE FALSE  TRUE  TRUE FALSE FALSE
[115] FALSE  TRUE  TRUE  TRUE FALSE  TRUE
[121] FALSE FALSE  TRUE  TRUE FALSE  TRUE
[127]  TRUE FALSE  TRUE FALSE  TRUE FALSE
[133] FALSE FALSE  TRUE  TRUE FALSE  TRUE
[139]  TRUE FALSE FALSE FALSE  TRUE FALSE
[145] FALSE  TRUE FALSE FALSE  TRUE FALSE
[151]  TRUE FALSE  TRUE  TRUE  TRUE  TRUE
[157]  TRUE FALSE  TRUE FALSE  TRUE FALSE
[163]  TRUE FALSE FALSE  TRUE FALSE  TRUE
[169] FALSE  TRUE FALSE FALSE FALSE  TRUE
[175] FALSE  TRUE  TRUE  TRUE FALSE FALSE
[181]  TRUE  TRUE FALSE  TRUE FALSE FALSE
[187]  TRUE FALSE FALSE FALSE FALSE  TRUE
[193] FALSE  TRUE FALSE FALSE  TRUE  TRUE
[199] FALSE FALSE  TRUE FALSE FALSE FALSE
[205] FALSE  TRUE FALSE FALSE  TRUE FALSE
[211]  TRUE FALSE  TRUE  TRUE FALSE FALSE
[217] FALSE FALSE FALSE  TRUE  TRUE FALSE
[223] FALSE FALSE  TRUE FALSE FALSE FALSE
[229]  TRUE FALSE FALSE FALSE  TRUE FALSE
[235] FALSE  TRUE FALSE FALSE  TRUE FALSE
[241]  TRUE FALSE FALSE  TRUE FALSE  TRUE
[247] FALSE FALSE FALSE FALSE FALSE FALSE
[253]  TRUE  TRUE  TRUE  TRUE  TRUE FALSE
[259] FALSE FALSE FALSE FALSE FALSE FALSE
[265] FALSE  TRUE  TRUE FALSE FALSE FALSE
[271]  TRUE FALSE FALSE FALSE FALSE FALSE
[277]  TRUE  TRUE FALSE FALSE FALSE FALSE
[283]  TRUE FALSE  TRUE FALSE FALSE  TRUE
[289] FALSE FALSE  TRUE FALSE FALSE FALSE
[295] FALSE FALSE FALSE  TRUE FALSE  TRUE
[301]  TRUE  TRUE FALSE FALSE  TRUE FALSE
[307] FALSE FALSE FALSE FALSE  TRUE FALSE
[313]  TRUE  TRUE FALSE  TRUE  TRUE  TRUE
[319] FALSE FALSE  TRUE FALSE  TRUE FALSE
[325]  TRUE FALSE FALSE FALSE FALSE  TRUE
[331]  TRUE  TRUE FALSE  TRUE FALSE FALSE
[337] FALSE FALSE  TRUE  TRUE  TRUE  TRUE
[343] FALSE  TRUE  TRUE  TRUE  TRUE FALSE
[349]  TRUE FALSE  TRUE FALSE  TRUE  TRUE
[355] FALSE FALSE  TRUE FALSE  TRUE FALSE
[361] FALSE  TRUE FALSE  TRUE FALSE  TRUE
[367]  TRUE  TRUE FALSE FALSE  TRUE FALSE
[373]  TRUE FALSE FALSE FALSE  TRUE FALSE
[379]  TRUE FALSE FALSE  TRUE FALSE  TRUE
[385] FALSE FALSE FALSE FALSE FALSE FALSE
[391]  TRUE FALSE  TRUE  TRUE FALSE  TRUE
[397] FALSE  TRUE  TRUE FALSE FALSE  TRUE
[403] FALSE FALSE FALSE  TRUE  TRUE FALSE
[409]  TRUE  TRUE FALSE  TRUE  TRUE  TRUE
[415]  TRUE FALSE FALSE  TRUE  TRUE FALSE
[421] FALSE  TRUE  TRUE FALSE FALSE  TRUE
[427]  TRUE FALSE  TRUE FALSE  TRUE FALSE
[433] FALSE FALSE FALSE FALSE  TRUE FALSE
[439] FALSE FALSE FALSE  TRUE  TRUE FALSE
[445]  TRUE FALSE  TRUE FALSE FALSE FALSE
[451] FALSE FALSE  TRUE  TRUE  TRUE FALSE
[457] FALSE  TRUE  TRUE  TRUE FALSE FALSE
[463] FALSE FALSE FALSE  TRUE FALSE FALSE
[469] FALSE FALSE FALSE FALSE FALSE  TRUE
[475]  TRUE FALSE FALSE  TRUE FALSE FALSE
[481]  TRUE  TRUE  TRUE FALSE  TRUE  TRUE
[487] FALSE  TRUE FALSE FALSE  TRUE FALSE
[493] FALSE  TRUE FALSE FALSE FALSE  TRUE
[499] FALSE FALSE  TRUE FALSE FALSE FALSE
[505]  TRUE FALSE  TRUE  TRUE FALSE  TRUE
[511] FALSE FALSE FALSE FALSE FALSE  TRUE
[517]  TRUE  TRUE FALSE FALSE  TRUE FALSE
[523]  TRUE  TRUE  TRUE FALSE  TRUE  TRUE
[529] FALSE  TRUE FALSE  TRUE  TRUE FALSE
[535] FALSE  TRUE FALSE  TRUE  TRUE  TRUE
[541] FALSE  TRUE FALSE FALSE  TRUE FALSE
[547]  TRUE  TRUE  TRUE  TRUE FALSE  TRUE
[553]  TRUE FALSE FALSE FALSE  TRUE FALSE
[559]  TRUE FALSE  TRUE FALSE FALSE FALSE
[565] FALSE  TRUE  TRUE FALSE FALSE FALSE
[571]  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE
[577] FALSE FALSE FALSE FALSE  TRUE  TRUE
[583]  TRUE FALSE  TRUE  TRUE  TRUE  TRUE
[589] FALSE  TRUE FALSE  TRUE  TRUE FALSE
[595]  TRUE  TRUE FALSE FALSE FALSE  TRUE
[601] FALSE FALSE FALSE FALSE FALSE FALSE
[607] FALSE FALSE FALSE FALSE  TRUE  TRUE
[613] FALSE  TRUE FALSE  TRUE FALSE  TRUE
[619] FALSE  TRUE  TRUE FALSE  TRUE FALSE
[625] FALSE  TRUE  TRUE FALSE FALSE FALSE
[631] FALSE  TRUE  TRUE FALSE  TRUE  TRUE
[637]  TRUE FALSE FALSE  TRUE FALSE  TRUE
[643]  TRUE  TRUE FALSE FALSE FALSE  TRUE
[649]  TRUE FALSE  TRUE FALSE FALSE  TRUE
[655]  TRUE  TRUE  TRUE FALSE FALSE FALSE
[661]  TRUE  TRUE FALSE  TRUE  TRUE FALSE
[667]  TRUE  TRUE FALSE FALSE  TRUE FALSE
[673] FALSE  TRUE  TRUE  TRUE FALSE  TRUE
[679] FALSE  TRUE  TRUE FALSE FALSE  TRUE
[685]  TRUE FALSE  TRUE  TRUE  TRUE FALSE
[691] FALSE  TRUE FALSE  TRUE FALSE  TRUE
[697]  TRUE  TRUE  TRUE  TRUE FALSE  TRUE
[703] FALSE  TRUE FALSE  TRUE FALSE FALSE
[709]  TRUE  TRUE FALSE FALSE FALSE FALSE
[715] FALSE FALSE  TRUE FALSE  TRUE  TRUE
[721]  TRUE  TRUE FALSE  TRUE  TRUE  TRUE
[727] FALSE FALSE FALSE  TRUE  TRUE FALSE
[733] FALSE FALSE FALSE  TRUE  TRUE FALSE
[739] FALSE  TRUE  TRUE FALSE FALSE FALSE
[745]  TRUE FALSE FALSE  TRUE FALSE  TRUE
[751]  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE
[757]  TRUE  TRUE  TRUE  TRUE  TRUE  TRUE
[763] FALSE  TRUE  TRUE  TRUE FALSE  TRUE
[769]  TRUE  TRUE  TRUE  TRUE  TRUE FALSE
[775]  TRUE  TRUE  TRUE  TRUE FALSE  TRUE
[781]  TRUE FALSE FALSE FALSE FALSE  TRUE
[787] FALSE  TRUE  TRUE FALSE FALSE  TRUE
[793] FALSE  TRUE FALSE  TRUE  TRUE FALSE
[799] FALSE  TRUE  TRUE FALSE FALSE FALSE
[805]  TRUE FALSE FALSE FALSE FALSE FALSE
[811]  TRUE  TRUE FALSE FALSE FALSE FALSE
[817]  TRUE  TRUE FALSE FALSE FALSE  TRUE
[823] FALSE FALSE FALSE  TRUE  TRUE  TRUE
[829] FALSE  TRUE FALSE FALSE FALSE FALSE
[835]  TRUE FALSE  TRUE FALSE  TRUE  TRUE
[841] FALSE  TRUE  TRUE FALSE  TRUE FALSE
[847] FALSE  TRUE  TRUE FALSE  TRUE  TRUE
[853]  TRUE  TRUE FALSE FALSE FALSE  TRUE
[859]  TRUE FALSE  TRUE  TRUE  TRUE FALSE
[865]  TRUE FALSE  TRUE FALSE  TRUE  TRUE
[871]  TRUE  TRUE  TRUE FALSE FALSE FALSE
[877] FALSE  TRUE FALSE FALSE  TRUE FALSE
[883]  TRUE  TRUE FALSE FALSE FALSE  TRUE
[889] FALSE FALSE FALSE FALSE  TRUE  TRUE
[895]  TRUE FALSE FALSE FALSE  TRUE FALSE
[901]  TRUE FALSE FALSE FALSE  TRUE FALSE
[907]  TRUE  TRUE FALSE  TRUE  TRUE  TRUE
[913]  TRUE FALSE FALSE FALSE  TRUE FALSE
[919]  TRUE  TRUE FALSE FALSE FALSE  TRUE
[925]  TRUE FALSE  TRUE FALSE  TRUE FALSE
[931]  TRUE FALSE  TRUE FALSE  TRUE  TRUE
[937] FALSE  TRUE FALSE FALSE FALSE FALSE
[943] FALSE FALSE  TRUE  TRUE FALSE FALSE
[949]  TRUE  TRUE FALSE  TRUE FALSE FALSE
[955]  TRUE FALSE  TRUE FALSE  TRUE FALSE
[961] FALSE FALSE  TRUE FALSE  TRUE FALSE
[967]  TRUE  TRUE FALSE FALSE FALSE  TRUE
[973] FALSE  TRUE  TRUE FALSE FALSE FALSE
[979] FALSE FALSE FALSE FALSE FALSE  TRUE
[985] FALSE FALSE FALSE FALSE  TRUE  TRUE
[991] FALSE FALSE  TRUE FALSE  TRUE  TRUE
[997] FALSE FALSE FALSE FALSE
[ reached getOption("max.print") -- omitted 17169 entries ]
Warning message:
  In novel.lines.v < text.v[start.v:length(text.v)] :
  longer object length is not a multiple of shorter object length
> novel.v <-paste(novel.lines.v, collapse = "")
> novel.lower.v <-tolower(novel.v)
> words.l <-strsplit(novel.lower.v, "\\W")
> word.v <-unlist(words.l)
> not.blanks.v <-which(word.v != "")
> word.v <-word.v[not.blanks.v]
> freqs.t <-table(word.v)
> sorted.austen.freq.t <-sort(freqs.t, decreasing = TRUE)
> sum(sorted.austen.freqs.t)
Error: object 'sorted.austen.freqs.t' not found
> sum(sorted.austen.freq.t)
[1] 201492
> length(v)
Error: object 'v' not found
> length.v
Error: object 'length.v' not found
> length.v <- sum(sorted.austen.freq.t)
> length.v <-sum(sorted.austen.freq.t)
> sorted.rel.freqs.t <- 100*(sorted.austen.freq.t/length.v)
> sorted.rel.freqs.t[1:10], type = "b"
Error: unexpected ',' in "sorted.rel.freqs.t[1:10],"
> sorted.austen.freq.t[1:10], type = "b"
Error: unexpected ',' in "sorted.austen.freq.t[1:10],"
> sorted.austen.rel.freq.t[1:10], type = "b"
Error: unexpected ',' in "sorted.austen.rel.freq.t[1:10],"
> sorted.austen.rel.freq.t <- 100*(sorted.austen.freq.t/length.v)
> sorted.austen.rel.freq.t[1:10], type = "b"
Error: unexpected ',' in "sorted.austen.rel.freq.t[1:10],"
> sorted.austen.rel.freq.t[1:10], type = "b",
Error: unexpected ',' in "sorted.austen.rel.freq.t[1:10],"
> sorted.austen.rel.freq.t[1:10], type = "b",
Error: unexpected ',' in "sorted.austen.rel.freq.t[1:10],"
> sorted.austen.rel.freq.t[1:10], type = "b",
Error: unexpected ',' in "sorted.austen.rel.freq.t[1:10],"
> sorted.austen.rel.freq.t[1:10] type = "b"
Error: unexpected symbol in "sorted.austen.rel.freq.t[1:10] type"
> sorted.austen.rel.freq.t[1:10], type = "b",
Error: unexpected ',' in "sorted.austen.rel.freq.t[1:10],"
> sorted.rel.freqs.t <- 100*(sorted.austen.freq.t/length.v)
> sorted.rel.freqs.t <- 100*(sorted.austen.freq.t)
> sorted.rel.freqs.t <-100*(sorted.austen.freq.t)
> 
  > Excercise 2
Error: unexpected numeric constant in "Excercise 2"
> unique(c(names(sorted_moby_rel_freqs_t[1:10]), names(sorted_sense_rel_freqs_t[1:10])))
Error in unique(c(names(sorted_moby_rel_freqs_t[1:10]), names(sorted_sense_rel_freqs_t[1:10]))) : 
  object 'sorted_moby_rel_freqs_t' not found
> sorted.rel.freqs.t <-100*(sorted.freqs.t/length.v)
Error: object 'sorted.freqs.t' not found
> sorted.rel.freqs.t <-100*(sorted.austen.freqs.t/length.v)
Error: object 'sorted.austen.freqs.t' not found
> sorted.rel.freqs.t <- 100*(sorted.austen.freq.t/length.v)
> sorted.austen.rel.freq.t[1:10], type = "b",
Error: unexpected ',' in "sorted.austen.rel.freq.t[1:10],"
> plot(sorted.austen.rel.freq.t[1:10], type = "b",
       + xlab="Top Ten Words in Sense & Sensibility", ylab="Percentage of Full Text", xaxt ="n")
> axis(1,1:10, labels=names(sorted.moby.rel.freqs.t [1:10]))
> axis(1,1:10, labels=names(sorted.austen.rel.freqs.t [1:10]))
Error in as.graphicsAnnot(labels) : 
  object 'sorted.austen.rel.freqs.t' not found
> plot(sorted.austen.rel.freq.t[1:10], type = "b",
       + xlab="Top Ten Words in Sense & Sensibility", ylab="Percentage of Full Text", xaxt ="n")
> xis(1,1:10, labels=names(sorted.austen.rel.freqs.t [1:10]))
Error in xis(1, 1:10, labels = names(sorted.austen.rel.freqs.t[1:10])) : 
  could not find function "xis"
> 
  > unique(c(names(sorted_moby_rel_freqs_t[1:10]), names(sorted_sense_rel_freqs_t[1:10])))
Error in unique(c(names(sorted_moby_rel_freqs_t[1:10]), names(sorted_sense_rel_freqs_t[1:10]))) : 
  object 'sorted_moby_rel_freqs_t' not found
> unique(c(names(sorted.moby.rel.freqs.t[1:10]), names(sorted.rel.freqs.t[1:10])))
[1] "the"  "of"   "and"  "a"    "to"   "in"  
[7] "that" "it"   "his"  "i"   
> 
  > which(names(sorted.moby.rel.freqs.t[1:10]) %in% names(sorted.sense.rel.freqs.t[1:10]))
Error in names(sorted.moby.rel.freqs.t[1:10]) %in% names(sorted.sense.rel.freqs.t[1:10]) : 
  object 'sorted.sense.rel.freqs.t' not found
> which(names(sorted.moby.rel.freqs.t[1:10]) %in% names(sorted.austen.rel.freqs.t[1:10]))
Error in names(sorted.moby.rel.freqs.t[1:10]) %in% names(sorted.austen.rel.freqs.t[1:10]) : 
  object 'sorted.austen.rel.freqs.t' not found
> which(names(sorted.moby.rel.freqs.t[1:10]) %in% names(sorted.rel.freqs.t[1:10]))
[1]  1  2  3  4  5  6  7  8  9 10
> 
  > names(sorted.rel.freqs.t[which(names(sorted.rel.freqs.t[1:10]) %!in% names(sorted.moby.rel.freqs.t[1:10]))])
Error in names(sorted.rel.freqs.t[1:10]) %!in% names(sorted.moby.rel.freqs.t[1:10]) : 
  could not find function "%!in%"
> names(sorted.rel.freqs.t[which(names(sorted.rel.freqs.t[1:10]) %in% names(sorted.moby.rel.freqs.t[1:10]))])
[1] "the"  "of"   "and"  "a"    "to"   "in"  
[7] "that" "it"   "his"  "i"   
> 