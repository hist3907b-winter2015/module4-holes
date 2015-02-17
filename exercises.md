#Exercises

## exercise 1

## exercise 2

## exercise 3


(not sure where the following will go, so don't fork this yet!)
## Topic Modeling with R Studio
R is a powerful language for exploring, visualizing, and manipulating all kinds of data, including textual. It is however not the most intutive of environments to work in. In which case, [RStudio](http://www.rstudio.com/products/RStudio/) is what we need. Download the free version and install it on your machine. Then, go to [http://tryr.codeschool.com/](http://tryr.codeschool.com/) and work your way through some of that tutorial. This tutorial mimics working right in the R console. Remember working in git bash or the terminal in Module 3? It's somewhat similar to that, but just for R. A handy pdf that explains a bit more about working within the R Studio enivornment can be had [here](http://cran.r-project.org/doc/contrib/Torfs+Brauer-Short-R-Intro.pdf). In essence, you put your code in the script window, execute each line of it, and the output appears in the console. Or in the image plots window. [This handout will guide you around the interface](http://dss.princeton.edu/training/RStudio101.pdf).

In this exercise, we're going to grab the Colonial Newspaper Database from a github page, do some exploratory visualizations, and then create a topic model whose output can then be visualized further in other platforms (including as a network in Gephi). The walkthrough [can be found here](http://hist3907b-winter2015.github.io/module4-holes/tm-CND.html). Each gray block is something to copy-and-paste into your script window in R Studio. Then, put the cursor at the start of the first line, and hit ctrl+enter to get RStudio to execute each line. In the walkthrough, when you get to another gray block, just copy and paste it into your script window after the earlier block. Work your way through the walkthrough. The walkthrough gives you an indication of what the output should look like as you move through it.

By the way: when you run this line: ```topic.model$train(1000) ``` your console will fill up with data as it iterates 1000 times over the entire corpus, fitting a topic model to it. This is as it should be!

In this way, you'll build up an entire script for topic modeling materials you find on the web. You can then save your script and upload it to your open notebook. In the future, you'd be able to make just a few changes here and there in order to grab and explore different data.
