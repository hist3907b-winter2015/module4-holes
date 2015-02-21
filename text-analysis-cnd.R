setwd("~/path/to/your/workingfolder")
#http://onepager.togaware.com/TextMiningO.pdf

#get data
library(RCurl)
x <- getURL("https://raw.githubusercontent.com/shawngraham/exercise/gh-pages/CND.csv")
documents <- read.csv(text = x, col.names=c("Article_ID", "Newspaper Title", "Newspaper City", "Newspaper Province", "Newspaper Country", "Year", "Month", "Day", "Article Type", "Text", "Keywords"),
                      colClasses=rep("character", 3), sep=",", quote="")

myCorpus <- Corpus(VectorSource(documents$Text))

install.packages("tm")
library(tm)

# preparing the corpus
toSpace <- content_transformer(function(x, pattern) gsub(pattern, " ", x))
myCorpus <- tm_map(myCorpus, toSpace, "/|@|\\|")

myCorpus <- tm_map(myCorpus, content_transformer(tolower))
# remove punctuation
myCorpus <- tm_map(myCorpus, removePunctuation)
# remove numbers
myCorpus <- tm_map(myCorpus, removeNumbers)
# remove stopwords
myCorpus <- tm_map(myCorpus, removeWords, stopwords ("english"))
# remove whitespace
myCorpus <- tm_map(myCorpus, stripWhitespace)

toString <- content_transformer(function(x, from, to) gsub(from, to, x))

myCorpus <- tm_map(myCorpus, toString, "specific transform", "ST")
myCorpus <- tm_map(myCorpus, toString, "other specific transform", "OST")

#install.packages("SnowballC")
#library(SnowballC)
myCorpus <- tm_map(myCorpus, stemDocument)

#create document 
myDtm <- DocumentTermMatrix(myCorpus)

inspect(myDtm[1:5, 1000:1005])

#check size
dim(myDtm)

#explore
findFreqTerms(myDtm, lowfreq=100)
findAssocs(myDtm, "place", corlimit=0.33)
findAssocs(myDtm, "canada", corlimit=0.33)
findAssocs(myDtm, "america", corlimit=0.33)

freq <- sort (colSums (as.matrix(myDtm)), decreasing=TRUE)
wf <- data.frame(word=names(freq), freq=freq)

library(ggplot2) 
p <- ggplot(subset(wf, freq>200), aes(word, freq))
p <-p + geom_bar(stat="identity")
p <-p + theme (axis.text.x=element_text(angle=45, hjust=1))
p

library(wordcloud)
wordcloud(names(freq), freq, min.freq=200, colors=brewer.pal(6, "Dark2"))
