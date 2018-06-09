/*Project 1 Sonal Patil C. 
	5.	Write SELECT statement that returns name and discount percent of each product that has unique discount
	    percent. In other words, don’t include products that have same discount percent as another product. 
		Sort the results by the ProductName column from A to Z. 
*/

USE MyGuitarShop;

SELECT P1.ProductName, P1.DiscountPercent
FROM Products AS P1 
WHERE P1.DiscountPercent NOT IN
		(SELECT P2.DiscountPercent
		FROM Products AS P2
		WHERE P1.ProductName <> P2.ProductName)
ORDER BY ProductName;

/*comments - here i have used a subquery fro search condition which eliminates the duplicate value entries for
			 discount percent column and finally sorted the result set in specified order*/