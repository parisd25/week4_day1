--Hello World SQL Query, SELECT all from the actor table
SELECT *
FROM actor;


--Query for First_name and last_name in the actor table
SELECT First_name,last_name
FROM actor;

--Query for first_name that eqeuals Nick using the WHERE clause
SELECT first_name, last_name
FROM actor
WHERE first_name = 'Nick';

-- Query for first_name that equals to Nick using the LIKE and WHERE clauses
SELECT first_name, last_name
FROM actor
WHERE first_name LIKE 'Nick'

--Query for all the first_names that start with 'J' using LIKE and WHERE clauses
SELECT first_name, actor_id
FROM actor
WHERE first_name LIKE 'J%'

--Query for all first names that start with K and have 2 letters after k using LIKE and WHERE clauses
SELECT first_name, actor_id
FROM actor
WHERE first_name LIKE 'K__';

--Query for all first_name data that starts with K and ends with th
--USING the LIKE and WHERE clauses. -- Using BOTH wildcard % and underscore _
SELECT first_name, last_name, actor_id
FROM actor
WHERE first_name LIKE 'K__%th';

--Explore Data with SELECT all Query (Sqecific to changing into the new table)
SELECT *
FROM payment;

--Comparing operators are:
--Greater Than (>) -- Less Than or Equals(<=)
--Not Equa; (<>)

-- Query for data that shows customers who paid
--An amount Greater than $2
SELECT customer_id, amount
FROM payment
WHERE amount > 2.00;

--Query for data that shows customers who paid
-- An amount LESS than $7.99;
SELECT customer_id, amount
FROM payment 
WHERE amount < 7.99;

--Query for data that shows who paid
--An amount LESS than or EQUAL to 7.99
SELECT customer_id, amount
FROM payment 
WHERE amount <= 7.99;

---Query for data that shows customers who paid
--an amount GREATER than or EQUAL to $2.00
--in ASCENDING order
SELECT customer_id, amount
FROM payment
WHERE amount >= 2.00
ORDER BY amount ASC;

--Query for data that shows customers who paid
--an amount BETWEEN $2.00 and $7.99
--using the BETWEEN with the AND clause
SELECT customer_id, amount
FROM payment
WHERE amount BETWEEN 2.00 AND 7.99;

--Query for data shows customers who paid
--an amount NOT EQUAL to $0.00
--Ordered in DESCENDING Order
SELECT customer_id, amount
FROM payment
WHERE amount <> 0.00
ORDER BY amount DESC;

--Query to display the COUNT of the amounts equal to $11.99
SELECT amount, COUNT(amount)
FROM payment
WHERE - $11.99
GROUP BY amount;

--SQL Aggregations => SUM(), AVG(), COUNT(), MIN(), MAX()

--Query to display sum of amounts paid that are greater than $5.99
SELECT SUM(amount)
FROM payment
WHERE AMOUNT > 5.99;

--Query to display the average of amounts paid that are greater than $5.99
SELECT AVG(amount)
FROM payment
--WHERE amount > 0.00; 5.99

-- Query to display the count of amounts paid under 7.99;
SELECT COUNT(amount)
FROM payment
WHERE amount < 7.99;

--Query to display the count of DISTINCT amounts paid that are greater than 5.99
SELCT COUNT(DISTINCT amount)
FROM payment
WHERE amount > 5.99;

--Query to display the min amount greater than 7.99
SELCT MIN(amount) AS Min_Num_Payments
FROM payment
WHERE amount > 7.99;

--Query to display the max amount greater than 7.99
SELECT MAX(amount) AS Max_payment
FROM payment
WHERE amount > 7.99;

--Query to display all amounts (quick demo of group by)
SELECT amount
FROM payment
WHERE amount = 7.99;

--Query to display different amounts
--and  count the amounts
SELECT amount, COUNT (amount)
FROM payment
GROUP BY amount
ORDER BY amount;

--Query to display customer_ids with the summed amounts for each customer_id
SELECT customer_id, SUM(amount) AS sum_amount
FROM payment
GROUP BY customer_id
ORDER BY total_spent DESC;

--Query to display customer_ids with summed amounts for each customer_id
--Seperaate example
SELECT customer_id, COUNT(amount) AS payment_num
FROM payment
GROUP BY customer_id
ORDER BY customer_id DESC;

-- Query to explore the data inside of the customer Table
SELECT *
FROM customer;


-- SQL HAVING clause

--Query to display customer_ids that show up more than 5 times(if available)
--Group by the customer's email

SELECT COUNT(customer_id),  email
FROM customer
GROUP BY email
HAVING COUNT(customer_id) > 0;

--Query to displaying emails with first_name "Lisa"
SELECT first_name, email
FROM customer
WHERE first_name LIKE 'LISA';