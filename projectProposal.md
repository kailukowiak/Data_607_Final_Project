# Recommender Systems:

Our project will endeavor to find a more accurate way to recommend songs to listeners from the song player [WSDM](http://www.wsdm-conference.org/2018/call-for-participants.html).

This is based of this [Kaggle Competition](https://www.kaggle.com/c/kkbox-music-recommendation-challenge).


## Group Members:
The members of our group are: 
* Kai Lukowiak
* Michael D’Acampora
* James Kuruvilla

## Motivation:
We are motivated to do this analysis because of the everlasting fame and riches we could gain from winning a [Kaggle](kaggle.com) competition. The skills we will learn while making this recommender system will also set us up for some of the most common jobs in data science. 


## Data Sources:

Our data sources will be from Kaggle and my extension [www.kkbox.com](https://www.kkbox.com/). 
The data is spread across train, test, members, songs, and extra song info .csv files.
We understand that it is necessary to have data from two types of data sources. To solve this, we could either scrape data on the cities or languages or, with the instructors consent, simply import this data into a Neo4J database. 

## Methodology:

### Algorithms: 
We plan on using a combination of matrix factorization and cosine distance calculations as well as dummy variables for time of listening.

### Languages:
While we all love R, we will try to use PySpark as the data sets are extremely large and are of a high dimension. As such, a framework for handling large data sets is desirable. 
