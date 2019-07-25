go
CREATE PROC usp_GetCustomerxName
@FullName nVarchar(40)
As
Begin
	SELECT 
		[CustomerId], [FirstName], [LastName], 
		[Company], [Address], [City], 
		[State], [Country], [PostalCode], 
		[Phone], [Fax], [Email], [SupportRepId]	
	 FROM Customer 
	 WHERE @FullName = '' 	
		OR (FirstName + ' ' + LastName Like @FullName)
End
Go