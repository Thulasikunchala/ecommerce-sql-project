CREATE DATABASE FLIPKART;
USE FLIPKART;


CREATE TABLE CUSTOMERS
(
CUSTOMER_ID INT(20), 
CUSTOMER_NAME VARCHAR(30), 
STATE VARCHAR(25)
);

ALTER TABLE CUSTOMERS
ADD PRIMARY KEY (CUSTOMER_ID);


CREATE TABLE PRODUCTS
(
PRODUCT_ID INT(20) PRIMARY KEY, 
PRODUCT_NAME VARCHAR(30),
PRICE DOUBLE(10, 2),
COGS DOUBLE(10, 2),
CATEGROY VARCHAR(25),
BRAND VARCHAR(30)
);

CREATE TABLE SALES (
    ORDER_ID INT(20) PRIMARY KEY,
    ORDER_DATE DATE,
    CUSTOMER_ID INT(20),
    ORDER_STATUS VARCHAR(20),
    PRODUCT_ID INT(20),
    QUANTITY INT(20),
    PRICE_PER_UNIT DOUBLE(10, 2),
    FOREIGN KEY (CUSTOMER_ID) REFERENCES CUSTOMERS(CUSTOMER_ID),
    FOREIGN KEY (PRODUCT_ID) REFERENCES PRODUCTS(PRODUCT_ID)
);


DESC SALES;


CREATE TABLE SHIPPINGS
(
SHIPPING_ID INT(20),
ORDER_ID INT(20),
SHIPPING_DATE DATE,
RETURN_DATE DATE,
SHIPPING_PROVIDERS VARCHAR(55), 
DELIVERY_STETUS VARCHAR(55),
FOREIGN KEY (ORDER_ID) REFERENCES SALES(ORDER_ID)

);

CREATE TABLE PAYMENTS
(
PYMENT_ID INT(20),
ORDER_ID INT(20),
PYMENT_DATE DATE,
PYMENT_STETUS VARCHAR(55),
FOREIGN KEY (ORDER_ID) REFERENCES SALES(ORDER_ID)
);


INSERT INTO CUSTOMERS VALUES 
(101, 'Amit Sharma', 'Delhi'),
(102, 'Priya Verma', 'Mumbai'),
(103, 'Ravi Kumar', 'Chennai'),
(104, 'Sneha Reddy', 'Hyderabad'),
(105, 'Karan Patel', 'Ahmedabad'),
(106, 'Divya Singh', 'Kolkata'),
(107, 'Manoj Joshi', 'Bangalore'),
(108, 'Neha Mehta', 'Pune'),
(109, 'Suresh Nair', 'Kochi'),
(110, 'Anita Das', 'Bhubaneswar'),
(111, 'Rahul Roy', 'Ranchi'),
(112, 'Pooja Shah', 'Surat'),
(113, 'Vinay Gupta', 'Jaipur'),
(114, 'Isha Khanna', 'Lucknow'),
(115, 'Arjun Rao', 'Vizag'),
(116, 'Simran Gill', 'Chandigarh'),
(117, 'Nikhil Jain', 'Indore'),
(118, 'Meera Iyer', 'Coimbatore'),
(119, 'Yash Dubey', 'Bhopal'),
(120, 'Kavya Kapoor', 'Nagpur');

SELECT * FROM CUSTOMERS;

DESC PRODUCTS;

INSERT INTO PRODUCTS VALUES 
(201, 'iPhone 13', 70000.00, 50000.00, 'Electronics', 'Apple'),
(202, 'Samsung Galaxy S21', 60000.00, 45000.00, 'Electronics', 'Samsung'),
(203, 'Dell XPS 13', 95000.00, 70000.00, 'Electronics', 'Dell'),
(204, 'Nike Shoes', 4000.00, 2500.00, 'Footwear', 'Nike'),
(205, 'Adidas T-shirt', 1200.00, 700.00, 'Clothing', 'Adidas'),
(206, 'Levi\'s Jeans', 2500.00, 1500.00, 'Clothing', 'Levi\'s'),
(207, 'Canon EOS M50', 55000.00, 40000.00, 'Electronics', 'Canon'),
(208, 'Sony Headphones', 3000.00, 1800.00, 'Electronics', 'Sony'),
(209, 'LG Refrigerator', 35000.00, 27000.00, 'Appliances', 'LG'),
(210, 'Whirlpool Washing Machine', 25000.00, 18000.00, 'Appliances', 'Whirlpool'),
(211, 'Puma Sneakers', 3000.00, 2000.00, 'Footwear', 'Puma'),
(212, 'Samsung TV', 45000.00, 32000.00, 'Electronics', 'Samsung'),
(213, 'Apple Watch', 30000.00, 21000.00, 'Electronics', 'Apple'),
(214, 'HP Pavilion', 60000.00, 45000.00, 'Electronics', 'HP'),
(215, 'ASUS ZenBook', 70000.00, 52000.00, 'Electronics', 'ASUS'),
(216, 'Tata Salt', 25.00, 15.00, 'Grocery', 'Tata'),
(217, 'Fortune Oil', 180.00, 100.00, 'Grocery', 'Fortune'),
(218, 'Parle-G Biscuits', 10.00, 5.00, 'Grocery', 'Parle'),
(219, 'Dabur Honey', 250.00, 150.00, 'Grocery', 'Dabur'),
(220, 'Haldiram Snacks', 120.00, 60.00, 'Grocery', 'Haldiram');

