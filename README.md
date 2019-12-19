# Data-Analysis-and-Visualization-of-R-events-Aug.2018 --- Aug.2019

all.R:
The variable "dat" received all data from the .rds file. Then I created a variable for each month of the year with the same information "dat" but filtered with its date limitation .
[for example, 2018 February: filter (.., local_date> = as.Date ("2018-02- 01 ") ... <= .. (" 02/28/2018 ")]

After that, I calculated the number of rows of each "subset". So it was simple: I created a vector with the labels for each month and created another with the calculated number of lines. After that, I put them both on a pie chart.

Same for years.


new_all.R:

The variable "events" received all data from the .rds file. Then I created two new columns, "year" and "year_month", which have the information "% Y" and "% Y-%m" from local_date, respectively. "groupedevents"  was created by grouping "events" data by "year" and "year_month" columns. The "dffinal" variable received the summarised "groupedevents" along a count function,n(). "per_year" variable was created from the aggregation of "dffinal$count_events" for each year with the sum function(to add all the count of events from the same year). After all, I just put the results on a pie chart.
