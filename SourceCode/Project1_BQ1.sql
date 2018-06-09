/*Project 1 Sonal Patil B.
	1.	Write a SELECT statement that returns one column from the Customers table named FullName 
		that joins the LastName and FirstName columns. 
		Format this column with the last name, a comma, a space, and the first name like this: 
			Doe, John 
		Add an ORDER BY clause to this statement that sorts the result set by last name in descending sequence. 
		Return only the contacts whose last name begins with a letter from A to E. 
 */

 USE MyGuitarShop;

 SELECT LastName + ', ' + FirstName AS 'FullName'
 FROM Customers
 WHERE LastName LIKE '[A-E]%'
 ORDER BY LastName DESC;

/*Comments - here i have combines two columns and gave that column a new name
			 also used like to where clause to meet the condition and order by clause to give proper order to result set*/