# Pewlett-Hackard-Analysis

The analysis was done to foresee the retirement of a large number of Pewlett Hackard employees. This was done by looking through an employee database to see how many workers were retiring from each job title and which workers qualified to take part in a mentorship program.

## Purpose and Background
In this project, we create databases using QuickDBD and Schemas and create SQL queries to respond to the retirement process of the company.We used PostreSQL and pgAdmin to create our tables to analyze our final decision.

During this project, we started using the ERD diagram to find the relationship between our csv files. 
![EmployeeDB](https://user-images.githubusercontent.com/108194577/184561192-9c74104b-4519-4308-86d0-8d6a6e952be9.png)


## Results

### Retirement titles table 
In our retirements titles we loo for the eployees that were born betweeen January, 1952 and December 31, 1955 and we had 333,776 rows of employees. We found out that we had several people duplicated in our list. 

### Unique Titles Table
In this table, we  had 72458 rows affected and we take out the duplicates from ourtable showing the complete name plus their title.

### Retiring_titles Table
In this table we can see the count of each employee by their titles.
We had 7 rows including all the titles that are about to retire.

### Mentorship elegibility table
In this table, we wanted to see how many people were eligible to mentorship program.
We had 1549 rows meaning the number of people eligible for this program.


## Summary

How many roles will need to be filled as the "silver tsunami" begins to make an impact?
As we can see in the table below, the retirment titles of this Silver Tsunami.

![retiring_titles](https://user-images.githubusercontent.com/108194577/184561948-4ab41dd1-2097-479a-999e-4ac35799818b.PNG)

Also you can find a more accurate table within the count of titles per department. Here you can see the title and the department that will be impacted in this retirement tsunami. 

![count_titles_per_department](https://user-images.githubusercontent.com/108194577/184562020-7346a9cc-b1e5-46de-8b7c-17f12055de41.PNG)

I also determine that you will need to cover 29,415 Senior Engineers due to the Silver Tsunami this year. In the image below, you will be able to see the count of the Senior Engineer in our retirement database.
![retirement_seniorengineer](https://user-images.githubusercontent.com/108194577/184562332-d24cc615-93a5-47d7-9316-507ef274be29.PNG)


Are there enough qualified, retirement-ready employees in the departments to mentor the next generation of Pewlett Hackard employees?
In the table below, you can see the qualified staff to mentor the next generation of Pewlett Hackard employees.
In this table we look for the employees with the hire dates between '1965-01-01' AND '1965-12-31' and that are still part of the company. The idea is to mentor the next generation before leaving the company.

![mentorship_elegibility](https://user-images.githubusercontent.com/108194577/184562162-5960c5b5-fb38-469f-b275-52699c1a846c.PNG)
