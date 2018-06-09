/*Project 1 Sonal Patil C.
	1.	Write a SELECT statement that returns the ProductName and ListPrice columns from the Products table. 
		Return one row for each product that has the same list price as another product. 
		Sort the result set by ProductName from A to Z. 
		(Hint: Use a self-join to check that the ProductID columns aren’t equal but ListPrice column is equal.) */

USE MyGuitarShop;

SELECT P1.ProductName, P1.ListPrice
FROM Products AS P1 JOIN Products AS P2 ON P1.ProductID <> P2.ProductID AND P1.ListPrice = P2.ListPrice
ORDER BY P1.ProductName ASC;

/*Comments - here i have used self join to meet the condition of having same list price 
			 also used order by clause to give the proper order to result set*/
