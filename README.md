# Data-Analysis-and-Visualization-of-R-events-Aug.2018 --- Aug.2019

The variable "dat" received all data from the .rds file. Then I created a variable for each month of the year with the same information "dat" but filtered with its date limitation .
[for example, 2018 February: filter (.., local_date> = as.Date ("2018-02- 01 ") ... <= .. (" 02/28/2018 ")]

After that, I calculated the number of rows of each "subset". So it was simple: I created a vector with the labels for each month and created another with the calculated number of lines. After that, I put them both on a pie chart.

Same for years.
