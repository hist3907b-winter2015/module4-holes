Module 4 Seeing Patterns
=============

In the previous module, we collected and cleaned vast amounts of historical data. Let's begin visualizing it. Part exploration, part reflection, and part argument, these two stages are not linear but feed into one another. Visualization is often about finding the holes. Sometimes, a quick visualization helps you understand what is missing, or what is a glitch in your method, or what is just plain mistaken in your assumptions. I once spent quite a lot of time staring at a network graph before I realized that I'd neglected to import the entire file - I was trying to interpret just a subset of it! Back to my wrangling I went, and in the process of cleaning that data, I realized there were patterns that would be better visualized as simple line plots. I visualized these - and found other errors. Back to wrangling. In the end, a combination of network graph and simple line plots allowed me to identify a story about influence and control of landholding (I was working with archaeological data).

In this module, let us begin by looking at a couple of pieces that explore this cyclical dynamic between data wrangling and visualization. We'll take a look at the [Mapping Texts](http://mappingtexts.stanford.edu/whitepaper/MappingTexts_WhitePaper.pdf) project. We'll look at the work of Michelle Moravec who is using [corpus linguistics tools to understand the history of women's suffrage](http://historyinthecity.blogspot.ca/2013/12/corpus-linguistics-for-historians.html) (and also [here](http://historyinthecity.blogspot.ca/2013/12/visualizing-gender-in-history-of-woman.html)). We'll listen to Micki Kaufmann on [Quantifying Kissinger](http://scholarslab.org/announcements/podcast-micki-kaufman-on-quantifying-kissinger/). (Her [methods are detailed here](http://blog.quantifyingkissinger.com/category/methods/).) We'll talk about [network analysis](http://www.scottbot.net/HIAL/?tag=network-analysis). We'll talk about [topic modeling](http://humanities.uva.nl/~mkoolen1/materials/KB_Mallet_2015/KB_Mallet.html) (and also [here](http://sappingattention.blogspot.ca/2012/11/when-you-have-mallet-everything-looks.html)). We'll talk about [principles of visualization](http://www.themacroscope.org/?page_id=469). We'll probably talk about [Edward Tufte](http://en.wikipedia.org/wiki/Edward_Tufte), too.

## Exercises

The [exercises](/exercises.md) in this module will pick up where we left off, with the Texan Correspondence. You'll represent the exchange of letters as a network. We'll try to extract place names from it. We'll topic model the letters themselves. We'll explore various ways of visualizing those results.

## Things you will learn in this module

+ importing, querying, and visualizing networks with [Gephi](http:/gephi.org)
+ topic modeling with the GUI topic modeling tool, and MALLET at the command line, and in R
+ simple maps with CartoDB (which may include georectifying and displaying historical maps as base layers)
+ corpus linguistics with AntConc
+ TF-IDF with Overview
+ quick visualizations using [RAW](http://raw.densitydesign.org/) 

We will be busy in this module. *Do not be afraid* to ask myself, your peers, or the wider DH community for help and advice! It's the only way we grow.

## And finally...

Just because there is a package, or a routine, or an approach to doing _x_ with your data *does not mean* that you park your critical apparatus at the door. Consider: Matthew Jockers has done some amazing work putting together [a package for the R statistical language that helps one analyze plot arcs in thousands of novels at once](https://github.com/mjockers/syuzhet/). He describes how it works on his [blog](http://www.matthewjockers.net/2015/02/02/syuzhet/). Annie Swafford [explores this package](https://annieswafford.wordpress.com/2015/03/02/syuzhet/) in a comprehensive blog post. She highlights important issues in the way the package deals with the complexity of the world, and how that might have an impact on results and conclusions drawn from using the package. The interplay of the work that Jockers has done, and the dialogue that Swafford has started with Jockers, is an important feature (and perhaps, a defining feature) of digital humanities scholarship. Jocker builds; and Swafford approaches the code from a humanistic perspective; and in the dialectic of their exchange, the code and our ability to understand the code's limitations and potentials will improve. And so we understand the world better.

When you choose your exploratory method, you need to consider that the method has its own agenda!
