# Pewlett Hackard Analysis
## Overview
The purpose of this project is to help management determine the number of soon to be retiring employees by their title and identify the ones who are eligible to participate in a mentorship program. The first query created was to find employees born between January 1, 1952 and December 31, 1955 and sort them by their titles.  The next query retrieved the emp_no, first_name and last_name columns from the employees table and retrieved the title, from_date and to_date columns of the titles table. Both tables were joined on the primary key, filtered the data by birth_date and put the information into a new table.  For the next two parts of deliverable a unique_titles table was made to find the first occurrence of the emp_no in our new table by using the DISTINCT ON function and for the last part of the deliverable we did ORDER BY COUNT to show us the total number of each title from our unique_titles table that was made.   The second deliverable query was created that retrieved columns from our employees and dept_emp table, filtering the data on current employees born in between 1/1/65 and 12/31/65 then organized the order of the table by emp_no.  This last query gives us a list of elgible employees for the mentorship program. 

## Results
With the retirement_titles table we are able to see every eligible employee for retirement and how long they have worked at each position over the course of their career.

![](retiring_count.png) 

Fig 1: Our retiring_titles shows us the a majority of the employees of retirement age (37,350/90,398 = 41%) have senior titles


![](unique_titles.png)

Fig 2: The unique_titles table that was created is showing the most recent title for employees of retirement age.

![](mentorship_list.png)

Fig 3: This list is the employees that are eligible for the mentorship program.

## Summary
After running this analysis, I found that a little over 90,000 employees are eligible or will be reaching retirement age soon.  It is likely that these employee's will be leaving the company within the next 5 years.  This is a high number of employees that will be leaving a number of positions open.  Management has more than enough currently available employees that are eligible for the mentorship program for the various positions so that they can start looking for candidates to promote within.  If everything is timed correctly, positions can be filled and new employees trained prior to the senior employees leaving the company.

