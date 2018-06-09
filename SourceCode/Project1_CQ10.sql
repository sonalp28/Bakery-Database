/*Project 1 Sonal Patil C.
	10.	Write an INSERT statement that adds this row to the Products table: 
			ProductID: The next automatically generated ID 
			CategoryID: 4 
			ProductCode: dgx_640 
			ProductName: Yamaha DGX 640 88-Key Digital Piano 
			Description: Long description to come. 
			ListPrice: 799.99 
			DiscountPercent: 0 
			DateAdded: Today’s date/time. 
		Use column list for this statement. Use SELECT statements to verify your result (data changes before & after insertion).*/
USE MyGuitarShop;

INSERT INTO Products (CategoryID, ProductCode, ProductName, Description, ListPrice,	DiscountPercent, DateAdded)
VALUES (4, 'dgx_640', 'Yamaha DGX 640 88-Key Digital Piano', 'Long description to come.', 799.99, 0, GETDATE());

SELECT * FROM Products;

/*comments - here i have used insert statement to insert a new row in Products table with given values for given columns*/