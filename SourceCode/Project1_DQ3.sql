/*Project 1 Sonal Patil D.
	3.	Write a script that creates and calls a stored procedure named spInsertCategory. 
		First, code a statement that creates a procedure that adds a new row to the Categories table. 
		To do that, this procedure should have one parameter for the category name. 
		Code at least two EXEC statements that test this procedure. (Note that this table doesn’t allow duplicate category names.) */

CREATE PROC spInsertCategory @CategoryName varchar(225) AS 
INSERT INTO Categories(CategoryName)
VALUES(@CategoryName);

EXEC spInsertCategory 'Gold';
EXEC spInsertCategory 'Silver';

SELECT * FROM Categories;

/*comments - here i have created a stroed procedure using create proc statement and executed that procedure to add two new rows in 
			 categories table */