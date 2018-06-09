/*Project 1 Sonal Patil D.
	1.	Create a view named OrderItemProducts that returns columns from the Orders, OrderItems, and Products tables. 
			a. This view should return these columns from Orders table: OrderID, OrderDate, TaxAmount, & ShipDate. 
			b. This view should return these columns from OrderItems table: ItemPrice, DiscountAmount, FinalPrice 
			   (the discount amount subtracted from the item price), Quantity, and ItemTotal (the calculated total for the item). 
			c. This view should return the ProductName column from the Products table. */
USE MyGuitarShop;

CREATE VIEW OrderItemProducts AS
SELECT O.OrderID, O.OrderDate, O.TaxAmount, O.ShipDate,
	   OI.ItemPrice, OI.DiscountAmount, (OI.ItemPrice - OI.DiscountAmount) AS 'FinalPrice', OI.Quantity, 
	   (OI.ItemPrice - OI.DiscountAmount) * OI.Quantity AS 'ItemTotal',
	   P.ProductName
FROM Orders AS O JOIN OrderItems AS OI ON O.OrderID = OI.OrderID 
				 JOIN Products AS P ON P.ProductID = OI.ProductID;

SELECT * FROM OrderItemProducts; /*SELECT statement to see the result set stored in the above view*/
/*comments - here i have created a view using create view statement which compbines multiple columns from 3 different tables of 
			 current database*/
