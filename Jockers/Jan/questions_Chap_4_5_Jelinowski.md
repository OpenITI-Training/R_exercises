% Questions on Jocker's chapter 4 & 5
% Jan Jelinowski
% 20/04/2021


I will note here the questions I have while going through Jocker's chapter 4 and 5 as well as the tutorial prepared by Peter Verkinderen.

# Jocker's chapter 4

## Dispersion plot

A simple visual representation of the distribution of a token in the entire text vector.
It looks like a bar code, with black stripes representing the position of the occurrences of a selecte token. 

The code builds first a white (*ie* empty) stripe representing the time of the novel. 
Its length is *N*, where *N* is the number of tokens in the text vector:

    > n.time.v <- seq(1:length(moby.word.v))  
    > w.count.v <- rep(NA, length(n.time.v))

NA means negative value (=0).

We then modify this vector by changing the value from 0 to 1 on the positions where the chosen token appears (here it's "whale").

    > whale.v <- which(moby.word.v == "whale")  
    > w.count.v[whale.v] <- 1

We can then make the plot:

    > plot(w.count.v, main = "Dispertion plot of 'whale' in Moby Dick", xlab = "Novel Time", ylab = "whale", type = "h", ylim=c(0,1), yaxt= "n")

**Question**

I would like to make this differently, and represent the progression of usage of a token in narrative time.

I started by testing a plot where both x an y axis would be the text vector:
    > plot(moby.word.v, moby.word.v)

For [the following effect](test_plot_mobywordv_R.png): a linear progression.
I don't understand why the points are not spread equally, and also why `plot` did use a scale of 2000/2000 instead of showing length/length (although it should not change the shape of the function).

→ answer: because `moby.word.v` contains the words in a sequences… it's hard to say what `plot` is plotting (because the vector must also store information about the position and number of tokens…)

The [expected function](plot_ntimev_R.png) can be obtained by:

    > plot(n.time.v, n.time.v)

Now what I would like to do, is to prepare a plot with:

- `x` = moby.word.v
- `y` = number of occurrences of a selected token

*How to code the y vector?*

→ it could maybe be done with a `for` loop?



