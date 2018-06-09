/*Project 1 sonal Patil C.
	6.	Write SELECT statement that returns 3 columns: EmailAddress, OrderID & order total for each customer. To do this, you can group the result 
		set by the EmailAddress and OrderID columns. In addition, you must calculate the order total from the columns in the OrderItems table. 
		Write 2nd SELECT statement that uses 1st SELECT statement in its FROM clause. Main query should return 2 columns: customer’s email address 
		and largest order for that customer. To do this, you can group the result set by the EmailAddress column. */

USE MyGuitarShop;

/*1st select statement*/
SELECT c.EmailAddress, o.OrderID, SUM((oi.ItemPrice - oi.DiscountAmount) * oi.Quantity) AS OrderTotal
FROM Customers AS c JOIN Orders AS o ON C.CustomerID = O.CustomerID 
                    JOIN OrderItems AS oi ON O.OrderID = oi.OrderID
GROUP BY c.EmailAddress, o.OrderID;

/*2nd/Main select statement*/
SELECT C.emailaddress , Max(OrderTotal) AS LargestOrder 
FROM Customers AS C JOIN Orders AS O ON C.CustomerID = O.CustomerID 
					JOIN (SELECT c.EmailAddress, o.OrderID, SUM((oi.ItemPrice - oi.DiscountAmount) * oi.Quantity) AS OrderTotal
						  FROM Customers AS c JOIN Orders AS o ON C.CustomerID = O.CustomerID 
											  JOIN OrderItems AS oi ON O.OrderID = oi.OrderID
						  GROUP BY c.EmailAddress, o.OrderID) AS largest ON largest.OrderID = O.OrderID
GROUP BY C.EmailAddress;

/*comments - here i have used subquery as 3rd result set for join. Main query join uses 2 joins one of which is a result set 
			 generated using a subquery. Grouped the final main result set using customer email address*/