SELECT * FROM PRODUCTS;


DESC SALES;

INSERT INTO SALES VALUES 
(301, '2023-01-05', 101, 'Delivered', 201, 1, 70000.00),
(302, '2023-01-10', 102, 'Returned', 202, 1, 60000.00),
(303, '2023-01-15', 103, 'Cancelled', 203, 1, 95000.00),
(304, '2023-01-20', 104, 'Delivered', 204, 2, 4000.00),
(305, '2023-01-25', 105, 'Delivered', 205, 3, 1200.00),
(306, '2023-02-01', 106, 'Delivered', 206, 1, 2500.00),
(307, '2023-02-05', 107, 'Returned', 207, 1, 55000.00),
(308, '2023-02-10', 108, 'Delivered', 208, 2, 3000.00),
(309, '2023-02-12', 109, 'Delivered', 209, 1, 35000.00),
(310, '2023-02-14', 110, 'Delivered', 210, 1, 25000.00),
(311, '2023-02-16', 111, 'Delivered', 211, 1, 3000.00),
(312, '2023-02-20', 112, 'Delivered', 212, 1, 45000.00),
(313, '2023-02-25', 113, 'Delivered', 213, 1, 30000.00),
(314, '2023-03-01', 114, 'Cancelled', 214, 1, 60000.00),
(315, '2023-03-03', 115, 'Delivered', 215, 1, 70000.00),
(316, '2023-03-05', 116, 'Delivered', 216, 10, 25.00),
(317, '2023-03-07', 117, 'Delivered', 217, 5, 180.00),
(318, '2023-03-09', 118, 'Delivered', 218, 20, 10.00),
(319, '2023-03-11', 119, 'Delivered', 219, 2, 250.00),
(320, '2023-03-13', 120, 'Returned', 220, 4, 120.00);


SELECT * FROM SALES;

DESC SHIPPINGS;

INSERT INTO SHIPPINGS VALUES 
(401, 301, '2023-01-06', NULL, 'BlueDart', 'Delivered'),
(402, 302, '2023-01-11', '2023-01-20', 'DTDC', 'Returned'),
(403, 303, NULL, NULL, NULL, 'Cancelled'),
(404, 304, '2023-01-21', NULL, 'Delhivery', 'Delivered'),
(405, 305, '2023-01-26', NULL, 'Ecom Express', 'Delivered'),
(406, 306, '2023-02-02', NULL, 'BlueDart', 'Delivered'),
(407, 307, '2023-02-06', '2023-02-12', 'DTDC', 'Returned'),
(408, 308, '2023-02-11', NULL, 'Delhivery', 'Delivered'),
(409, 309, '2023-02-13', NULL, 'Ecom Express', 'Delivered'),
(410, 310, '2023-02-15', NULL, 'BlueDart', 'Delivered'),
(411, 311, '2023-02-17', NULL, 'DTDC', 'Delivered'),
(412, 312, '2023-02-21', NULL, 'Delhivery', 'Delivered'),
(413, 313, '2023-02-26', NULL, 'Ecom Express', 'Delivered'),
(414, 314, NULL, NULL, NULL, 'Cancelled'),
(415, 315, '2023-03-04', NULL, 'BlueDart', 'Delivered'),
(416, 316, '2023-03-06', NULL, 'DTDC', 'Delivered'),
(417, 317, '2023-03-08', NULL, 'Delhivery', 'Delivered'),
(418, 318, '2023-03-10', NULL, 'Ecom Express', 'Delivered'),
(419, 319, '2023-03-12', NULL, 'BlueDart', 'Delivered'),
(420, 320, '2023-03-14', '2023-03-20', 'DTDC', 'Returned');



