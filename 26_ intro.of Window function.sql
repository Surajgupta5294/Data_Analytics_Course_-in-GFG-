" Introduction _of _Window_ Function"

Window functions in SQL allow you to perform calculations across a set of table rows that are related to the current row.
   Unlike aggregate functions, which return a single value for a group of rows, 
    window functions return a value for each row while still considering other rows in the partition.


" Key Features of Window Functions"
     They do not group rows into a single output like aggregate functions (SUM(), AVG(), etc.).
       They operate over a window of rows defined using the OVER() clause.
        Each row retains its original identity while having additional computed values.


"Basic Syntax"

<window_function> (expression) OVER (
    PARTITION BY column_name 
    ORDER BY column_name
)
    PARTITION BY: Divides the result set into partitions (similar to GROUP BY, but without collapsing rows).
      ORDER BY: Defines the order of rows within each partition.
        OVER(): Specifies the window over which the function operates.


"Types of Window Functions"
1. Ranking Functions
    Assign ranks to rows within a partition.
     Function	Description
      RANK()	Assigns a rank with gaps for duplicate values.
       DENSE_RANK()	Assigns a rank without gaps.
        ROW_NUMBER()	Assigns a unique row number.
          NTILE(n)	Divides rows into n equal parts.


Example:

SELECT 
    employee_id, 
    department, 
    salary, 
    RANK() OVER (PARTITION BY department ORDER BY salary DESC) AS rank
FROM employees;

2. Aggregate Window Functions
        Apply aggregate functions (SUM, AVG, MIN, MAX, COUNT) without collapsing rows.
Example:
        SELECT 
    employee_id, 
    department, 
    salary, 
    SUM(salary) OVER (PARTITION BY department) AS total_salary
   FROM employees;
   
   
 3. Value-Based Window Functions
      Access data from other rows relative to the current row.
        Function	Description
         LAG()	Gets the previous row’s value.
          LEAD()	Gets the next row’s value.
           FIRST_VALUE()	Gets the first value in the window.
            LAST_VALUE()	Gets the last value in the window.
Example:  
         SELECT 
    employee_id, 
    department, 
    salary, 
    LAG(salary) OVER (PARTITION BY department ORDER BY salary) AS prev_salary
     FROM employees;


