library(dplyr)
dat <- readRDS("events_past_year.rds")
View(dat$local_date)

View(august_18)

as.Date("2018-09-01")

august_18 <- filter(dat,local_date >=as.Date("2018-08-01") &  local_date <= as.Date("2018-08-31"))
september_18 <- filter(dat,local_date >=as.Date("2018-09-01") &  local_date <= as.Date("2018-09-30"))
october_18 <- filter(dat,local_date >=as.Date("2018-10-01") &  local_date <= as.Date("2018-10-31"))
november_18 <- filter(dat,local_date >=as.Date("2018-11-01") &  local_date <= as.Date("2018-11-30"))
december_18 <- filter(dat,local_date >=as.Date("2018-12-01") &  local_date <= as.Date("2018-12-31"))
january_19 <- filter(dat,local_date >=as.Date("2019-01-01") &  local_date <= as.Date("2019-01-31"))
february_19 <- filter(dat,local_date >=as.Date("2019-02-01") &  local_date <= as.Date("2019-02-28"))
march_19 <- filter(dat,local_date >=as.Date("2019-03-01") &  local_date <= as.Date("2019-03-31"))
april_19 <- filter(dat,local_date >=as.Date("2019-04-01") &  local_date <= as.Date("2019-04-30"))
may_19 <- filter(dat,local_date >=as.Date("2019-05-01") &  local_date <= as.Date("2019-05-31"))
june_19 <- filter(dat,local_date >=as.Date("2019-06-01") &  local_date <= as.Date("2019-06-30"))
july_19 <- filter(dat,local_date >=as.Date("2019-07-01") &  local_date <= as.Date("2019-07-31"))
august_19 <- filter(dat,local_date >=as.Date("2019-08-01") &  local_date <= as.Date("2019-08-31"))


all_months <- c("August 18", "September 18", "October 18", "November 18", "December 18", "January 19", "February 19", "March 19", "April 19", "May 19", "June 19", "July 19", "August 19")
all_rows <- c(nrow(august_18),nrow(september_18),nrow(october_18),nrow(november_18),nrow(december_18),nrow(january_19),nrow(february_19),nrow(march_19),nrow(april_19),nrow(may_19),nrow(june_19),nrow(july_19),nrow(august_19))
per_month <- data.frame(Month_Year=all_months, count_of_events=all_rows)

View(per_month)
pie(per_month$count_of_events,per_month$Month_Year, main="Count of events per month")

year_18 <- filter(dat,local_date >=as.Date("2018-01-01") &  local_date <= as.Date("2018-12-31"))
year_19 <- filter(dat,local_date >=as.Date("2019-01-01") &  local_date <= as.Date("2019-12-31"))

per_year <- data.frame(Year=c("2018","2019"), Count_of_Events=c(nrow(year_18),nrow(year_19)))

pie(per_year$Count_of_Events,per_year$Year,main="Count of events per year")
