/*Project 1 Sonal Patil C.
	3.	Write a SELECT statement that returns 1 row for each category that has products with these columns: 
			a. The CategoryName column from the Categories table 
			b. The count of the products in the Products table 
			c. The list price of the most expensive product in the Products table 
		Sort the result set so the category with the least products appears first. */

USE MyGuitarShop;

SELECT C.CategoryName, COUNT(*) AS ProductCount, MAX(P.ListPrice) AS MostExpensiveProduct
FROM Categories AS C JOIN Products AS P ON C.CategoryID = P.CategoryID
GROUP BY C.CategoryName
ORDER BY ProductCount ASC;


/*Comments - i have used aggregate functions like count and max to get total count and max value and groupd 
             the result for these aggregate function. Also used join as we want 1 row for each category
			 ordered the final result set using order by clause*/