/*Project 1 Sonal Patil C.
		2.	Use the UNION operator to generate a result set consisting of three columns from the Orders table: 
				ShipStatus A calculated column that contains a value of SHIPPED or NOT SHIPPED 
				OrderID 	The OrderID column 
				OrderDate 	The OrderDate column 
		If the order has a value in the ShipDate column, the ShipStatus column should contain a value of SHIPPED. 
		Otherwise,it should contain value of NOT SHIPPED. Sort final result set by OrderDate from earliest to most recent*/

USE MyGuitarShop;

SELECT 'SHIPPED' AS ShipStatus, OrderID, OrderDate
FROM Orders
WHERE ShipDate IS NOT NULL

UNION

SELECT 'NOT SHIPPED' AS ShipStatus, OrderID, OrderDate
FROM Orders
WHERE ShipDate IS NULL

ORDER BY OrderDate ASC;
/*Comments - i have used union on same table as required column belogns to same table, sed AS alias to give value to 
			 new created column, where clause to satisfy the condition and order clause to give proper order to final
			 result set*/