-- Day 1: Basic SQL Queries
-- Topic: SELECT, WHERE, ORDER BY, LIMIT

-- Select all columns
SELECT * 
FROM employees;

-- Select specific columns
SELECT name, department
FROM employees;

-- Filter rows
SELECT name, salary
FROM employees
WHERE salary > 50000;

-- Sort results
SELECT name, salary
FROM employees
ORDER BY salary DESC;

-- Limit output
SELECT name, salary
FROM employees
ORDER BY salary DESC
LIMIT 5;
