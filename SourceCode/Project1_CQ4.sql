/*Project 1 Sonal Patil C.
	4.	Write a SELECT statement that returns 1 row for each customer that has orders with these columns: 
			a. The EmailAddress column from the Customers table 
			b. A count of the number of orders 
			c. The total amount for each order (Hint: First, subtract the discount amount from the price. 
			   Then, multiply by the quantity) 
		Return only those rows where the items have a more than 400 ItemPrice value. 
		Sort the result set in ascending sequence by the sum of the line item amounts. */

USE MyGuitarShop;

SELECT c.EmailAddress, COUNT(o.OrderID) AS 'NumberofOrders', 
	   SUM((oi.ItemPrice - oi.DiscountAmount) * oi.Quantity) AS 'total'
FROM Customers AS c JOIN Orders AS o ON C.CustomerID = O.CustomerID 
					JOIN OrderItems AS oi ON O.OrderID = oi.OrderID
WHERE oi.ItemPrice > 400
GROUP BY c.EmailAddress
ORDER BY total;

/*Comments - here i have used aggregate functions COUNT & SUM to get count and total sum value with grouping
			 the result for each customer. Also used join to join 3 tables as we need to access columns from
			 all these 3 tables. Finally, sorted the result set in given specified order & condition*/