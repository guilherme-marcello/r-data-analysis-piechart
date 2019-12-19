library(dplyr)
library(lubridate)
events <- readRDS("events_past_year.rds")
events[,c("year","year_month")] <- c(format(events$local_date,"%Y"), format(events$local_date,"%Y-%m"))
groupedevents <- group_by(events,year, year_month) 
dffinal <- summarise(groupedevents,count_events=n())
per_year <- aggregate(dffinal$count_events,by=list(year=dffinal$year),FUN=sum)
pie(dffinal$count_events,dffinal$year_month,main="Count of events per month")
pie(per_year$x,per_year$year,main="Count of events per year")

  
