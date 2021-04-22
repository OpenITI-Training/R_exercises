
# -------------- 
# Exercise from Chapter 4 in Jockers
# Token distribution analysis

# p. 29 " This chapter explains how to use the positions of words in a vector to create distribution plots showing where words occur across a narrative. Several important R functions are introduced including seq_along, rep, grep, rbind, apply, and do.call. if conditionals and for loops are also presented. "
# --------------- 

setwd("/home/nemo/Documents/Travail/Historia/Doktorat/OfertyIKursy/IslamicateStylometry/Jockers/TextAnalysisWithR")

text.v <- scan("data/plainText/melville.txt", what="character", sep="\n")
start.v <- which(text.v == "CHAPTER 1. Loomings.")
end.v <- which(text.v == "orphan.")
novel.lines.v <- text.v[start.v:end.v]
novel.v <- paste(novel.lines.v, collapse=" ")
novel.lower.v <- tolower(novel.v)
moby.words.l <- strsplit(novel.lower.v, "\\W")
moby.word.v <- unlist(moby.words.l)
not.blanks.v <- which(moby.word.v!="")
moby.word.v <- moby.word.v[not.blanks.v]

n.time.v <- seq(1:length(moby.word.v)) # construire un vecteur pour avoir les positions des tokens (narrative time)

whale.v <- which(moby.word.v == "whale") # creer un vecteur contenant toutes les positions de "whale"

w.count.v <- rep(NA, length(n.time.v))
w.count.v[whale.v] <- 1
plot(w.count.v, main = "Dispertion plot of 'whale' in Moby Dick", xlab = "Novel Time", ylab = "whale", type = "h", ylim=c(0,1), yaxt= "n")

plot(moby.word.v, moby.word.v)
?moby.word.v

plot(n.time.v, n.time.v) # permet d'avoir la progression des occurrences dans le vecteur texte. (fonction lineaire)

w.progress.v <- rep(0, length(n.time.v))
w.progress.v[whale.v] <- +1
plot(n.time.v, w.progress.v)

# the few lines upwards were my attempts at ploting the progress of occurrences of "whale" in the text. 

ahabs.v <- which(moby.word.v == "ahab") # find `ahab'
a.count.v <- rep(NA,length(n.time.v))
# change `w' to `a' to keep whales and ahabs in separate variables
a.count.v[ahabs.v] <- 1 # mark the occurrences with a 1
plot(a.count.v, main="Dispersion Plot of 'ahab' in Moby Dick",
     xlab="Novel Time", ylab="ahab", type="h", ylim=c(0,1), yaxt='n')

# ----------------------
# 4.2 Searching with grep
#  a method for examining how words appear across the novel’s internal chapter structure. !!!!

# clearing the workspace -> to clear all the variables in memory
rm(list = ls())

# Reload the text
text.v <- scan("data/plainText/melville.txt", what="character", sep="\n")
start.v <- which(text.v == "CHAPTER 1. Loomings.")
end.v <- which(text.v == "orphan.")
novel.lines.v <- text.v[start.v:end.v]

# la fonction grep permet d'utiliser grep, un utilitaire de regex
chap.positions.v <- grep("^CHAPTER \\d", novel.lines.v)

novel.lines.v[chap.positions.v]
chap.positions.v[3] # donne la position du titre du troisieme chapitre

for (i in 1:length(chap.positions.v)) {
  print(chap.positions.v[i])
}

# pour chaque en-tete de chapitre dans toute la longueur du texte, imprimer sa position

for(i in 1:length(chap.positions.v)){
  print(paste("Chapter ", i, " begins a position ", chap.positions.v[i]), sep="")
}
# une autre version de la liste des positions (en numero de ligne) des debuts de chapitres.

# Pour la suite de l'exercice, il faut creer des listes pour stocker les resultats.

chapter.raws.l <- list()
chapter.freqs.l <- list()