SELECT * FROM SHIPPINGS;

DESC PAYMENTS;

INSERT INTO PAYMENTS VALUES 
(501, 301, '2023-01-05', 'Paid'),
(502, 302, '2023-01-10', 'Refunded'),
(503, 303, '2023-01-15', 'Cancelled'),
(504, 304, '2023-01-20', 'Paid'),
(505, 305, '2023-01-25', 'Paid'),
(506, 306, '2023-02-01', 'Paid'),
(507, 307, '2023-02-05', 'Refunded'),
(508, 308, '2023-02-10', 'Paid'),
(509, 309, '2023-02-12', 'Paid'),
(510, 310, '2023-02-14', 'Paid'),
(511, 311, '2023-02-16', 'Paid'),
(512, 312, '2023-02-20', 'Paid'),
(513, 313, '2023-02-25', 'Paid'),
(514, 314, '2023-03-01', 'Cancelled'),
(515, 315, '2023-03-03', 'Paid'),
(516, 316, '2023-03-05', 'Paid'),
(517, 317, '2023-03-07', 'Paid'),
(518, 318, '2023-03-09', 'Paid'),
(519, 319, '2023-03-11', 'Paid'),
(520, 320, '2023-03-13', 'Refunded');


SELECT * FROM PAYMENTS;
SHOW TABLES;

#1.	Retrieve all products along with their total sales revenue from completed orders.
DESC SALES;
DESC PRODUCTS;

SELECT P.PRODUCT_ID, P.PRODUCT_NAME, SUM(S.QUANTITY * S.PRICE_PER_UNIT) AS TOTAL
FROM PRODUCTS P 
JOIN SALES S 
ON P.PRODUCT_ID = S.PRODUCT_ID
WHERE S.ORDER_STATUS = 'Delivered'
GROUP BY P.PRODUCT_ID, P.PRODUCT_NAME;

#2.	List all customers and the products they have purchased, showing only those who have ordered more than two products.
SELECT * FROM CUSTOMERS;
SELECT * FROM PRODUCTS;
SELECT * FROM SALES;

SELECT C.CUSTOMER_ID, C.CUSTOMER_NAME, P.PRODUCT_NAME
FROM CUSTOMERS C 
JOIN SALES S 
ON  C.CUSTOMER_ID = S.CUSTOMER_ID
JOIN PRODUCTS P
ON  S.PRODUCT_ID = P.PRODUCT_ID
WHERE ORDER_STATUS = 'Delivered' AND   C.CUSTOMER_ID IN (
                                                          SELECT CUSTOMER_ID
                                                          FROM SALES
                                                          GROUP BY CUSTOMER_ID
														  HAVING COUNT(DISTINCT PRODUCT_ID) > 2
    );


#3.	Find the total amount spent by customers in 'MUMBAI' who have ordered products priced greater than 10,000.
SELECT * FROM CUSTOMERS;
SELECT * FROM SALES;
SELECT * FROM ORDERS;

SELECT SUM(S.QUANTITY * S.PRICE_PER_UNIT)
FROM CUSTOMERS C 
JOIN SALES S 
ON C.CUSTOMER_ID = S.CUSTOMER_ID
WHERE C.STATE = 'MUMBAI' AND S.PRICE_PER_UNIT>10000 ; 

#4.	Retrieve the list of all orders that have not yet been shipped.

USE flipkart;
SELECT * FROM SALES;
SELECT * FROM SHIPPINGS;
SELECT * FROM PRODUCTS;

SELECT *
FROM SALES
WHERE ORDER_ID NOT IN (
    SELECT ORDER_ID
    FROM SHIPPINGS
    WHERE SHIPPING_DATE IS NOT NULL
);

#5.	Find the average order value per customer for orders with a quantity of more than 5.
SELECT * FROM SHIPPINGS;
SELECT * FROM SALES;
SELECT * FROM CUSTOMERS;
SELECT * FROM PRODUCTS;

SELECT C.CUSTOMER_ID, C.CUSTOMER_NAME,AVG(S.QUANTITY*S.PRICE_PER_UNIT) AS RESULT
FROM SALES S
JOIN CUSTOMERS C 
ON S.CUSTOMER_ID = C.CUSTOMER_ID
WHERE S.QUANTITY>5
GROUP BY C.CUSTOMER_ID;

