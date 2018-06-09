/*Project 1 Sonal Patil C.
	For question 9-11: To test whether table has been modified correctly as you do these questions, please write & run 
					   appropriate SELECT statement. Run this statement first: 
							INSERT INTO Categories (CategoryName) 
							VALUES ('Brass'); 
	9.	Write an UPDATE statement that modifies the row you just added to the Categories table. 
		This statement should change CategoryName column to “Woodwinds”, and it should use CategoryID column to identify row. 
		Use SELECT statements to verify your result (data changes before and after update). */
USE MyGuitarShop;

INSERT INTO Categories (CategoryName) 
VALUES ('Brass');

SELECT * FROM Categories;

UPDATE Categories
SET CategoryName = 'Woodwinds'
WHERE CategoryID = 7;

SELECT * FROM Categories;

/*comments - i have used insert to insert new row in category table, update to update row for given id using where clause*/