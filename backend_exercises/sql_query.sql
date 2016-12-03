SELECT emp.dept_id,
       count(*) AS count,
       sum(emp.salary) AS sum_of_salary
FROM
  (SELECT d.dept_id,
          e.salary
   FROM department d
   INNER JOIN employee e ON e.dept_id = d.dept_id)emp
GROUP BY (emp.dept_id)
