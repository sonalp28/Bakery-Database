/*Project 1 Sonal Patil D.
	4.	 [1] Write script that creates function named fnDiscountPrice that calculates discount price of an item in  OrderItems table 
		 (discount amount subtracted from item price). 
		 To do that, this function should accept 1 parameter for item ID & it should return value of discount price for that item. */

CREATE FUNCTION fnDiscountPrice (@itemID INT) 
				RETURNS MONEY
BEGIN
	RETURN (SELECT (ItemPrice - DiscountAmount) AS 'FinalPrice'
			FROM OrderItems
			WHERE OrderItems.ItemID = @itemID);
END;

/*comments - here i have used create function statement which takes itemID as input and return FinalPrice as output matching with 
			 given itemID*/