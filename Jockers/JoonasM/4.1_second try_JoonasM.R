whales.l <- lapply(chapter.freqs.l, '[', 'whale')
whales.m <- do.call(rbind,whales.l)
whales.v <- as.vector(whales.m[,1])
ahabs.l <- lapply(chapter.freqs.l, '[', 'ahab')
ahabs.m <- do.call(rbind,ahab.l)
ahabs.v <- as.vector(ahab.m[,1])
queequeg.l <- lapply(chapter.freqs.l, '[', 'queequeg')
queequeg.m <- do.call(rbind,queequeg.l)
queequeg.v <- as.vector(queequeg.m[,1])
colnames(queequeg.m) <- c("queequeg")
barplot(queequeg.m,beside=T,col="red")
whales.ahabs.queequeg.m <- cbind(whales.v,ahabs.v,queequeg.v)
barplot(whales.ahabs.queequeg.m,beside=T,col="yellow")