SELECT CUSTOMER_ID,AVG(QUANTITY * PRICE_PER_UNIT) AS RESULT
FROM SALES
WHERE QUANTITY > 5
GROUP BY CUSTOMER_ID;

#6.	Get the top 5 customers by total spending on 'Accessories'.
SELECT C.CUSTOMER_ID,C.CUSTOMER_NAME,  SUM(S.QUANTITY * S.PRICE_PER_UNIT) AS TOTAL_SPENDING
FROM CUSTOMERS C 
JOIN SALES S 
ON C.CUSTOMER_ID = S.CUSTOMER_ID
JOIN PRODUCTS P 
ON S.PRODUCT_ID = P.PRODUCT_ID
WHERE P.CATEGROY = 'Electronics'
GROUP BY C.CUSTOMER_ID,C.CUSTOMER_NAME
ORDER BY TOTAL_SPENDING DESC
LIMIT 5
;


#7.	Retrieve a list of customers who have not made any payment for their orders.
SELECT * FROM SHIPPINGS;
SELECT * FROM SALES;
SELECT * FROM CUSTOMERS;
SELECT * FROM PRODUCTS;
SELECT * FROM PAYMENTS;
SHOW TABLES;


SELECT DISTINCT C.CUSTOMER_ID, C.CUSTOMER_NAME
FROM CUSTOMERS C
JOIN SALES S ON C.CUSTOMER_ID = S.CUSTOMER_ID
WHERE S.ORDER_ID NOT IN (SELECT ORDER_ID
						FROM PAYMENTS
						WHERE PYMENT_STETUS = 'Paid'
);


#8.	Find the most popular product based on total quantity sold in 2023.
SELECT * FROM SHIPPINGS;
SELECT * FROM SALES;
SELECT * FROM CUSTOMERS;
SELECT * FROM PRODUCTS;

SELECT P.PRODUCT_ID, P.PRODUCT_NAME, SUM(S.QUANTITY) AS TOTAL_QUANTITY_SOLD
FROM SALES S
JOIN PRODUCTS P 
ON S.PRODUCT_ID = P.PRODUCT_ID
WHERE YEAR(S.ORDER_DATE) = 2023
GROUP BY P.PRODUCT_ID, P.PRODUCT_NAME
ORDER BY TOTAL_QUANTITY_SOLD DESC
LIMIT 1;


#9.	List all orders that were cancelled and the reason for cancellation (if available).
SELECT S.ORDER_ID , P.PRODUCT_NAME
FROM SALES S 
JOIN PRODUCTS P
ON S.PRODUCT_ID = P.PRODUCT_ID
WHERE ORDER_STATUS = 'Cancelled';

SELECT 
    S.ORDER_ID,
    S.CUSTOMER_ID,
    S.PRODUCT_ID,
    S.ORDER_DATE,
    S.ORDER_STATUS,
    SH.DELIVERY_STETUS,
    P.PYMENT_STETUS
FROM SALES S
LEFT JOIN SHIPPINGS SH 
ON S.ORDER_ID = SH.ORDER_ID
LEFT JOIN PAYMENTS P
ON S.ORDER_ID = P.ORDER_ID
WHERE S.ORDER_STATUS = 'Cancelled';

#10.	Retrieve the total quantity of products sold by category in 2023.
SELECT P.CATEGROY, SUM(S.QUANTITY) AS TOTAL_QUANTITY_SOLD
FROM SALES S
JOIN PRODUCTS P 
ON S.PRODUCT_ID = P.PRODUCT_ID
WHERE YEAR(S.ORDER_DATE) = 2023
GROUP BY P.CATEGROY;

#11.	Get the count of returned orders by shipping provider in 2023.
SELECT * FROM PAYMENTS;
SELECT * FROM SHIPPINGS;

SELECT SH.SHIPPING_PROVIDERS,COUNT(*) AS RETURNED_ORDER_COUNT
FROM SHIPPINGS SH
JOIN SALES S 
ON SH.ORDER_ID = S.ORDER_ID
WHERE SH.DELIVERY_STETUS = 'Returned' AND YEAR(S.ORDER_DATE) = 2023
GROUP BY SH.SHIPPING_PROVIDERS;

#12.  Show the total revenue generated per month for the year 2023.
SELECT * FROM SALES;

SELECT MONTH(ORDER_DATE) AS MONTH, SUM(QUANTITY*PRICE_PER_UNIT)
FROM SALES
WHERE YEAR(ORDER_DATE) = 2023 AND ORDER_STATUS = 'Delivered'
GROUP BY MONTH(ORDER_DATE) 
ORDER BY MONTH;

