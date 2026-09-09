


-- 1. COMPLETE CHARACTER FUNCTION PRACTICE USING DUAL


SELECT UPPER('oracle') FROM dual;
SELECT LOWER('ORACLE') FROM dual;
SELECT INITCAP('oracle sql programming') FROM dual;
SELECT LENGTH('oracle') FROM dual;
SELECT LENGTH('data science') FROM dual;
SELECT SUBSTR('oracle',1,3) FROM dual;
SELECT SUBSTR('oracle',2,3) FROM dual;
SELECT SUBSTR('oracle',3) FROM dual;
SELECT SUBSTR('oracle',-3) FROM dual;
SELECT CONCAT('oracle','programming') FROM dual;
SELECT CONCAT('oracle ','programming') FROM dual;
SELECT REPLACE('hello world','world','oracle') FROM dual;
SELECT REPLACE('123-456-789','-','') FROM dual;
SELECT TRIM('   oracle   ') FROM dual;
SELECT LTRIM('   oracle') FROM dual;
SELECT RTRIM('oracle   ') FROM dual;
SELECT LTRIM('****oracle','*') FROM dual;
SELECT RTRIM('1230000','0') FROM dual;
SELECT LPAD('123',5,'0') FROM dual;
SELECT LPAD('oracle',7,'_') FROM dual;
SELECT RPAD('123',5,'0') FROM dual;
SELECT RPAD('oracle',10,'*') FROM dual;
SELECT ASCII('A') FROM dual;
SELECT CHR(65) FROM dual;



-- 2. COMPLETE CHARACTER FUNCTION PRACTICE USING HR.EMPLOYEES


-- UPPER
SELECT first_name, UPPER(first_name) AS upper_name
FROM hr.employees;

-- LOWER
SELECT first_name, LOWER(first_name) AS lower_name
FROM hr.employees;

-- INITCAP
SELECT first_name, INITCAP(first_name) AS initcap_name
FROM hr.employees;

-- LENGTH
SELECT first_name, LENGTH(first_name) AS name_length
FROM hr.employees;

-- SUBSTR - First 3 Characters
SELECT first_name, SUBSTR(first_name,1,3) AS first_3_characters
FROM hr.employees;

-- First Character
SELECT first_name, SUBSTR(first_name,1,1) AS first_character
FROM hr.employees;

-- Last 3 Characters
SELECT first_name, SUBSTR(first_name,-3) AS last_3_characters
FROM hr.employees;

-- CONCAT
SELECT first_name,
       last_name,
       CONCAT(first_name,last_name) AS concatenated_name
FROM hr.employees;

-- Full Name
SELECT first_name || ' ' || last_name AS full_name
FROM hr.employees;

-- REPLACE
SELECT first_name,
       REPLACE(first_name,'a','@') AS replaced_name
FROM hr.employees;

-- TRIM
SELECT first_name, TRIM(first_name) AS trimmed_name
FROM hr.employees;

-- LTRIM
SELECT first_name, LTRIM(first_name) AS left_trimmed_name
FROM hr.employees;

-- RTRIM
SELECT first_name, RTRIM(first_name) AS right_trimmed_name
FROM hr.employees;

-- LPAD Employee ID
SELECT employee_id,
       LPAD(employee_id,6,'0') AS formatted_employee_id
FROM hr.employees;

-- RPAD Employee Name
SELECT first_name,
       RPAD(first_name,15,'.') AS formatted_name
FROM hr.employees;

-- ASCII
SELECT first_name,
       ASCII(first_name) AS ascii_value
FROM hr.employees;


 
-- 3. COMPLETE NUMERIC FUNCTION PRACTICE USING DUAL

-- CEIL
SELECT CEIL(10.1) FROM dual;
SELECT CEIL(10.9) FROM dual;
SELECT CEIL(10) FROM dual;
SELECT CEIL(99.01) FROM dual;

-- FLOOR
SELECT FLOOR(10.1) FROM dual;
SELECT FLOOR(10.9) FROM dual;
SELECT FLOOR(10) FROM dual;
SELECT FLOOR(99.99) FROM dual;

-- MOD
SELECT MOD(10,3) FROM dual;
SELECT MOD(20,5) FROM dual;
SELECT MOD(11,2) FROM dual;
SELECT MOD(100,7) FROM dual;

-- ABS
SELECT ABS(-10.3) FROM dual;
SELECT ABS(-100) FROM dual;
SELECT ABS(100) FROM dual;
SELECT ABS(0) FROM dual;

-- POWER
SELECT POWER(2,3) FROM dual;-
SELECT POWER(5,2) FROM dual;
SELECT POWER(10,3) FROM dual;
SELECT POWER(2,0.5) FROM dual;
SELECT POWER(2,1/2) FROM dual;

