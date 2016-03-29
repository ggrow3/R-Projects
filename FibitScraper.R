
#install.packages("fitbitScraper")
library("fitbitScraper")
# just reading from file to hide pw and to make .Rmd document to work...
account = read.csv("account.csv")
cookie <- login(email=account$username, password=account$password) 
df <- get_daily_data(cookie, what="steps", start_date="2016-03-03",end_date = "2016-03-11"
                       )  
library("ggplot2")  
ggplot(df) + geom_bar(aes(x=time, y=steps, fill=steps), stat="identity") + 
  xlab("") +ylab("steps") + 
  theme(axis.ticks.x=element_blank(), 
        panel.grid.major.x = element_blank(), 
        panel.grid.minor.x = element_blank(), 
        panel.grid.minor.y = element_blank(), 
        panel.background=element_blank(), 
        panel.grid.major.y=element_line(colour="gray", size=.1), 
        legend.position="none") 


df <- get_daily_data(cookie, what="steps", start_date="2016-03-03",end_date = "2016-03-11"
)  
library("ggplot2")  
ggplot(df) + geom_bar(aes(x=time, y=steps, fill=steps), stat="identity") + 
  xlab("") +ylab("steps") + 
  theme(axis.ticks.x=element_blank(), 
        panel.grid.major.x = element_blank(), 
        panel.grid.minor.x = element_blank(), 
        panel.grid.minor.y = element_blank(), 
        panel.background=element_blank(), 
        panel.grid.major.y=element_line(colour="gray", size=.1), 
        legend.position="none") 

#ls(getNamespace("fitbitScraper"), all.names=TRUE)