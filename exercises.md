# Introduction

There are *many* different tools and approaches you could use to visualize your data, both as a preliminary pass to spot the holes and also for more formal analysis. In which case, for this module, I would like you to select two of these exercises which seem most germane for your own research project. You are welcome to work through more of them, of course, but I want the exercises to move your own research forward.

+ [Exercise 1](#exercise-1) Gephi & Texan Correspondence
+ [Exercise 2](#exercise-2) Topic Modeling Tool & CND
+ [Exercise 3](#exercise-3) Topic Modeling in R & CND
+ [Exercise 4](#exercise-4) OverviewProject & CND
+ [Exercise 5](#exercise-5) Simple mapping & georectifying
+ [Exercise 6](#exercise-6) Corpus Linguistics with AntConc
+ [Exercise 7](#exercise-7) Quick charts using RAW


## Exercise 1

In exercise 1, you will transform your Texan Correspondence data into a network, which you will then visualize with Gephi. The detailed instructions are [here](gephi.md).

## Exercise 2

In exercise 2, you will use the 'Topic Modeling Tool' to create a simple topic model and a webpage that allows you to browse the results. 

1. Download the [tool](http://topic-modeling-tool.googlecode.com/files/TopicModelingTool.jar). (The site for the tool is [https://code.google.com/p/topic-modeling-tool/](https://code.google.com/p/topic-modeling-tool/). 
2. Make sure you have the Colonial Newspaper Database handy on your machine. (You can grab my copy from [here](https://raw.githubusercontent.com/shawngraham/exercise/gh-pages/CND.csv)).
3. Double-click on the file you downloaded in step 1. This will open a java-based graphical user interface with one of the most common topic-modeling approaches, 'Latent Dirichlet Allocation'.
4. Set the input to be the Colonial Newspaper Database.
5. Set the output to be somewhere neat and tidy on your computer.
6. Set the number of topics you'd like to model.
7. Click 'train topics' to run the algorithm.
8. When it finishes, go to the folder you selected for output, and find the file 'all_topics.html' in the 'output_html' folder. Click on that, and you now have a browser-based way of navigating your topics and documents. In the output_csv folder created, you will find the same information as csv, which you could then input into a spreadsheet for other kinds of visualizations (which we'll talk about in class.)

Make a note in your open notebook about your process and your observations.

## exercise 3

Exercise 2 was quite a simple way to do topic modeling. There are more powerful ways, and one of these uses a program called R Studio, which is an interface for the R statistical programming language. R is a powerful language for exploring, visualizing, and manipulating all kinds of data, including textual. It is however not the most intutive of environments to work in. In which case, [RStudio](http://www.rstudio.com/products/RStudio/) is what we need. Download the free version and install it on your machine. Then, go to [http://tryr.codeschool.com/](http://tryr.codeschool.com/) and work your way through some of that tutorial. This tutorial mimics working right in the R console. Remember working in git bash or the terminal in Module 3? It's somewhat similar to that, but just for R. A handy pdf that explains a bit more about working within the R Studio enivornment can be had [here](http://cran.r-project.org/doc/contrib/Torfs+Brauer-Short-R-Intro.pdf). In essence, you put your code in the script window, execute each line of it, and the output appears in the console. Or in the image plots window. [This handout will guide you around the interface](http://dss.princeton.edu/training/RStudio101.pdf).

In this exercise, we're going to grab the Colonial Newspaper Database from my github page, do some exploratory visualizations, and then create a topic model whose output can then be visualized further in other platforms (including as a network in Gephi). The walkthrough [can be found here](http://hist3907b-winter2015.github.io/module4-holes/tm-CND.html). Each gray block is something to copy-and-paste into your script window in R Studio. Then, put the cursor at the start of the first line, and hit ctrl+enter to get RStudio to execute each line. In the walkthrough, when you get to another gray block, just copy and paste it into your script window after the earlier block. Work your way through the walkthrough. The walkthrough gives you an indication of what the output should look like as you move through it. 

By the way: when you run this line: ```topic.model$train(1000) ``` your console will fill up with data as it iterates 1000 times over the entire corpus, fitting a topic model to it. This is as it should be!

In this way, you'll build up an entire script for topic modeling materials you find on the web. You can then save your script and upload it to your open notebook. In the future, you'd be able to make just a few changes here and there in order to grab and explore different data.

Make a note in your open notebook about your process and your observations.

## exercise 4

In exercise 4, we're going to look at the Colonial Newspaper Database again, but this time using a tool called 'Overview'. Overview uses a different approach that the topic models we've been discussing. In essence, it looks at word frequencies and their distributions within a document, and within a corpus, to organize the documents into folders of progressively similar word use. 

You can download Overview to run on your own machine, but for our purposes, the hosted version at [https://www.overviewproject.org/](https://www.overviewproject.org/) is sufficient. Go to that page, watch the video, create an account, and then log in.

Once you're inside, click 'import from a CSV file', and upload the CND.csv (which you can download and save to your own machine from [here](https://raw.githubusercontent.com/shawngraham/exercise/gh-pages/CND.csv) <- right-click and save as. On the 'UPLOAD A CSV FILE' page click 'browse' and select the CND.csv. It will give you a preview. There are a number of options here - you can tell Overview which words to ignore, and which words to give added importance to. What words will you select? Make a note in your notebook. Then hit 'upload'.

A new page appears, called 'YOUR DOCUMENT SETS'. Click on the one you just uploaded. A file folder tree showing documents of progressively greater similarity will open; on the right hand side will be the list of documents within each box (the box in question will be greyed out when you click on it, so you know where you are). You can search for words in your document, and Overview will tell you where they are; you can tag documents that you find interesting. The Overview system allows you to jump between a distant, macroscopic view and a close, document level view. Jump back and forth, see what you can find. For suggestions about how to use Overview effectively, try [their blog](http://overview.ap.org/). Make notes about what you observe in your notebook. Also, you can export your tagged document set from Overview, so that you could visualize the patterns of tagging in a spreadsheet (for instance). 

## exercise 5