#13.  Find the customers who have made the most purchases in a single month.
SELECT * FROM CUSTOMERS;
SELECT * FROM SALES;

SELECT C.CUSTOMER_ID , C.CUSTOMER_NAME, MONTH(S.ORDER_DATE), COUNT(*)
FROM CUSTOMERS C
JOIN SALES S 
ON  C.CUSTOMER_ID = S.CUSTOMER_ID
WHERE S.ORDER_STATUS = 'Delivered'
GROUP BY S.CUSTOMER_ID,MONTH(ORDER_DATE)
LIMIT 1;

SELECT S.CUSTOMER_ID,C.CUSTOMER_NAME,MONTH(S.ORDER_DATE) AS ORDER_MONTH,COUNT(*) AS ORDER_COUNT
FROM SALES S
JOIN CUSTOMERS C 
ON S.CUSTOMER_ID = C.CUSTOMER_ID
GROUP BY S.CUSTOMER_ID, MONTH(S.ORDER_DATE)
ORDER BY ORDER_COUNT DESC
LIMIT 1;

#14.  Retrieve the number of orders made per product category in 2023 and order by total quantity sold.
SELECT * FROM PRODUCTS;
SELECT * FROM SALES;

SELECT P.CATEGROY, COUNT(*), SUM(S.QUANTITY) AS TOTAL_QN
FROM PRODUCTS P 
JOIN SALES S 
ON P.PRODUCT_ID = S.PRODUCT_ID
WHERE YEAR(ORDER_DATE) = 2023
GROUP BY P.CATEGROY
ORDER BY TOTAL_QN DESC;

#15.  List the products that have never been ordered (use LEFT JOIN between products and sales).
SELECT * FROM PRODUCTS;
SELECT * FROM SALES;

SELECT P.PRODUCT_NAME
FROM PRODUCTS P 
LEFT JOIN SALES S 
ON P.PRODUCT_ID = S.PRODUCT_ID
WHERE S.ORDER_ID IS NULL;

#1.	Retrieve a list of all customers with their corresponding product names they ordered 
#(use an INNER JOIN between customers and sales tables).
SELECT * FROM  CUSTOMERS;
SELECT * FROM SALES;

SELECT C.CUSTOMER_NAME, P.PRODUCT_NAME
FROM CUSTOMERS C  
JOIN SALES S 
ON C.CUSTOMER_ID = S.CUSTOMER_ID
JOIN PRODUCTS P 
ON S.PRODUCT_ID = P.PRODUCT_ID;
#WHERE ORDER_STATUS = 'Delivered';
#2.	List all products and show the details of customers who have placed orders for them. 
#Include products that have no orders (use a LEFT JOIN between products and sales tables).

SELECT P.PRODUCT_NAME, C.CUSTOMER_NAME
FROM PRODUCTS P
LEFT JOIN SALES S 
ON P.PRODUCT_ID = S.PRODUCT_ID
LEFT JOIN CUSTOMERS C 
ON S.CUSTOMER_ID = C.CUSTOMER_ID;

#3.	List all orders and their shipping status. Include orders that do not have any shipping records 
#(use a LEFT JOINbetween sales and shippings tables).
USE flipkart;
SELECT * FROM SHIPPINGS;
SELECT * FROM PRODUCTS;
SELECT * FROM SALES;

SELECT S.ORDER_ID , S.ORDER_STATUS AS SHIPPING_STATUS
FROM SALES S 
LEFT JOIN SHIPPINGS SH 
ON S.ORDER_ID = SH.ORDER_ID;

SELECT 
    S.ORDER_ID,
    S.CUSTOMER_ID,
    S.PRODUCT_ID,
    S.ORDER_DATE,
    SH.SHIPPING_ID,
    SH.SHIPPING_DATE
FROM 
    SALES S
LEFT JOIN 
    SHIPPINGS SH ON S.ORDER_ID = SH.ORDER_ID;



#4.	Retrieve all products, including those with no orders, along with their price.
# Use a RIGHT JOIN between the products and sales tables.
SELECT P.PRODUCT_ID,P.PRODUCT_NAME,P.PRICE,S.ORDER_ID,S.CUSTOMER_ID,S.ORDER_DATE
FROM SALES S
RIGHT JOIN PRODUCTS P 
ON S.PRODUCT_ID = P.PRODUCT_ID;

#5.	Get a list of all customers who have placed orders, including those with no payment records.
#Use a FULL OUTER JOIN between the customers and payments tables.
SELECT * FROM PAYMENTS;
SELECT * FROM CUSTOMERS;

