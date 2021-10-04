# Pewlett Hackard Analysis

## Overview of Pewlett Hackard Analysis

The purpose of the current analysis was to assist an HR analyst at Pewlett Hackard to develop an employee database in SQL and subsequently, to provide information from this employee database that would help the company prepare for an upcoming wave of employee retirements. An entity relationship diagram (ERD) was first generated to model a database design for all available data on employees in the form of six CSV files. Subsequently a database was then created in Postgres SQL using pgAdmin 4 and the six CSV files were imported. The purpose of the current analysis was to generate several tables and lists providing the total number of retiring employees and their titles and the employees eligible for a mentorship program to assist with transitioning newly hired employees. 

## Resources
- Data Sources: PH-EmployeeDB -- Postgres SQL database
- Software: Postgres SQL 11.13.2 and pgAdmin4

## Results

-  A Retirement Titles table was created to identify all employees born between 1952-1955. The Retirement Titles table contained 133,776 records and revealed duplicate entries because of people's promotions over the years. Below is a sample of the first 10 records in this table:

![image](https://user-images.githubusercontent.com/85533099/135701862-8c07900f-37d5-4114-9182-d7779f4a6cbb.png)

- A Unique Titles table was created next to further hone the results of the table generated above and retrieve the most recent title of each employee. This permitted a more accurate number of the total number of retiring employees, i.e., 90,398 employees.  Below is a sample of the first 10 records in this table:
 
![image](https://user-images.githubusercontent.com/85533099/135701877-23b9f641-96ae-463b-adf0-dd612d8f2f26.png)

- A Retiring Titles table was created to obtain summary data of the total number of employees by title that will be retiring. This table provides the most concise snapshot into the "silver tsunami" that is anticipated to occur at Pewlett Hackard. Engineers at multiple levels comprise  45,397 of the total number of retiring employees, while 57,668 of retiring employees hold "Senior" titles. Below is the table containing this information:

![image](https://user-images.githubusercontent.com/85533099/135701887-60343304-38f9-461b-9623-b3aafec8f188.png)

- A Mentorship Eligibility table was created to generate a list of current employees born in 1965 who would be eligible to participate in a mentorship program to assist with transitioning newly-hired employees. This table contains a total of 1,549 employees. Below is a sample of the first 10 records in this table:

![image](https://user-images.githubusercontent.com/85533099/135702770-c82108f8-1c0f-46e9-9da7-7159882fba9a.png)


## Summary

### How many roles will need to be filled as the "silver tsunami" begins to make an impact?

As indicated above, the current analysis reveals that a total of 90,398 roles will need to be filled as the "silver tsunami" begins to make an impact:

  - Senior Engineers (29,414) and Senior Staff (28,254) are the top two groups anticipated to retire followed by the next two groups, i.e., Engineers (14,222) and Staff (12,243)
  
  - Technique Leaders (4,502) and Assistant Engineers (1,761) are two groups with a significantly lower number of employees anticipated to retire when compared to the numbers above, but still are indicative of rather large numbers 
 
  - Only two Managers are slated to retire 
  
  - As stated above, Pewlett Hackard will experience a major loss of 45,397 total engineers at multiple levels, i.e., Senior Engineers, Engineers, and Assistant Engineers
  
  - Additionally, 57,668 of retiring employees hold "Senior" titles, which signifies a significant loss of the workforce who hold leadership positions. 

### Are there enough qualified, retirement-ready employees in the departments to mentor the next generation of Pewlett Hackard employees?

According to the current analysis, there are only 1,549 employees who are born in the year 1965 who would be eligible to participate in a mentorship program to assist with transitioning newly-hired employees. This is a dramatically low number and signifies that Pewlett Hackard appears to be suffering from a lack of enough qualified, retirement-ready employees to mentor the next generation of Pewlett Hackard employees if the criteria to be a mentor only involves those born in the year 1965. 

### Additional insights

Due to the concerning numbers obtained in the current analysis, some further analyses were conducted to better help Pewlett Hackard understand the impact of the "silver tsunami" by department. 

(1) A Retirement Departments table was created to add department names into the above list of retiring employees by title. Below is a sample of the first 10 records of this table:

![image](https://user-images.githubusercontent.com/85533099/135736452-18e3717d-0f10-467e-a796-c512b9c32232.png)

(2) A query was conducted to identify the total number of employees retiring by department:

![image](https://user-images.githubusercontent.com/85533099/135786161-dcf11253-e4b3-4be1-9e6d-473af97164a3.png)

  - According to the above query output, we see that the departments most dramatically affected by the "silver tsunami" will be (1) Development, which will be losing 24,245 employees; (2) Production, which will be losing 21,782 employees; and (3) Sales, which will be losing 14,304 employees. The other departments will still be losing a large number of employees as well, but these three departments are anticipated to be the most drastically affected. 

(3) Another query was conducted to identify the total number of retiring employees by title within each department:

![image](https://user-images.githubusercontent.com/85533099/135737042-2601daa7-b95b-42e3-a7e6-9a14868c4d92.png)

  - The above query output can be further parsed into separate lists that can be distributed to the department managers of each department within Pewlett Hackard. It is hoped that, by viewing this list of the number of employees retiring per title, the department managers can have a better understanding of which roles will need to be filled and they can prepare for recruitment of new employees. This might be a good first step towards beginning the daunting task of preparing for the "silver tsunami" when we see the numbers in this way versus a more general list just depicting employees by title that was created above with the Retiring Titles table.  


