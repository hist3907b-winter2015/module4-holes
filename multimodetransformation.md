# Transforming 2-mode network data to 1-mode

Networks can be composed of all sorts of things. Trains, busses, Uber, metro - all of these can be combined into a 'transportation' network. Books, authors, editors, funders, censors, sponsors - a publishing network. Students, profs, classes, universities - an education network. Anytime you have more than one kind of _thing_ (however defined) in your network, you formally have a bipartite (or tripartite, and so on, depending on the number of things) network. Visualizing such a network as nodes and edges can be a useful heuristic exercise. 

*But.*

If you are doing this in Gephi, and you run some of Gephi's metrics (statistics) on a bipartite network, your results may not mean what you think they mean. The metrics, the algorithms assume 1-mode networks. Thus, running them on 2-mode (or more!) networks will result in ....issues.

![inigo](http://i.imgur.com/OlcOnrp.jpg)

Now in truth, it's not quite so clear-cut to simply say, 'convert every bimodal network to unimodal before running any stats' (see [Scott's discussion here](http://www.scottbot.net/HIAL/?p=41158)), but as a rule of thumb for when you're getting started, you'll be on much firmer methodological grounds if you transform your mutlimodal networks into a series of 1-mode networks. So convert every bimodal network to unimodal before running any statistics on your network(s).

Thus, this network: <br>
ProfA -> student1   (where -> is a directed relationship, 'teaches')<br>
ProfA -> student2 <br>
ProfB -> student3 <br>
ProbB -> student1 <br>

...can be transformed into *two* networks, one where profA is connected to profB by virtue of a shared student (student1). That is, profs connected by students; and the inverse: students connected by profs. You could then run your metrics, and get two different perspectives on the educational dynamics of this particular university.

In this exercise, you'll transform a network of women and social organizations into two 1-mode networks.

## The data

The data for this exercise comes from a former Carleton public history MA student, Peter Holdsworth. Peter lodged [a copy of his MA research on Figshare](http://figshare.com/authors/Peter_Holdsworth/402385). Peter was interested in the social networks surrounding ideas of commemoration of the centenerary of the War of 1812, in 1912. He studied the membership rolls for women’s service organization in Ontario both before and after that centenerary. By making his data public, Peter enables others to build upon his own research in a way not commonly done in history. (Peter can be followed on Twitter at [https://twitter.com/P_W_Holdsworth]([https://twitter.com/P_W_Holdsworth])).

Right-click and 'save link' to get [the data files you'll need for this exercise](https://dl.dropboxusercontent.com/u/37716296/network-workshop.zip)

## Configuring Gephi

There is a plugin for Gephi that we will use to transform our network. Open Gephi. Across the top of Gephi in the menu ribbon you’ll see *File Workspace View Tools Window Plugins Help*. 

To get and install the plugin, select *Tools >> Plugins* (The top level menu item 'Plugins' is empty and not used - a useful reminder that Gephi is still in *beta*).

In the popup, under ‘available plugins’ look for ‘MultimodeNetworksTransformation’. Tick this box, then click on Install. Follow the instructions, ignore any warnings, click on ‘finish’. You may or may not need to restart Gephi to get the plugin running. If you suddenly see on the far right of ht Gephi window a new tab besid ‘statistics’, ‘filters’, called ‘Multimode Network’, then you’re ok.

![image](http://electricarchaeologist.files.wordpress.com/2013/10/slide1.jpg)

## Importing the data

+ Under ‘file’, select -> New project.
+ On the data  laboratory tab, select Import-spreadsheet, and in the pop-up, make sure to select under ‘as table: EDGES table. Select women-orgs.csv.  Click ‘next’, click finish.

On the data table, have ‘edges’ selected. This is showing you the source and the target for each link (aka ‘edge’). This implies a directionality to the relationship that we just don’t know – so down below, when we get to statistics, we will always have to make sure to tell Gephi that we want the network treated as ‘undirected’. More on that below.

![image](http://electricarchaeologist.files.wordpress.com/2013/10/slide2.jpg)

Loading your csv file, step 1.

![image](http://electricarchaeologist.files.wordpress.com/2013/10/slide3.jpg)

Loading your CSV file, step 2

+ Click on ‘copy data to other column’. Select ‘Id’. In the pop-up, select ‘Label’. You now have your edges labelled.

+ Just as you did above, now import NODES (Women-names.csv)
+ making sure you're on the Nodes page in the data laboratory, copy ID to Label to that your nodes are labelled.

(nb. You can always add more attribute data to your network this way, as long as you always use a column called Id so that Gephi knows where to slot the new information. Make sure to never tick off the box labeled ‘force nodes to be created as new ones’.)

## Prepping your data

We're now going to manipulate the data a bit in order to get it ready for the transformation. In this data, we have women, and we have organizations. We need to tell Gephi which rows are the organizations. In Peter's original data input phase, he decided to use a unique number for each woman so that he would minimize data entry errors (misspellings and so on), as well as control for the use of maiden and married names. Miss Eliza Smith might become, at a later date, Mrs. George Doe. In Peter's scheme, this is the same person (remember in module 3 in the TEI exercise how we dealt with such issues?).


+ On your NODES page in the data laboratory, add new column, make it boolean. Call it ‘organization’

![boolean](http://electricarchaeologist.files.wordpress.com/2013/10/slide4.jpg)

+ In the Filter box, type [a-z], and select Id – this filters out all the women. (What would you have to do to filter out the organizations? Remember, this is a regex search!)
+ Tick off the check boxes in the ‘organization’ columns.

![filter](http://electricarchaeologist.files.wordpress.com/2013/10/slide5.jpg)

(I note a typo in the image above, 'a-b'. that should be, 'a-z').

Save this as ```women-organizations-2-mode.gephi```.

*Pro tip*: always export your data from gephi (file >> export) in .net or .graphml or .gefx format as the .gephi format (which is your only option under file >> save as) is unstable. That is, sometimes gephi won't read .gephi files! I did say this was *beta* software).

## Transforming the network

At this point, you have a two mode network in gephi. You could click on the 'overview' panel and play with some of the layouts and begin to form impressions about the nature of your data. Remember though any metrics calculated at this point would be largely spurious. Let's transform this two-mode network so that we can explore how women are connected to other women via shared membership.

![image](http://electricarchaeologist.files.wordpress.com/2013/10/slide6.jpg)

On the multimode networks projection tab,
1. click load attributes.
2. in ‘attribute type’, select organization
4. in left matrix, select ‘false – true’ (or ‘null – true’)
5. in right matrix, select ‘true – false’. (or ‘true – null’) (do you see why this is the case? what would selecting the inverse accomplish?)
6. select ‘remove edges’ and ‘remove nodes’.
7. Once you hit ‘run’, organizations will be removed from your bipartite network, leaving you with a single-mode network. hit ‘run’.
8. save as ```women-to-women-network.gephi``` *and* export as ```women-to-women.net```

*NB* if your nodes data table is blank, your filter might still be active. make sure the filter box is clear. You should be left with a list of women (ie, a list of nodes where the identiers are numbers, per Peter's schema).

At this point, you could re-start Gephi and reload your ‘women-organizations-2-mode.gephi’ file and re-run the multimode networks projection so that you are left with an organization to organization network. Do this, and save and export with appropriate file names.

## Exploring this network

Peter's data has a number of *attributes* describing it, including the membership year. So let's see what this network of women looks like in 1902.

+ Under the filters tab at the right hand side of the Gephi interface, select ‘attributes – equal’ and then drag ‘1902’ to the queries box.
+ In ‘pattern’ enter [0-9] and tick the ‘use regex’ box.
+ click ok, click ‘filter’.

You should now have a network with 188 nodes and 8728 edges, showing the women who were active in 1902.

Let’s learn something about this network. Under the statistics tab at the right hand side of the Gephi interface,
+ Run ‘avg. path length’ by clicking on ‘run’
+ In the pop up that opens, select ‘undirected’ (as we know nothing about directionality in this network; we simply know that two women were members of the same organization at the same time. Note also that if the same pair were members of the more than one organziation, the weight of their connection will be corresponding stronger).
+ click ok.
+ run ‘modularity’ to look for subgroups. make sure ‘randomize’ and ‘use weights’ are selected. Leave ‘resolution’ at 1.0

We selected 'average path length' because one of the byproducts of this routine is 'betweeness centrality'. We're making an assumption here that a woman who has a high betweeness centrality score was in a position to affect information flow in 1902 society. Modularity looks at similar patterns of connections to cluster women who have more-or-less similar connections into groups.

Let’s visualize what we’ve just learned.

+ On the ‘partition’ tab, over on the left hand side of the ‘overview’ screen, click on nodes, then click the green arrows beside ‘choose a partition parameter’.
+ Click on ‘choose a partition parameter’. Scroll down to modularity class. The different groups will be listed, with their colours and their % composition of the network.
+ Hit ‘apply’ to recolour your network graph.

Let’s resize the nodes to show off betweeness-centrality (to figure out which woman was in the greatest position to influence flows of information in this network.) 

+ Click ‘ranking’. (It's on the left hand side of the interface, beside 'partition' and just below 'overview'.
+ Click ‘nodes’.
+ Click the down arrow on ‘choose a rank parameter’. Select ‘betweeness centrality’.
+ Click the red diamond. This will resize the nodes according to their ‘betweeness centrality’.
+ Click ‘apply’.

Now, down at the bottom of the middle panel, you can click the large black ‘T’ to display labels. Do so. Click the black letter ‘A’ and select ‘node size’.

Mrs. Mary Elliot-Murray-Kynynmound and Mrs. John Henry Wilson should now dominate your network (if you go back to the original data zip, you'll be able to find Peter's key to figure out who's who). Who were these ladies? What organizations were they members of? Who were they connected to? To the archives!

Congratulations! You’ve imported historical network data into Gephi, transformed it, manipulated it, and run some analyses. Play with the settings on ‘preview’ in order to share your visualization as svg, pdf, or png.

Now go back to your original gephi file, and recast it as organizations to organizations via shared members, to figure out which organizations were key in early 20th century Ontario… make appropriate notes in your open notebook.
