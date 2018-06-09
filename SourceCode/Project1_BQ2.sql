/* Project 1 Sonal Patil B.
		2.	Write a SELECT statement that returns these column names and data from the Products table: 
				ProductName 		The ProductName column 
				ListPrice 			The ListPrice column 
				DiscountPercent 		The DiscountPercent column 
				DiscountAmount 		A column that’s calculated from the previous two columns 
				DiscountPrice 		A column that’s calculated from the previous three columns 
			Sort the result set by discount price in descending sequence. */

USE MyGuitarShop;

SELECT ProductName, ListPrice, DiscountPercent, 
	   (ListPrice * DiscountPercent) / 100 AS 'DiscountAmount',
	   ListPrice - ((ListPrice * DiscountPercent) / 100) AS 'DiscountPrice'
FROM Products
ORDER BY DiscountPrice DESC; 

/*Comments - here i have performed matematical calculation on 2/3 columns and gave computed result column a new name
			 also used order by clause to give proper order to result set*/