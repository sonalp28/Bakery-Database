/*Project 1 Sonal Patil D.
	4.	 [2] Write script that creates & calls function named fnItemTotal that calculates total amount of an item in OrderItems table 
		 (discount price multiplied by quantity). 
		 To do that, this function should accept one parameter for item ID, it should use DiscountPrice function that you created in (1),
		 and it should return the value of the total for that item.*/

CREATE FUNCTION fnItemTotal(@ItemID int)
        RETURNS money
BEGIN
        RETURN (SELECT dbo.fnDiscountPrice(@ItemId) * (SELECT Quantity 
													   FROM OrderItems 
													   WHERE ItemID = @ItemID) AS 'TotalPrice')
END;

PRINT 'Total Price = $' + CONVERT(varchar, dbo.fnItemTotal(5)); 

/*comments - here i have used create function statement which takes itemID as input and return TotalPrice as output matching with 
			 given itemID. This function gives a call to another function written in 1st part of this question which gives us finalprice
			 of the item and then totalprice gets calculated in this function my multiplying it with quantities
			 Example - ItemID = 5
					   (ItemPrice - DiscountPrice) * Quantity 
					 = (1199.00 - 359.70) * 2 
					 = 1678.60	*/