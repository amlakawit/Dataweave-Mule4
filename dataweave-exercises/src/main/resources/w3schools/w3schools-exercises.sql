USE w3schools;

-- 1. select all columns from the employees table

SELECT * FROM employees;

-- 2. Select only Firstnam, Lastname and Birthdate from the employees table

SELECT FirstName, LastName, BirthDate FROM employees;

-- 3. return number of records in order_details as number_of_rows

SELECT COUNT(*) AS number_of_rows FROM order_details;

-- 4. Display Unique countries in the customers table

SELECT DISTINCT Country FROM customers;

-- 5. return number of countries in customer table

SELECT 
	COUNT(DISTINCT Country) AS number_of_countires
FROM 
	customers;

-- 6. get records of customers from Germany

SELECT
	*
FROM
	customers
WHERE
	Country = 'Germany';
    
-- 6.1 count all customers from Germnay

SELECT
	COUNT(*)
FROM
	customers
WHERE
	Country = 'Germany';
    
-- 7 get products in the beverages and produce catagories

SELECT
	*
FROM
	categories
WHERE
	CategoryName IN('Beverages', 'Produce') ;
    
-- 7.1 how many products are there in the beverages and produces category
SELECT
	COUNT(*)
FROM
	categories
WHERE
	CategoryName IN('Beverages', 'Produce') ;
    
-- 8. Retrun all orders with order quantity between 5 and 10, from the order_details table
SELECT
	*
FROM
	order_details
WHERE
	Quantity  BETWEEN 5 AND 10;
    
-- 9. select all customers from Berlin, Germany

SELECT
	*
FROM
	Customers
WHERE
	Country = 'Germany' AND City = "Berlin" ;
    
-- 12 Per ProductID, get total ordered quantity, average ordered quantity per order, minimum and maximum ordered quantity and number of orders.
SELECT 
    ProductID, SUM(Quantity) AS total, avg(Quantity) as mean, count(*) as n_rows,
    min(Quantity) as min_Quantity, max(Quantity) as max_Quantity
FROM
    order_details
GROUP BY ProductID
ORDER BY ProductID;