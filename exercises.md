# Introduction

[There are *many* different tools and approaches](http://dhresourcesforprojectbuilding.pbworks.com/w/page/69244314/Tutorials%20for%20DH%20Tools%20and%20Methods) you could use to visualize your data, both as a preliminary pass to spot the holes and also for more formal analysis. In which case, for this module, I would like you to select two of these exercises which seem most germane for your own research project. You are welcome to work through more of them, of course, but I want the exercises to move your own research forward. Some of these I wrote; some are adapted from [The Macroscope](http://themacroscope.org); others are adapted or used holus-bolus from scholars like [Miriam Posner](http://miriamposner.com/blog/), [Fred Gibbs](http://fredgibbs.net/), and [Heather Froehlich](http://hfroehli.ch/) (and I'm grateful that they shared their materials!)


| Texts        | Networks         | Maps  | Charts |
| ------------- |:-------------:|:-----:|--------:|
| [Topic Modeling Tool](#exercise-2)  |[Network analysis and visualization](#exercise-1) |[Simple mapping & georectifying](#exercise-8) |[Quick charts using RAW](#exercise-7) |
| [Topic Modeling in R](#exercise-3)  |[Converting 2-mode to 1-mode](/multimodetransformation.md) |[QGIS (tutorials by Fred Gibbs)](#exercise-10) | |
| [Text Analysis with OverviewProject](#exercise-4)   |[Graphing the Net](/graphing-the-net.md) |[Geoparsing with Python](/geoparsing-w-python.md) | |
| [Corpus Linguistics with AntConc](#exercise-5)  |[Choose your own adventure](/cyoa.md)|[Palladio with Posner](http://miriamposner.com/blog/getting-started-with-palladio/) | |
| [Text Analysis with Voyant](#exercise-6)    |  | | |
|[Text Analysis in R](#exercise-9) | | | |

----------------------

## Exercise 1
### Network Visualization

In exercise 1, you will transform your Texan Correspondence data into a network, which you will then visualize with Gephi. The detailed instructions are [here](gephi.md). I would recommend that you also take a long look at Scott Weingart's series, [Networks Demystified](http://scottbot.net/HIAL/?s=%20networks%20demystified). Finally, [heed our warning](http://www.themacroscope.org/?page_id=449).

-----

## Exercise 2
### Topic Modeling Tool
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

*Going Further* Remember when we did the Canadiana API and WGET exercises in Module 2? Somewhere on your machine you have a collection of those materials. Now, you can load those materials into the Topic Modeling Tool if you have all of the txt files in a single folder. In the case of the slavery documents, that was something like 7500 items. That's a lot of drag-and-drop. You can 'flatten' the folder structure so that all of the documents in your subfolders are put into a single folder. If you are on a Mac, [try these instructions](http://osxdaily.com/2015/02/11/flatten-nested-directory-structure-command-line/). On a PC, [try this one](http://superuser.com/questions/412982/win-7-copy-all-files-from-a-complex-folder-structure-to-one-folder) (there are scripts you can use, but for the time being this is probably simplest).  Then, you can point your topic modeling tool at your flattened folder, and *boom* you have a topic model fitted to your collection.

-----

## exercise 3
### Topic Modeling in R

Exercise 2 was quite a simple way to do topic modeling. There are more powerful ways, and one of these uses a program called R Studio, which is an interface for the R statistical programming language. R is a powerful language for exploring, visualizing, and manipulating all kinds of data, including textual. It is however not the most intutive of environments to work in. In which case, [RStudio](http://www.rstudio.com/products/RStudio/) is what we need. Download the free version and install it on your machine. *Note also that you need to have R [downloaded & installed first](http://cran.rstudio.com/)! Then, go to [http://tryr.codeschool.com/](http://tryr.codeschool.com/) and work your way through some of that tutorial. This tutorial mimics working right in the R console. Remember working in git bash or the terminal in Module 3? It's somewhat similar to that, but just for R. A handy pdf that explains a bit more about working within the R Studio enivornment can be had [here](http://cran.r-project.org/doc/contrib/Torfs+Brauer-Short-R-Intro.pdf). In essence, you put your code in the script window, execute each line of it, and the output appears in the console. Or in the image plots window. [This handout will guide you around the interface](http://dss.princeton.edu/training/RStudio101.pdf).

In this exercise, we're going to grab the Colonial Newspaper Database from my github page, do some exploratory visualizations, and then create a topic model whose output can then be visualized further in other platforms (including as a network in Gephi). The walkthrough [can be found here](http://hist3907b-winter2015.github.io/module4-holes/tm-CND.html). Each gray block is something to copy-and-paste into your script window in R Studio. Then, put the cursor at the start of the first line, and hit ctrl+enter to get RStudio to execute each line. In the walkthrough, when you get to another gray block, just copy and paste it into your script window after the earlier block. Work your way through the walkthrough. The walkthrough gives you an indication of what the output should look like as you move through it. (The walkthrough was written inside R, and then turned into HTML using an R package called 'Knittr'. You can see that this has implications for open research! For reference, [here's the original Rmd (R markdown) file that generated the walkthrough](https://gist.github.com/shawngraham/7efd64c08a94c39a593f).)

By the way: when you run this line: ```topic.model$train(1000) ``` your console will fill up with data as it iterates 1000 times over the entire corpus, fitting a topic model to it. This is as it should be!

In this way, you'll build up an entire script for topic modeling materials you find on the web. You can then save your script and upload it to your open notebook. In the future, you'd be able to make just a few changes here and there in order to grab and explore different data.

Make a note in your open notebook about your process and your observations.

*Going further* If you wanted to use that script on the materials you collected in module 2, you would have to tell R to load up those materials from a directory, rather than by reading a csv file. Take a look at [my script for topic modeling the Ferguson Grand Jury documents](https://github.com/shawngraham/ferguson/blob/master/R%20script/ferguson-topicmodel.R), especially this line:

```documents <- mallet.read.dir("originaldocs/1000chunks/") ```

You feed it the path to your documents. If you are on a windows machine, the path would look a bit different, for instance: 
``` "C:\\research\\originaldocs\\1000chunks\\" ```

----

## exercise 4
### Text Analysis with Overview

In exercise 4, we're going to look at the Colonial Newspaper Database again, but this time using a tool called 'Overview'. Overview uses a different approach that the topic models we've been discussing. In essence, it looks at word frequencies and their distributions within a document, and within a corpus, to organize the documents into folders of progressively similar word use. 

You can download Overview to run on your own machine, but for our purposes, the hosted version at [https://www.overviewproject.org/](https://www.overviewproject.org/) is sufficient. Go to that page, watch the video, create an account, and then log in.

Once you're inside, click 'import from a CSV file', and upload the CND.csv (which you can download and save to your own machine from [here](https://raw.githubusercontent.com/shawngraham/exercise/gh-pages/CND.csv) <- right-click and save as. On the 'UPLOAD A CSV FILE' page click 'browse' and select the CND.csv. It will give you a preview. There are a number of options here - you can tell Overview which words to ignore, and which words to give added importance to. What words will you select? Make a note in your notebook. Then hit 'upload'.

A new page appears, called 'YOUR DOCUMENT SETS'. Click on the one you just uploaded. A file folder tree showing documents of progressively greater similarity will open; on the right hand side will be the list of documents within each box (the box in question will be greyed out when you click on it, so you know where you are). You can search for words in your document, and Overview will tell you where they are; you can tag documents that you find interesting. The Overview system allows you to jump between a distant, macroscopic view and a close, document level view. Jump back and forth, see what you can find. For suggestions about how to use Overview effectively, try [their blog](http://overview.ap.org/). Make notes about what you observe in your notebook. Also, you can export your tagged document set from Overview, so that you could visualize the patterns of tagging in a spreadsheet (for instance). 

*Going further* Do you see how you could upload your documents that you collected during Module 2?

----

## exercise 5
### Corpus Linguistics with AntConc
Heather Froelich has put together an excellent step-by-step with using AntConc for exploring textual patterns within, and across, corpora of texts. Work your way through her tutorial: http://hfroehli.ch/workshops/getting-started-with-antconc/

Can you get our example materials (from the CND ) into AntConc? [This might help you](http://www.themacroscope.org/?page_id=418) to split the csv into individual txt iles. Alternatively, do you have any materials of your own, already collected? Feed them into AntConc. What patterns do you see? What if you compare your materials against other corpora of texts?

FYI, [here is a collection of corpora that you can explore](http://www.helsinki.fi/varieng/CoRD/corpora/index.html)

-----

## exercise 6
### Text Analysis with Voyant

In module 3 if you recall, we worked through how to transform XML using stylesheets. Melodee Beals used a [stylesheet ](https://github.com/mhbeals/Colonial-Newspaper-Database/tree/master/Transformers) to transform her database into a series of individual txt files. In the exercises above, a transformer was used to make the database into a single CSV file. In this exercise, we are going to use [Voyant Tools](http://voyant-tools.org) to visualize patterns in word use in the database. Voyant can read either a CSV *or* text files. The advantage of uploading a folder of text files is that, if the files are in chronological order, Voyant's default visualizations will also be arranged in chronological order and thus we can see change over time.

Go to [http://voyant-tools.org](http://voyant-tools.org). Paste the URL to the csv of the CND database:https://raw.githubusercontent.com/shawngraham/exercise/gh-pages/CND.csv . 

Now, open a new browser window, and go here http://voyant-tools.org/?corpus=colonial-newspapers&stopList=stop.en.taporware.txt

Do you see the difference? In the latter window, the individual articles have been uploaded individually, and thus are treated as individual documents in chronological order.

Explore the corpus, comparing terms over time, looking at keywords in context, and using RezoViz to create a graph where people, places, and organizations that appear in the same documents (and across documents) are connected. You can embed any of the tools in your blogs by using the 'save' icon. (You can find 'rezoviz' under the cogwheel icon at the top right of the panel). You can apply 'stopwords' by clicking on the cogwheel in any of the different tools, and selecting stopwords. Apply the stopwords globally, and you'll only have to do this once! What patterns do you see? What do different tools highlight? Which ones are useful? What patterns do you see that strike you as interesting? Note this all down. 

*Going further* Upload materials you collected in module 2 and explore them.

-----

## exercise 7
### Quick Charts Using RAW

A quick chart can be a handy thing to have. Google spreadsheets, Microsoft Excel, and a host of other programs can make excellent charts quickly with their wizard functions. Never hesitate to turn to these. However, they are not always good with non-numeric data. In module 3, you used the NER to extract place names from a text. After some further munging with regex, you might have ended up with a CSV that looks like [this](/texas.csv). Can we do a quick visualization of this information? One useful tool is [RAW](http://raw.densitydesign.org/). Open that in a new window. Copy the table of data of places mentioned in the Texan correspondence, and paste it into the data input box at the top of the RAW screen. 

RAW takes your data, and depending on your choices, passes it into chart templates built on the d3.js code library. D3.js is a powerful library for making all sorts of charts (including interactive ones). If this sort of thing interests you, you can follow the tutorials in [Elijah Meeks' excellent new book](http://manning.com/meeks/).

With your data pasted in, you can now experiment with a number of different visualizations that are all built on the d3.js code library.  Try the ‘alluvial’ diagram.  Pick place1 and place2 as your dimensions. Does anything jump out? Try place3 and place 4. Try place1, place2, place3, and place4 in a single alluvial diagram. When we look at the original letters, we see that the writer often identified the town in which he was writing, and the town of the addressee. Why choose the third and fourth places? Perhaps it makes sense, for a given research question, to assume that with the pleasantries out of the way the writers will discuss the places important to their message. Experiment! This is one of the joys of working with data, experimenting to see how you can deform your materials to see them in a new light.


-----
## exercise 8
### Simple Mapping and Georectifying

In this exercise, you will find a historical map online, upload a copy to a mapwarper service, georectify it, and then display the map online, via a hosted service like CartoDB, and also through a map you will build yourself using leaflet.js. Finally, we will also convert csv to geojson using http://togeojson.com/, and we'll map that as a github gist. We'll also grab a geojson file hosted on github gist and import it into cartodb.

#### Georectifying
Georectifying is the process of taking an image (whether it is of a historical map, chart, airphoto, or whatever) and manipulating its geometry so that it matches a geographic projection. Think of it like this: you take your handdrawn map, and use pushpins to pin down known locations on your map to a globe. As you pin, your image stretches and warps. Traditionally, this has not been an easy thing to do, if you are new to GIS. In recent years, the curve has flattened significantly. In this exercise, we'll grab an image, upload it to the Harvard Library MapWarper service, and then export it as a tileset which can be used in other mapping programs.

1. Get a historical map. I like the Fire Insurance plans from the [Gatineau Valley Historical Society](http://www.gvhs.ca/research/maps-fire-insurance.html); I'm sure you can find others to suit your interests.
2. Right-click, save as.... grab a copy. Save it somewhere handy.
3. Go to [Harvard World MapWarp](http://warp.worldmap.harvard.edu/) and sign up for an account. Then login.
4. Go to the upload screen: <br> ![Imgur](http://i.imgur.com/bmNCzg6.png)
5. Fill in as much of the metadata as you can. Then select your map from your computer, and upload it.
6. On the next page, click 'rectify'. <br> ![Imgur](http://i.imgur.com/yULDRQR.jpg)
7. Pan and zoom both maps until you're sure you're looking at the same area in both. Double click in a map, select the pencil icon, and click on a point (location) you are sure you can match in the other window. Then click on the other map window, select the pencil, and then click on the same point. The 'add control point' button below and between both maps will light up. Click on this to confirm that this is a control point you want. Do this at least three times; the more times you can do it, the better the map warp.
8. Having selected your control points, click on 'warp image'.
9. You can now click on the 'export' panel, and get the URL for your georectified image in a few different formats. If you clicked on the KML option, a google map window will open [like so](https://maps.google.com/maps?q=http://warp.worldmap.harvard.edu/maps/4152.kml&output=classic&dg=feature). For many webmapping applications, the Tiles (Google/OSM scheme): Tiles Based URL is what you want. You'll get a URL like this: ```http://warp.worldmap.harvard.edu/maps/tile/4152/z/x/y.png```   Save that info. You'll need it later.

You have now georectified a map. Let's use that map as a base layer in [Palladio](http://palladio.designhumanities.org/#/)

1. We need some place data for Palladio. Here's what I'm using <br> ![Imgur](http://i.imgur.com/vTEiRxh.png) Note how I've formatted this data. I'll be copying and pasting it into Palladio. (For more on how to input geographic data into Palladio, see [this tutorial](http://hdlab.stanford.edu/doc/scenario-point-to-point.pdf).
2. Go to [Palladio](http://palladio.designhumanities.org/). Hit 'start' then 'upload spreadsheet or csv'. In the box, paste in your data.
3. Click on 'map'. Under 'places', select 'coordinates'. Then, click 'add new layer'. In the popup, beside 'Choose one of Palladio default layers or create a new one.', select 'custom'. This is where you're going to paste it that tiles based URL from the map warper. Paste it in, but replace the ```/z/x/y``` part with ```{z}/{x}/{y}```. Click add.

Congratulations! You've georectified a map, and used it as a base layer for a visualization of some point data. Here are some [notes on using a georectified map with the CartoDB service](https://gist.github.com/shawngraham/a49a9834984ae0792345).

![Imgur](http://i.imgur.com/0gCjh5X.jpg)

### Advanced map-making in a web page

The [leaflet.js](http://leafletjs.com/) library allows you to create quite nice interactive maps in a web-browser, that are also mobile friendly. Here, we'll build a map that uses our georectified map as the base layer (rather than as an image overlay). I won't go into the details, but rather will provide you enough guidance to get going. The documentation for Leaflet is quite extensive, and many other tutorials abound.

1. create a new github repository for this exercise. Create a new branch called ```gh-pages```. We will be putting our html on the gh-pages branch, so that github.io can serve us up the webpage when we're done.
2. Go to the [leaflet quick-start tutorial](http://leafletjs.com/examples/quick-start.html) and read through it carefully. In essence, you create a webpage that draws its scripts and its styling from the leaflet.js source. That way, the browser knows how to render all the geographic information you're about to give it. Do you see where leaflet is calling on geographic information? This bit: 

```javascript
L.tileLayer('http://{s}.tiles.mapbox.com/v3/MapID/{z}/{x}/{y}.png', {
    attribution: 'Map data &copy; <a href="http://openstreetmap.org">OpenStreetMap</a> contributors, <a href="http://creativecommons.org/licenses/by-sa/2.0/">CC-BY-SA</a>, Imagery © <a href="http://mapbox.com">Mapbox</a>',
    maxZoom: 18
}).addTo(map); 
```
is calling on a background layer from the mapbox service. We can slot our mapwarper url in there! The other bits of code that create callouts, polygons, and so on, are all using decimal degrees to locate the drawn elements on top of that map. For this exercise, you could use the coordinates that we used in the Palladio exercise above.

Click on the [example map for the quickstart guide](http://leafletjs.com/examples/quick-start-example.html), and then right-click > view source. Copy the source code, and create a new html document in your gh-pages branch. Paste the code in, and change it appropriately. Using our Ottawa Fireinsurance, I created [this map](http://shawngraham.github.io/exercise/leaflet-ottawa.html). Right click and view my page source to see what I changed up.  Now: you could keep the basic mapbox service base map, and render the Ottawa Fire Insurance map as an overlay [reference documentation](http://leafletjs.com/reference.html#imageoverlay). Or you could do a series of overlays, showing the change in the city over time. My favourite example of a leaflet-powered historical map visualization is the [Slave Revolt in Jamaica project](http://revolt.axismaps.com/) by Vincent Brown. 

What would an interactive map visualization of your data do to how you tell the story? Sketch out some ideas in your notebook. 

(*further reading* Here's a nice piece on using [Tilemill](https://medium.com/@ArianKatsimbras/tilemill-c886a3ccba6a) by Arian Katsimbras to make beautiful maps.)

----

## exercise 9
### Text Analysis in R

I would suggest, before you try this, that you look at the walkthrough for exercise 3, and that you become familiar with R. Then, you can try [this tutorial](http://onepager.togaware.com/TextMiningO.pdf), starting at page 3. On that page, the author tells you to create a folder called /corpus/text, and to fill it with text files you'd like to analyse. So why not grab some of the materials you collected in module 2? The problem is, where is this folder supposed to go? In R studio, find out where your working director is by typing

``` getwd() ```

in the console. Then, you can create the /corpus/text folder & subfolder at that location. Alternatively, you can set the working directory to wherever you like like so:

``` setwd("C://my-working-folder//") ``` on a pc, or ``` setwd("~/my-working-folder/") ``` on a mac.

Then, to get going, you'd need

``` install.packages("tm") ```
``` library(tm) ``` 

You can then work through the entire pdf, or jump ahead to page 37 to see what the completed script would look like (here's [my version using the CND again](/text-analysis-cnd.R). Makes notes of what you find. Google any error messages you find to try to figure out a solution.

## exercise 10
### QGIS

There are many excellent tutorials around concerning how to get started with GIS. Our own library, in the [MADGIC centre](https://www.library.carleton.ca/contact/service-points/maps-data-and-government-information-centre) has tremendous resources and I would encourage you to speak with the map librarians before embarking on any *serious* mapping projects. In the short term, the historian [Fred Gibbs](http://fredgibbs.net/) has an excellent series on using the open source GIS platform *QGIS* to make and map historical data.

For this exercise, I would recommend you try Gibbs' first tutorial,

['Making a map with QGIS'](http://fredgibbs.net/tutorials/making-a-map-with-qgis/)

...and then, try georectifying a historical map and adding it to your GIS:

['Using historica maps with qgis'](http://fredgibbs.net/tutorials/using-historic-maps-with-qgis/)
