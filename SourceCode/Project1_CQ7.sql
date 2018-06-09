/*Project 1 Sonal Patil C.
	7.	Write a SELECT statement that returns these columns from the Orders table: 
			a. The CardNumber column 
			b. The length of the CardNumber column 
			c. The last four digits of the CardNumber column 
			d. A column that displays the last four digits of the CardNumber column in this format: XXXX-XXXX-XXXX-1234. 
			   In other words, use ‘X’s for first 12 digits of card number & actual numbers for last four digits of number. */

USE MyGuitarShop;

SELECT CardNumber, LEN(CardNumber) AS 'CardLength', RIGHT(CardNumber,4) AS 'Last4Digits',
	   CONCAT('XXXX-XXXX-XXXX-',RIGHT(CardNumber,4)) AS 'FormatedCardNumber'
FROM Orders;

/*comments - here i have used few string functions, LEN to get length, RIGHT to get those many chars from right side of string
			 and finally CONCAT to concatenate given string with exisitng part of string which gives us new format*/