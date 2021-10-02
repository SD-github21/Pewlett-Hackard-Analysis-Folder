# Pewlett Hackard Analysis

## Overview of Pewlett Hackard Analysis

The purpose of the current analysis was to assist an HR analyst at Pewlett Hackard to prepare for an upcoming wave of retirements from staff members. An entity relationship diagram (ERD) was first generated to map out an database design to hold all available data on employees in the form of six CSV files. Subsequently a database was then created in Postgres SQL using pgAdmin 4 and the six CSV files were imported. The purpose of the current analysis was to generate two lists comprised of (1) the number of retiring employees grouped by their titles and (2) the employees eligible for a mentorship program to assist with mentoring newly hired employees. 

## Resources
- Data Sources: PH-EmployeeDB -- Postgres SQL database
- Software: Postgres SQL 11.13.2 and pgAdmin4

## Results

-  A Retirement Titles table was created that contains all employees born between 1952-1955. Below is a sample of the first 10 records in this table:

![image](https://user-images.githubusercontent.com/85533099/135701862-8c07900f-37d5-4114-9182-d7779f4a6cbb.png)

- A Unique Titles table was created next to further hone the results of the table generated above and retrieve the most recent title of each employee. Below is a sample of the first 10 records in this table:
 
![image](https://user-images.githubusercontent.com/85533099/135701877-23b9f641-96ae-463b-adf0-dd612d8f2f26.png)

- A Retiring Titles was created to obtain summary data of the total number of employees by title that will be retiring. Below is the table containing this information:
- 
![image](https://user-images.githubusercontent.com/85533099/135701887-60343304-38f9-461b-9623-b3aafec8f188.png)

- The following four major points can be gleaned from examination of these tables:
  -  The Retirement Titles table contained 133,776 records and revealed duplicate entries because of people's promotions over the years, and therefore having multiple titles