SELECT C.CUSTOMER_ID, C.CUSTOMER_NAME
FROM CUSTOMERS C 
LEFT JOIN SALES S 
ON C.CUSTOMER_ID = S.CUSTOMER_ID
UNION 
SELECT P.PAYMENT_STETUS 
FROM PAYMENTS P 
RIGHT JOIN SALES S 
ON P.ORDER_ID = S.ORDER_ID;


SELECT C.CUSTOMER_ID,C.CUSTOMER_NAME,P.PAYMENT_ID,P.PAYMENT_DATE,P.AMOUNT
FROM CUSTOMERS C
LEFT JOIN PAYMENTS P 
ON C.CUSTOMER_ID = P.CUSTOMER_ID
UNION
SELECT C.CUSTOMER_ID,C.CUSTOMER_NAME,P.PAYMENT_ID,P.PAYMENT_DATE,P.AMOUNT
FROM CUSTOMERS C
RIGHT JOIN PAYMENTS P ON C.CUSTOMER_ID = P.CUSTOMER_ID;

SELECT C.CUSTOMER_ID,C.CUSTOMER_NAME,P.PYMENT_ID,P.PYMENT_DATE,P.PYMENT_STETUS
FROM CUSTOMERS C
LEFT JOIN PAYMENTS P 
ON C.CUSTOMER_ID = (
        SELECT S.CUSTOMER_ID 
        FROM SALES S 
        WHERE S.ORDER_ID = P.ORDER_ID
        LIMIT 1 
)
UNION
SELECT C.CUSTOMER_ID,C.CUSTOMER_NAME,P.PYMENT_ID,P.PYMENT_DATE,P.PYMENT_STETUS
FROM CUSTOMERS C
RIGHT JOIN PAYMENTS P 
ON C.CUSTOMER_ID = (
        SELECT S.CUSTOMER_ID 
        FROM SALES S 
        WHERE S.ORDER_ID = P.ORDER_ID
        LIMIT 1 
);


#Joins + Where Clause
#●	Find the total number of completed orders made by customers from the state 'Delhi' 
#(use INNER JOIN between customers and sales and apply a WHERE condition).
SELECT * FROM SALES;
SELECT * FROM CUSTOMERS;

SELECT C.CUSTOMER_NAME,COUNT(*) AS COMP_ORDERS
FROM CUSTOMERS C
INNER JOIN SALES S 
ON C.CUSTOMER_ID = S.CUSTOMER_ID 
WHERE S.ORDER_STATUS = 'Delivered' AND C.STATE = 'Hyderabad';

#●	Retrieve a list of products ordered by customers from the state 'Karnataka' with price
# greater than 10,000 (use INNER JOIN between sales, customers, and products).
SELECT * FROM PRODUCTS;

SELECT C.CUSTOMER_NAME,P.PRODUCT_NAME, P.PRICE
FROM CUSTOMERS C
JOIN SALES S 
ON C.CUSTOMER_ID = S.CUSTOMER_ID 
JOIN PRODUCTS P 
ON S.PRODUCT_ID = P.PRODUCT_ID
WHERE C.STATE = 'Chennai' and p.price > 10000;

#●	List all customers who have placed orders where the product category is 'Accessories' 
#and the order status is 'Completed' (use INNER JOIN with sales, customers, and products).
SELECT C.CUSTOMER_NAME,P.PRODUCT_NAME
FROM CUSTOMERS C
JOIN SALES S 
ON C.CUSTOMER_ID = S.CUSTOMER_ID 
JOIN PRODUCTS P 
ON S.PRODUCT_ID = P.PRODUCT_ID
WHERE S.ORDER_STATUS = 'Delivered' AND P.CATEGROY = 'Electronics';
#●	Show the order details of customers who have paid for their orders, excluding those who 
#have cancelled their orders (use INNER JOIN between sales and payments and apply WHERE for order_status).
SELECT * FROM SALES;
SELECT * FROM PAYMENTS;

SELECT S.ORDER_ID,S.CUSTOMER_ID,S.PRODUCT_ID,S.ORDER_DATE,S.ORDER_STATUS,P.PYMENT_ID,
    P.PYMENT_DATE,P.PYMENT_STETUS
FROM CUSTOMERS C 
JOIN  SALES S 
ON C.CUSTOMER_ID = S.CUSTOMER_ID 
JOIN PAYMENTS P 
ON S.ORDER_ID = P.ORDER_ID 
WHERE P.PYMENT_STETUS = 'Paid';

