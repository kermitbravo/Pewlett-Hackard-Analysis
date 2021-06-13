-- Create the retirement_titles table

SELECT e.emp_no,
       e.first_name,
       e.last_name,
       t.title,
       t.from_date,
       t.to_date INTO retirement_titles
FROM employees AS e
LEFT JOIN titles AS t ON e.emp_no = t.emp_no
WHERE e.birth_date BETWEEN '1952-01-01' AND '1955-12-31'
ORDER BY e.emp_no,
         t.title;

-- Check table

SELECT *
FROM retirement_titles;

-- Use Dictinct with Orderby to remove duplicate rows

SELECT DISTINCT ON (emp_no) emp_no,
                   first_name,
                   last_name,
                   title,
                   from_date,
                   to_date INTO unique_retirement_titles
FROM retirement_titles
ORDER BY emp_no ASC,
         to_date DESC;

-- Check table

SELECT *
FROM unique_retirement_titles;

-- Create table with number of employees by their most recent job title who are about to retire.

SELECT COUNT(*),
       title INTO retiring_titles
FROM unique_retirement_titles
GROUP BY 2
ORDER BY 1 DESC;

-- Check table

SELECT *
FROM retiring_titles;

-- Query to create a Mentorship Eligibility table that holds the employees who are eligible to participate in a mentorship program.

SELECT DISTINCT ON (e.emp_no) e.emp_no,
                   e.first_name,
                   e.last_name,
                   e.birth_date,
                   de.from_date,
                   de.to_date,
                   t.title INTO mentorship_eligibilty
FROM employees AS e
LEFT JOIN titles AS t ON e.emp_no = t.emp_no
INNER JOIN dept_emp as de ON e.emp_no = de.emp_no
WHERE de.to_date >= CURRENT_DATE
    AND birth_date between '1965-01-01' and '1965-12-31'
ORDER BY e.emp_no -- Check table

SELECT *
FROM mentorship_eligibilty