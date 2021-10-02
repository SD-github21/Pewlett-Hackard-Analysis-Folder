# Pewlett Hackard Analysis

## Overview of Pewlett Hackard Analysis

The purpose of the current analysis was to assist an HR analyst at Pewlett Hackard to prepare for an upcoming wave of retirements from staff members. An entity relationship diagram (ERD) was first generated to map out an database design to hold all available data on employees in the form of six CSV files. Subsequently a database was then created in Postgres SQL using pgAdmin 4 and the six CSV files were imported. The purpose of the current analysis was to generate two lists comprised of (1) the number of retiring employees grouped by their titles and (2) the employees eligible for a mentorship program to assist with mentoring newly hired employees. 

## Resources
- Data Sources: PH-EmployeeDB -- Postgres SQL database
- Software: Postgres SQL 11.13.2 and pgAdmin4

## Results

- A Retirement Titles table was created that contains all employees born between 1952-2955. This table contained 133,776 records and revealed duplicate entries because of people having been promoted over the years. Below is a sample of the first 10 records in this table:

![image](https://user-images.githubusercontent.com/85533099/135701453-29128c74-fd99-4e8e-aeee-b3734b07e23e.png)

- (2) A Unique Titles table was created next to further hone the results of the table generated above and retrieve the most recent title of each employee. This table contained a list of unique records
 
![image](https://user-images.githubusercontent.com/85533099/135701608-ecd742ca-7748-48d4-bf9f-61763760ff22.png)


