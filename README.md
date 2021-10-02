# Pewlett Hackard Analysis

## Overview of Pewlett Hackard Analysis

The purpose of the current analysis was to assist an HR analyst at Pewlett Hackard to prepare for an upcoming wave of retirements from staff members. An entity relationship diagram (ERD) was first generated to map out an database design to hold all available data on employees in the form of six CSV files. Subsequently a database was then created in Postgres SQL using pgAdmin 4 and the six CSV files were imported. The purpose of the current analysis was to generate two lists comprised of (1) the number of retiring employees and their titles and (2) the employees eligible for a mentorship program to assist with transitioning newly hired employees. 

## Resources
- Data Sources: PH-EmployeeDB -- Postgres SQL database
- Software: Postgres SQL 11.13.2 and pgAdmin4

## Results

-  A Retirement Titles table was created to identify all employees born between 1952-1955. The Retirement Titles table contained 133,776 records and revealed duplicate entries because of people's promotions over the years. Below is a sample of the first 10 records in this table:

![image](https://user-images.githubusercontent.com/85533099/135701862-8c07900f-37d5-4114-9182-d7779f4a6cbb.png)

- A Unique Titles table was created next to further hone the results of the table generated above and retrieve the most recent title of each employee. This permitted a more accurate number of the total number of retiring employees, i.e., 90,398 employees.  Below is a sample of the first 10 records in this table:
 
![image](https://user-images.githubusercontent.com/85533099/135701877-23b9f641-96ae-463b-adf0-dd612d8f2f26.png)

- A Retiring Titles table was created to obtain summary data of the total number of employees by title that will be retiring. This table provides the most concise snapshot into the "silver tsunami" that is anticipated to occur at Pewlett Hackard. Pewlett Hackard will experience a major loss of 45,397 total engineers at multiple levels, i.e., Senior Engineers, Engineers, and Assistant Engineers. Additionally, 57,668 of retiring employees hold "Senior" titles, which signifies a significant loss of the workforce who hold leadership positions. Below is the table containing this information:

![image](https://user-images.githubusercontent.com/85533099/135701887-60343304-38f9-461b-9623-b3aafec8f188.png)

- A Mentorship Eligibility title was created to generate a list of current employees born in 1965 who would be eligible to participate in a mentorship program to assist with transitioning newly-hired employees. This table contains a total of 1,549 employees. Below is a sample of the first 10 records in this table:

![image](https://user-images.githubusercontent.com/85533099/135702770-c82108f8-1c0f-46e9-9da7-7159882fba9a.png)


## Summary

  - Senior Engineers (29,414) and Senior Staff (28,254) are the top two groups anticipated to retire followed by the next two groups, i.e., Engineers (14,222) and Staff (12,243)
  
  - Technique Leaders (4,502) and Assistant Engineers (1,761) are two groups with a significantly lower number of employees anticipated to retire when compared to the numbers above, but still are indicative of rather large numbers 
 
  - Only two Managers are slated to retire 


- As indicated above, the current analysis reveals that  

