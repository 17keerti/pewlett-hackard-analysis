-- Deliverable 1

-- The Number of Retiring Employees by Title
Select e.emp_no, 
       e.first_name, 
       e.last_name,
       t.title,
       t.from_date, 
       t.to_date
Into retirement_titles
From employees as e
Inner Join titles as t
On e.emp_no = t.emp_no
WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
Order By e.emp_no;


-- Use Dictinct with Orderby to remove duplicate rows
Select Distinct On (emp_no) emp_no,
                    first_name, 
                    last_name,
                    title
INTO unique_titles
From retirement_titles
Where to_date = '9999-01-01'
Order By emp_no, to_date Desc;


-- Display data from unique_titles table
Select * from unique_titles;


-- Count number of titles 
Select Count(emp_no), title
Into retiring_titles
From unique_titles
Group by title
Order by Count Desc;


-- Deliverable 2

-- Find Employees Eligible for the Mentorship Program
Select Distinct On (e.emp_no) e.emp_no, 
       e.first_name, 
	   e.last_name,
	   e.birth_date,
	   de.from_date,
	   de.to_date,
 	   t.title
Into mentorship_eligibility
From employees as e
Inner Join dept_emp as de
On e.emp_no = de.emp_no
Inner Join titles as t
On e.emp_no = t.emp_no
Where (de.to_date = '9999-01-01')
      And (e.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
Order by e.emp_no;
