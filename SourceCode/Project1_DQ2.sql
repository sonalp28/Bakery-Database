/*Project 1 Sonal Patil D.
	2.	Create a view named ProductSummary that uses the view you created in Section D Question 1. This view should return some summary information 
		about each product. Each row should include these columns: ProductName, OrderCount (number of times product has been ordered),
		OrderTotal (the total sales for the product). */
USE MyGuitarShop;

CREATE VIEW ProductSummary AS 
SELECT otp.ProductName, SUM(Quantity) AS OrderCount, SUM(ItemTotal) AS OrderTotal
FROM OrderItemProducts AS otp
GROUP BY otp.ProductName;

SELECT * FROM ProductSummary; /*SELECT statement to see the result set stored in the above view*/
/*comments - here i have used previously created view to create new view using CREATE VIEW statement and group by clause to give a row
			 for each product*/