for(i in 1:length(chap.positions.v)){
  if(i != length(chap.positions.v)){
    chapter.title <- novel.lines.v[chap.positions.v[i]]
    start <- chap.positions.v[i]+1
    end <- chap.positions.v[i+1]-1
    chapter.lines.v <- novel.lines.v[start:end]
    chapter.words.v <- tolower(paste(chapter.lines.v, collapse = " "))
    chapter.words.l <- strsplit(chapter.words.v, "\\W")
    chapter.word.v <- unlist(chapter.words.l)
    chapter.word.v <- chapter.word.v[which(chapter.word.v != "")]
    chapter.freqs.t <- table(chapter.word.v)
    chapter.raws.l[[chapter.title]] <- chapter.freqs.t
    chapter.freqs.rel.t <- 100 * (chapter.freqs.t/sum(chapter.freqs.t))
    chapter.freqs.l[[chapter.title]] <- chapter.freqs.rel.t
  }
} # voir page 37 et al. pour l'explication du code 

# 4.4 Accessiong and Processing List Items

x <- c(1,2,3,4,5)
y <- c(6,7,8,9,10)
rbind(x,y)
# rbind permet de produire une table a partir de deux vecteurs de meme longueur.

x <- list(a = 1:10, b = 2:25, c=100:1090)
x
lapply(x, mean) # applique une fonction (second argument) a une liste (premier argument)

chapter.freqs.l # affiche les tables de frequences relatives pour chaque chapitre -> prend un peu de temps, et le vocabulaire est organise par ordre alphabetique dans chaque tableau

chapter.freqs.l[[1]] # affiche la tables des frequences relatives des occurrences pour le premier chapitre

chapter.freqs.l[[1]]["whale"] # freq relative de baleine dans le premier chapitre
lapply(chapter.freqs.l, "[", "whale") # appliquer a chaque objet de la liste "chapter.freqs.l" une recherche entre "[]" dont le contenu est "whale" -> affiche une liste de la freq relative de "whale" par chapitre

# on peut placer le resultat dans un nouvel objet
whale.freq.rel.l <- lapply(chapter.freqs.l, "[", "whale")

# do.call
x <- list(1:3, 4:6, 7:9)
x
do.call(rbind,x)
# do.call permet de convertir une des listes liees en matrice

whales.m <- do.call(rbind, whale.freq.rel.l) # produit un tableau affichant les titres de chapitre en face de la freq relative de whale dans chaque chapitre.

ahab.l <- lapply(chapter.freqs.l, "[", "ahab")
ahabs.m <- do.call(rbind, ahab.l)
ahabs.m


whales.v <- whales.m[,1]
ahabs.v <- ahabs.m[,1]

whales.ahabs.m <- cbind(whales.v, ahabs.v) # permet de placer en face des colonnes de tableaux. Ici, on compare la freq relative par chapitre de whale et ahab
whales.ahabs.m

# THESE -> cet outil ↑  est tres utile, il permet de comparer les freq relatives par rapport a une categorie (chapitre…) 

colnames(whales.ahabs.m) <- c("whale", "ahab")

barplot(whales.ahabs.m, beside=T, col="grey")

# Chapter 4 Practice
# 4.1
ship.l <- lapply(chapter.freqs.l, "[", "ship")
ships.m <- do.call(rbind, ship.l)
ships.m

ships.v <- ships.m[,1]
whales.ahabs.ships.m <- cbind(whales.v, ahabs.v, ships.v)
colnames(whales.ahabs.ships.m) <- c("whale", "ahab", "ship")
barplot(whales.ahabs.ships.m, beside=T, col="grey")

# 4.2

ahab.raw.l <- lapply(chapter.raws.l, "[", "ahab")
ahabs.raw.m <- do.call(rbind, ahab.raw.l)
ahabs.raw.m

whale.raw.l <- lapply(chapter.raws.l, "[", "whale")
whales.raw.m <- do.call(rbind, whale.raw.l)
whales.raw.m

ship.raw.l <- lapply(chapter.raws.l, "[", "ship")
ships.raw.m <- do.call(rbind, ship.raw.l)
ships.raw.m

ahabs.raw.v <- ahabs.raw.m[,1]
whales.raw.v <- whales.raw.m[,1]
ships.raw.v <- ships.raw.m[,1]
whales.ahabs.ships.raw.m <- cbind(whales.raw.v, ahabs.raw.v, ships.raw.v)
colnames(whales.ahabs.ships.raw.m) <- c("whale", "ahab", "ship")
barplot(whales.ahabs.ships.raw.m, beside = T, col = 'blue')



