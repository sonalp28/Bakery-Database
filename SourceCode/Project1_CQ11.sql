/*Project 1 Sonal Patil C.
	11.	Write DELETE statement that deletes row in Categories table that has ID of 4. 
		When you execute this statement, it will produce an error since the category has related rows in the Products table. 
		To fix that, precede DELETE statement with another DELETE statement that deletes all products in this category. 
		Use SELECT statements to verify your result (data changes before and after insertion). */

USE MyGuitarShop;

DELETE FROM Products 
WHERE CategoryID = 4;

DELETE FROM Categories 
WHERE CategoryID = 4;

SELECT * FROM Categories;

/*comments - here i have used delete statement to delete an entry from Categories table but to delete all its footprints from other
			 tables i have used another delete statment before this one.*/ 