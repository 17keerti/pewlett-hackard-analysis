# Pewlett Hackard Analysis

## Purpose

The purpose of this analysis is to determine the number of retiring employees per title, and identify employees who are eligible to participate in a mentorship program.

## Results

- Below is the list of retiring employees which was created by retriving emp_no, first_name, last_name from employes table and title from titles table. We filtered the data on birth_date to retrieve the employees who were born between 1952 and 1955. Then, order by the employee number.

![retiring titles](Resources/emp%20unique.png)

- After conducting the analysis it was found that there is currently a large number of employees of retirement age holding senior titles. Please refer to the Unique Titles count table below to see the number of employees by their most recent job title who are about to retire.

![retiring titles count](Resources/count%20with%20title.png)

- Below is the list of candidates who are eligible to participate in a mentorship program, and born between January 1, 1965 and December 31, 1965.

![mentorship eligibility](Resources/mentorship%20eligibility.png)

## Summary

- As the "silver tsunami" begins to make an impact, there are 72,458 roles that will need to be filled across 7 different categories in the organization.

- A total of 1,549 employees are eligible for mentorship program.

- We can query to find the number of employees by department name who are leaving the organisation.
