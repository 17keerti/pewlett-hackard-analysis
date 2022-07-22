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

