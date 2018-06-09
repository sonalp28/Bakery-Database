/*Project 1 Sonal Patil C.
	8.	Write a SELECT statement that returns these columns from Orders table (Hint: use system functions): 
			a. The OrderDate column 
			b. A column that returns the four-digit year that’s stored in the OrderDate column 
			c. A column that returns only the day of the month that’s stored in the OrderDate column. 
			d. A column that returns the result from adding twenty days to the OrderDate column 
*/

USE MyGuitarShop;

SELECT OrderDate, YEAR(OrderDate) AS 'Year', DAY(OrderDate) AS 'Day', DATEADD(DAY,20,OrderDate) AS 'Plus20Days'
FROM Orders;

/*comments - here i have used datetime system functions to manipulate the data stored in the orders tables' orderdate column
			 YEAR, DAY fucntions gives us the particular year or day stored in the given date
			 DATEADD function adds the given amount of days in the given data and returns new date*/