#●	Retrieve products ordered by customers who are in the 'Gujarat' state and whose total 
#order price is greater than 15,000 (use INNER JOIN between sales, customers, and products).
SELECT C.CUSTOMER_NAME,P.PRODUCT_NAME, P.PRICE
FROM CUSTOMERS C
JOIN SALES S 
ON C.CUSTOMER_ID = S.CUSTOMER_ID 
JOIN PRODUCTS P 
ON S.PRODUCT_ID = P.PRODUCT_ID
WHERE C.STATE= 'Mumbai' AND P.PRICE>15000;


USE flipkart;

#Joins + Group BY + Having
#●	Find the total quantity of each product ordered by customers from 'Delhi' and only include products
#with a quantity greater than 5 (use INNER JOIN with sales, customers, and products and group by product).
SELECT * FROM SHIPPINGS;
SELECT * FROM PRODUCTS;
SELECT * FROM SALES;
SELECT * FROM CUSTOMERS;

SELECT P.PRODUCT_ID,P.PRODUCT_NAME,SUM(S.QUANTITY) AS RESULT 
FROM CUSTOMERS C
JOIN SALES S 
ON C.CUSTOMER_ID = S.CUSTOMER_ID 
JOIN PRODUCTS P 
ON S.PRODUCT_ID = P.PRODUCT_ID
WHERE C.STATE = 'Pune' 
GROUP BY P.PRODUCT_ID,P.PRODUCT_NAME
HAVING COUNT(S.QUANTITY)>1;

#●	Get the average payment amount per customer who has placed more than 3 orders
#(use INNER JOIN between paymentsand sales, group by customer, and apply a HAVING clause).
SELECT * FROM PAYMENTS;

SELECT C.CUSTOMER_ID,AVG(S.PRICE_PER_UNIT* S.QUANTITY)
FROM CUSTOMERS C
JOIN SALES S 
ON C.CUSTOMER_ID = S.CUSTOMER_ID
JOIN PAYMENTS P 
ON S.ORDER_ID = P.ORDER_ID
GROUP BY S.ORDER_ID
HAVING COUNT(S.ORDER_ID)>3;

SELECT S.CUSTOMER_ID,AVG(S.PRICE_PER_UNIT * S.QUANTITY) AS AVG_PAYMENT
FROM SALES S
INNER JOIN PAYMENTS P ON S.ORDER_ID = P.ORDER_ID
GROUP BY S.CUSTOMER_ID
HAVING COUNT(S.ORDER_ID) > 3;

#●	Retrieve the total sales for each product category and only include categories where the total sales 
#exceed 100,000 (use INNER JOIN between sales and products, group by category).
SELECT * FROM SALES;
SELECT * FROM PRODUCTS;

SELECT p.CATEGROY,SUM(s.QUANTITY * s.PRICE_PER_UNIT) AS TOTAL_SALES
FROM SALES s
INNER JOIN PRODUCTS p 
ON s.PRODUCT_ID = p.PRODUCT_ID
GROUP BY p.CATEGROY
HAVING TOTAL_SALES > 100000;

#●	Show the number of customers in each state who have made purchases with a total spend 
#greater than 50,000 (use INNER JOIN between sales and customers).
SELECT COUNT(C.CUSTOMER_ID),SUM(s.QUANTITY * s.PRICE_PER_UNIT) AS RESULT  ,C.STATE
FROM CUSTOMERS C
JOIN SALES S 
ON C.CUSTOMER_ID = S.CUSTOMER_ID
GROUP BY C.STATE
HAVING RESULT > 50000;

#●	List the total sales by brand for products that have been ordered more than 10 times
#(use INNER JOIN between salesand products, group by brand).
SELECT P.BRAND,SUM(S.QUANTITY * S.PRICE_PER_UNIT) AS TOTAL_SALES
FROM SALES S

INNER JOIN PRODUCTS p
ON S.PRODUCT_ID = P.PRODUCT_ID
GROUP BY P.BRAND
HAVING SUM(S.QUANTITY) > 10;

#Joins + WHERE + Group BY + HAVING + ORDER BY
/*●Retrieve the total sales per customer in Delhi where the 
order status is Completed, only include those with total 
sales greater than 50,000, and order the results by total 
sales (use INNER JOIN between sales and customers).*/
SELECT C.CUSTOMER_ID, SUM(S.QUANTITY * S.PRICE_PER_UNIT) AS RESULT
FROM CUSTOMERS C
JOIN SALES S 
ON C.CUSTOMER_ID = S.CUSTOMER_ID
WHERE S.ORDER_STATUS = 'Delivered' AND C.STATE = 'Delhi'
GROUP BY C.CUSTOMER_NAME
HAVING RESULT>50000
ORDER BY RESULT;

