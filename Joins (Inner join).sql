Select * from employees;

SELECT 
    COUNT(distinct first_name)
FROM
    employees;
   

SELECT 
    *
FROM
    employees
WHERE
    first_name IS NULL;
    
select count(*)
from salaries WHERE salary>=100000;

select count(*)
from dept_manager;

SELECT 
    first_name, COUNT(first_name) AS name_count
FROM 
    employees
GROUP BY first_name
order by first_name;


SELECT 
    salary, COUNT(emp_no) AS emp_with_same_salary
FROM
    salaries
WHERE
    salary > 80000
GROUP BY salary
ORDER BY salary;


CREATE TABLE departments_dup

(

    dept_no CHAR(4) NULL,

    dept_name VARCHAR(40) NULL

);

DELETE FROM departments_dup

WHERE

    dept_no = 'd002'; 
    
    
    INSERT INTO departments_dup(dept_no) VALUES ('d010'), ('d011');
    
    
    table departments_dup;
    table dept_manager_dup;
    
    select M.dept_no, M.emp_no, D.dept_name
     from 
     dept_manager_dup M
     inner Join 
     departments_dup D ON M.dept_no = D.dept_no
     order by M.dept_no;
     
     select 
     e.emp_no,
     e.first_name,
     e.last_name,
     dm.dept_no,
     e.hire_date
     FROM
     employees e
    inner join
     dept_manager dm ON e.emp_no = dm.emp_no;
     
     