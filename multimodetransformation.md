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


Save this as ‘women-organizations-2-mode.gephi’.