/*●Show the total quantity sold per product in the 'Accessories'
category where the total quantity sold is greater than 50 and 
order the results by product name (use INNER JOIN between sales
and products).*/

SELECT SUM(S.QUANTITY) AS total_quantity,P.PRODUCT_NAME
FROM SALES S
INNER JOIN PRODUCTS P 
ON S.PRODUCT_ID = P.PRODUCT_ID
GROUP BY P.CATEGROY
HAVING total_quantity>50
ORDER BY P.PRODUCT_NAME;

/*Find the total number of orders for customers from 'Mumbai'
who have spent more than 1,00,000, and order the results
by the total amount spent (use INNER JOIN between sales 
and customers).*/
SELECT COUNT(S.ORDER_ID),C.CUSTOMER_ID,SUM(S.QUANTITY * S.PRICE_PER_UNIT) as result
FROM CUSTOMERS C
JOIN SALES S 
ON C.CUSTOMER_ID = S.CUSTOMER_ID
WHERE C.STATE= 'Mumbai'
GROUP BY C.CUSTOMER_ID
ORDER BY RESULT;

/*Get the number of orders per product and filter to include 
only products that have been ordered more than 10 times, then
order the results by the highest number of orders 
(use INNER JOIN between sales and products).*/
SELECT COUNT(S.ORDER_ID) AS RESULT , P.PRODUCT_NAME
FROM SALES S
INNER JOIN PRODUCTS P 
ON S.PRODUCT_ID = P.PRODUCT_ID
GROUP BY S.PRODUCT_NAME
HAVING RESULT > 10
ORDER BY RESULT DESC;
/*Retrieve the number of payments made per customer where the 
payment status is 'Payment Successed' and group by customer, 
ordering by payment count (use INNER JOIN between payments 
and customers).*/
SELECT * FROM CUSTOMERS;
SELECT * FROM PAYMENTS;
SELECT * FROM PAYMENTS;

SELECT COUNT(P.PYMENT_ID) AS RESULT,C.CUSTOMER_NAME
FROM CUSTOMERS C 
JOIN  SALES S 
ON C.CUSTOMER_ID = S.CUSTOMER_ID 
JOIN PAYMENTS P 
ON S.ORDER_ID = P.ORDER_ID 
WHERE P.PYMENT_STETUS = 'Paid'
GROUP BY C.CUSTOMER_NAME
ORDER BY RESULT;

#DATE FUNCTIONS
/*List all orders that were placed within the year 2023 
(use order_date with the EXTRACT function).*/
SELECT * FROM SALES;

SELECT * 
FROM SALES 
WHERE  EXTRACT(year FROM ORDER_DATE)= '2023';

/*●	Retrieve customers who have made purchases in the month of
January (use order_date and TO_CHAR to extract the month).*/
SELECT * 
FROM CUSTOMERS C 
JOIN  SALES S 
ON C.CUSTOMER_ID = S.CUSTOMER_ID
WHERE extract(MONTH FROM S.ORDER_DATE) = '01';

/*Calculate the number of days between the payment_date and 
order_date for each order (use the AGE function).*/
SELECT * FROM SALES;
SELECT * FROM PAYMENTS;

SELECT datediff(ORDER_DATE,PYMENT_DATE)
FROM SALES S 
JOIN PAYMENTS P 
ON S.ORDER_ID = P.ORDER_ID;

/*Find the total sales for each year (use EXTRACT with 
order_date to group by year).*/
SELECT COUNT(S.QUANTITY*S.PRICE_PER_UNIT),
extract(YEAR FROM S.ORDER_DATE) AS YR 
FROM SALES S
INNER JOIN PRODUCTS P 
ON S.PRODUCT_ID = P.PRODUCT_ID
GROUP BY YR;

/*Show all orders where the shipping date is after the payment
 date (use date comparison).*/
SELECT * FROM SHIPPINGS;
SELECT * FROM PAYMENTS;
SELECT * FROM SALES;

SELECT S.ORDER_ID,S.SHIPPING_DATE,P.PYMENT_DATE
FROM SHIPPINGS S
JOIN PAYMENTS P 
ON S.ORDER_ID = P.ORDER_ID 
WHERE S.SHIPPING_DATE >P.PYMENT_DATE;