-- SQRT
SELECT SQRT(2) FROM dual;
SELECT SQRT(16) FROM dual;
SELECT SQRT(25) FROM dual;
SELECT SQRT(100) FROM dual;



-- 4. COMPLETE NUMERIC FUNCTION PRACTICE USING HR.EMPLOYEES

-- CEIL
SELECT employee_id,
       salary,
       salary / 12 AS divided_salary,
       CEIL(salary / 12) AS ceil_value
FROM hr.employees;

-- FLOOR
SELECT employee_id,
       salary,
       salary / 12 AS divided_salary,
       FLOOR(salary / 12) AS floor_value
FROM hr.employees;

-- MOD
SELECT employee_id,
       MOD(employee_id,2) AS remainder
FROM hr.employees;

-- Even Employee IDs
SELECT employee_id,
       first_name
FROM hr.employees
WHERE MOD(employee_id,2) = 0;

-- Odd Employee IDs
SELECT employee_id,
       first_name
FROM hr.employees
WHERE MOD(employee_id,2) = 1;

-- ABS
SELECT employee_id,
       salary,
       ABS(salary - 10000) AS salary_difference
FROM hr.employees;

-- POWER
SELECT employee_id,
       salary,
       POWER(salary,2) AS salary_square
FROM hr.employees;

-- SQRT
SELECT employee_id,
       salary,
       SQRT(salary) AS salary_square_root
FROM hr.employees;



-- 5. FINAL PRACTICE SET - CHARACTER FUNCTIONS


SELECT UPPER('data engineering') FROM dual;
SELECT LOWER('DATA ENGINEERING') FROM dual;
SELECT INITCAP('oracle database administrator') FROM dual;
SELECT LENGTH('machine learning') FROM dual;
SELECT SUBSTR('artificial intelligence',1,10) FROM dual;
SELECT CONCAT('Oracle ','SQL') FROM dual;
SELECT REPLACE('hello python','python','oracle') FROM dual;
SELECT TRIM('    database    ') FROM dual;
SELECT LTRIM('00000500','0') FROM dual;
SELECT RTRIM('500000','0') FROM dual;
SELECT LPAD('500',8,'0') FROM dual;
SELECT RPAD('SQL',10,'.') FROM dual;
SELECT ASCII('A') FROM dual;
SELECT CHR(65) FROM dual;



-- 6. FINAL PRACTICE SET - NUMERIC FUNCTIONS


SELECT CEIL(25.01) FROM dual;
SELECT FLOOR(25.99) FROM dual;
SELECT MOD(25,4) FROM dual;
SELECT ABS(-999.50) FROM dual;
SELECT POWER(3,4) FROM dual;
SELECT SQRT(81) FROM dual;



-- 7. FINAL PRACTICE SET - HR.EMPLOYEES

-- UPPER
SELECT first_name,
       UPPER(first_name) AS upper_name
FROM hr.employees;

-- LOWER
SELECT first_name,
       LOWER(first_name) AS lower_name
FROM hr.employees;

-- INITCAP
SELECT first_name,
       INITCAP(first_name) AS initcap_name
FROM hr.employees;

-- LENGTH
SELECT first_name,
       LENGTH(first_name) AS name_length
FROM hr.employees;

-- SUBSTR
SELECT first_name,
       SUBSTR(first_name,1,3) AS first_3_characters
FROM hr.employees;

-- Full Name
SELECT first_name || ' ' || last_name AS full_name
FROM hr.employees;

-- Formatted Employee ID
SELECT employee_id,
       LPAD(employee_id,6,'0') AS formatted_id
FROM hr.employees;

-- Formatted Employee Name
SELECT first_name,
       RPAD(first_name,20,'.') AS formatted_name
FROM hr.employees;

-- CEIL Monthly Salary
SELECT employee_id,
       salary,
       CEIL(salary / 12) AS ceil_monthly_salary
FROM hr.employees;

-- FLOOR Monthly Salary
SELECT employee_id,
       salary,
       FLOOR(salary / 12) AS floor_monthly_salary
FROM hr.employees;

-- MOD
SELECT employee_id,
       MOD(employee_id,2) AS remainder
FROM hr.employees;

-- ABS
SELECT employee_id,
       salary,
       ABS(salary - 10000) AS difference_from_10000
FROM hr.employees;

-- POWER
SELECT employee_id,
       salary,
       POWER(salary,2) AS salary_square
FROM hr.employees;

-- SQRT
SELECT employee_id,
       salary,
       SQRT(salary) AS salary_square_root
FROM hr.employees;


