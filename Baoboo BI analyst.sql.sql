-- QUESTION 1 - Select all the male customers from outside Nairobi.

SELECT gender,town
FROM customer
WHERE town NOT IN ('Nairobi') AND gender = 'Male';

-- QUESTION 2 - Select all the customers with an extra column containing their age 
-- when they joined. Name this column AgeWhenJoining.

SELECT martcustomerid,EXTRACT(YEAR FROM AGE(joiningdate,dateofbirth))
AS Agewhenjoining
FROM customer;

-- QUESTION 3 - Using the table above, 
-- calculate the average customer age when joining. Use a sub-query

SELECT ROUND(AVG(Agewhenjoining),0) AS Average_age
FROM (SELECT martcustomerid,EXTRACT(YEAR FROM AGE(joiningdate,dateofbirth)) 
AS Agewhenjoining
FROM customer) AS agetable;

-- QUESTION 4 - Still using the same table, 
-- calculate the average, maximum, and minimum customer age when joining per gender.

SELECT gender,ROUND(AVG(Agewhenjoining),0) AS Average_age,MAX(Agewhenjoining) 
AS max_age,MIN(Agewhenjoining) AS min_age
FROM(
SELECT EXTRACT(YEAR FROM AGE(joiningdate,dateofbirth)) 
AS Agewhenjoining,gender
FROM customer
) AS agetable
	GROUP  BY gender;

-- QUESTION 5 - Select the 100 customers who generated the most sales.
-- Show their MartCustomerId, Town, and the number of sales each of them generated

SELECT C.martcustomerid,town,SUM(martloanid) AS Num_sale
FROM customer C, sales S
WHERE C.martcustomerid = S.martcustomerid
GROUP BY C.martcustomerid,town
ORDER BY Num_sale DESC
LIMIT 100;

-- QUESTION 6 - How many customers have no sale? Show only the number of customers

SELECT COUNT(C.martcustomerid)
FROM customer C
LEFT JOIN sales S
ON C.martcustomerid = S.martcustomerid
WHERE S.martcustomerid IS NULL ;

-- QUESTION 7 - Select all the Sales table with an extra column that displays 1 when 
-- the ProductSubCategory is 'M-KOPA 4' and 0 for all the other ones. Call it IsMkopa4.

SELECT *, Case when productsubcategory like 'M-KOPA 4%' THEN 1 ELSE 0 END 
AS IsMkopa4
FROM sales;

-- -- QUESTION 8 -Select all the Sales table with an extra column that shows the loan 
-- number for each customer: 1 if it's the customer's first sale, 2 if it's 
-- -- the customer's second sale etc. Call it SaleNumber.

SELECT *, CASE WHEN Salecategory = 1 THEN 'FirstSale' ELSE 'Othersale' END AS salenumber
FROM (
SELECT *, ROW_NUMBER() OVER (PARTITION BY MartCustomerId ORDER BY   DateOfSale ASC) 
AS salecategory
FROM sales
) AS topping;



