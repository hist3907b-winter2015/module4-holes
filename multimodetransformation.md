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

The data for this exercise comes from Peter Holdsworth’s MA dissertation research, which Peter shared on Figshare here. Peter was interested in the social networks surrounding ideas of commemoration of the centenerary of the War of 1812, in 1912. He studied the membership rolls for women’s service organization in Ontario both before and after that centenerary. By making his data public, Peter enables others to build upon his own research in a way not commonly done in history. (Peter can be followed on Twitter at https://twitter.com/P_W_Holdsworth).
