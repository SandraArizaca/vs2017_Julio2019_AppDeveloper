Create proc usp_GetArtist
@Nombre nVarchar(100)
As
Begin
	Select * From Artist Where @Nombre = '' Or Name Like @Nombre
End
Go

Create proc usp_InsertArtist
@Name NVarchar(120)
As
Begin
	Insert Into Artist(Name) Values(@Name)

	Select SCOPE_IDENTITY()
End
Go

Create proc usp_InsertArtistParamOut
@Name NVarchar(120), @ID Int Output
As
Begin
	Insert Into Artist(Name) Values(@Name)

	Set @ID = SCOPE_IDENTITY()
End
Go

Create proc usp_UpdateArtist
@ID Int, @Name NVarchar(120)
As
Begin
	Update Artist Set Name = @Name Where ArtistId = @ID
End
Go

Create proc usp_DeleteArtist
@ID Int
As
Begin
	Delete From Artist Where ArtistId = @ID
End
Go

Create proc usp_GetArtistById
@ID Int
As
Begin
	Select * From Artist Where ArtistId = @ID
End
Go

Create proc usp_GetCustomerxName
@Name nVarchar(40)
As
Begin
	Select * From Customer Where @Name = '' Or FirstName Like @Name
End
Go

Create Proc usp_GetCustomers
As
Begin
	Select * From Customer
End
Go

Create Proc usp_GetCustomerById
@ID int
As
Begin
	Select * From Customer Where CustomerId = @ID
End
Go

Create Proc usp_InsertCustomer
@FirstName Nvarchar(40), @LastName Nvarchar(20), @Company Nvarchar(80), @Address Nvarchar(70), @City Nvarchar(40), @State Nvarchar(40),
@Country Nvarchar(40), @PostalCode Nvarchar(10), @Phone Nvarchar(24), @Fax Nvarchar(24), @Email Nvarchar(60), @SupportRepId Int
As
Begin
	Insert Into Customer Values (@FirstName, @LastName, @Company, @Address, @City, @State, @Country, @PostalCode, @Phone, @Fax, @Email, @SupportRepId)
End
Go

Create Proc usp_UpdateCustomer
@ID int, @FirstName Nvarchar(40), @LastName Nvarchar(20), @Company Nvarchar(80), @Address Nvarchar(70), @City Nvarchar(40), @State Nvarchar(40),
@Country Nvarchar(40), @PostalCode Nvarchar(10), @Phone Nvarchar(24), @Fax Nvarchar(24), @Email Nvarchar(60), @SupportRepId Int
As
Begin
	Update Customer Set FirstName = @FirstName, LastName = @LastName, Company = @Company, Address = @Address, City = @City, State = @State,
	Country = @Country, PostalCode = @PostalCode, Phone = @Phone, Fax = @Fax, Email = @Email, SupportRepId = @SupportRepId
	Where CustomerId = @ID
End
Go