# Pewlett-Hackard-Analysis
## Overview
This project centers on helping a mock company, Pewlett-Hackard, update their methods for storing and utilizing data from Excel to a database system with SQL in order to learn how to make a database and utilize SQL. The project began with the creation of an Entity Relationship Diagram [ERD](https://github.com/MDaily7/Pewlett-Hackard-Analysis/blob/main/Images/EmployeeDB.png) that depicts the relationship between the tables that would be used to create the database (The ERD was generated with Quick Database Diagrams (DBD)). The tables were created in Postgres using the ERD as a roadmap for defining their relationships between one another, and the data for each table was imported from various CSVs. At this point, various queries were used to generate new tables from the existing ones to isolate particular portions of data. For example, a retirement_info table was created with a query isolating data from another table to only include employees within retirement age([retirement query](https://github.com/MDaily7/Pewlett-Hackard-Analysis/blob/main/Images/Retirement_info_query.PNG)). The final portion of this project was to create four new tables, one with retiring employees and their titles, one with retiring employees and only their most recent title, a third table with a count of the employees leaving by each title, and finally a table of current employees born in 1965 and therefore eligible for a mentorship program. The results and summary portion of this project will center around the final four tables created. 
## Results
* The first table created, retirement_titles, narrowed down the search for retiring employees, but it included duplicates as some employees have held multiple titles as displayed in [Retirement_Titles_Snapshot](https://github.com/MDaily7/Pewlett-Hackard-Analysis/blob/main/Images/retirement_titles_snapshot.png)
* The most recent titles of retiring employees were isolated in the second table, unique_titles. 
* The third table contains a count of the retiring employees by title, [retiring titles](https://github.com/MDaily7/Pewlett-Hackard-Analysis/blob/main/Data/retiring_titles.csv), in which you can see that a large amount of employees are expected to retire soon.
  * [Retiring Titles Count](https://github.com/MDaily7/Pewlett-Hackard-Analysis/blob/main/Images/retiring_titles_count.PNG) displays the total count of retiring employees and the query used to obtain this value. 
* The final table, mentorship_eligibility, contains the employees born in 1965 and therefore considered eligible to be mentors to new employees replacing the large number of retirees. 
  * [Mentor Count](https://github.com/MDaily7/Pewlett-Hackard-Analysis/blob/main/Images/eligible_mentors_count.png) displays the count of eligible mentors as well as the query used to obtain this value. 
## Summary
There are 72,458 positions that will need to be filled in the upcoming wave of retirement as can be seen above in Retiring Titles Count. However, there are only 1,549 employees eligible for the mentorship program (as seen above in the Mentor Count). It seems unlikely the mentorship program alone will be enough to train the next generation of Pewlett-Hackard employees. More information about the positions that need to be filled will be useful in selecting additional programs and methods for training new employees. For example, queries like the [Sales Retirement Query](https://github.com/MDaily7/Pewlett-Hackard-Analysis/blob/main/Images/sales_retirement_info.png) can provide us with tables of the retiring employees from each department, and a query like the [Sales Retirement Count Query](https://github.com/MDaily7/Pewlett-Hackard-Analysis/blob/main/Images/retiring%20from%20sales.png) can give us the count of employees retiring in each department. These tables and queries may prove very beneficial in the upcoming decisions that need to be made on how to train so many new recruits. 
## Resources
* Postgres 14.1
* [Quick DataBase Diagrams (DBD)](https://www.quickdatabasediagrams.com/)
* [Data](https://github.com/MDaily7/Pewlett-Hackard-Analysis/tree/main/Data)
* [Images](https://github.com/MDaily7/Pewlett-Hackard-Analysis/tree/main/Images)
* [Query Files](https://github.com/MDaily7/Pewlett-Hackard-Analysis/tree/main/Queries)




