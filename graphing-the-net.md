# Graphing the Net

It may be that you are interested in the structure of links on the internet. Perhaps you'd like to see how a particular topic plays out across Wikiepedia. What you'd have to do is a _web-crawl_. Here are quick instructions for setting up a webcrawl, which will follow every link on a page to a particular depth, and echo the results through your browser into Gephi for visualization and analysis.

## You will need:

+ The Chrome browser with [Site Spider Mk II](https://chrome.google.com/webstore/detail/site-spider-mark-ii/gedjofgioahckekhpgknhchelbpdogok) installed
+ [Gephi ](http://gephi.org)
+ [HTTP Graph Generator Plugin for Gephi](https://marketplace.gephi.org/plugin/http-graph/)

*NB* You can install the graph generator plugin from _within_ Gephi by selecting 'Tools' on the main menu ribbon at the top of the screen (and *not* the 'plugins' item). Then, within 'Tools', select 'plugins' and then 'available plugins'. Search for 'HTTPGraph'. Tick off the box and install it. When finished, close and restart Gephi with a new project.

In Chrome, go to the settings page (the 'hamburg' icon at the extreme right of the address bar, or by typing ```chrome://settings/``` in the address bar. Click on 'show advanced settings' at the bottom of the page. Then, scroll down to 'Network' and click on 'change proxy settings'. 

In the popup that opens, click the 'connections' tab, and then the 'LAN Settings' button. *Another* popup will open. Select the 'Use a proxy server for your LAN'. Enter:

```127.0.0.1``` for the address, and ```8088``` for the port. Now, whenever you go to a website, the info will be echoed through that port. We need to set Gephi up to hear what's being passed.

Open Gephi. Start a new project. Go to 'file' then 'generate' then 'http graph'. A pop up will open, asking you to specify a port. Input ```8088```. Accept the defaults, and press OK. On the overview panel, nodes will begin to appear when you go to a URL in Chrome. 

Go back to Chrome. Put in the URL that you want to start your scrape on, eg ```http://en.wikipedia.org/wiki/Archaeology```. Then click the SiteSpider II button in your toolbar. Site spider will open a popup asking you how far and how deep you want to scrape; set the parameters accordingly. Hit 'go' and then flip over to your gephi window. You'll see the network begin to populate! Let it run as long as you want. When you're finished, save your network by 'exporting' it (on the file menu) as any other format than .gephi. I say this because I find sometimes the .gephi format is unstable. You can then filter your network for resources or html pages or what have you. I suggest deleting the node labelled 127.0.0.1 because that's your computer and it will throw off any metrics you choose to calculate. 

For an example of why you might want to do all this, and what you might find, see ['Shouting Into the Void?'](http://electricarchaeology.ca/2014/05/01/shouting-into-the-void/) a piece where I tried to understand the shape of the archaeological web.
