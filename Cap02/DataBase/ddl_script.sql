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

create proc usp_InsertInvoice
(
	@CustomerId INT, 
	@InvoiceDate DATETIME,
	@BillingAddress NVARCHAR(70),
	@BillingCity NVARCHAR(40),
	@BillingState NVARCHAR(40),
	@BillingCountry NVARCHAR(40),
	@BillingPostalCode NVARCHAR(10), 
	@Total NUMERIC(10,2)
)
as
begin
	INSERT INTO Invoice(
	[CustomerId], [InvoiceDate],
	[BillingAddress], [BillingCity],
	[BillingState], [BillingCountry],
	[BillingPostalCode], [Total]
	)
	VALUES(@CustomerId, 
	@InvoiceDate,
	@BillingAddress,
	@BillingCity,
	@BillingState,
	@BillingCountry,
	@BillingPostalCode, 
	@Total
	)

	SELECT SCOPE_IDENTITY()
end
GO

CREATE PROCEDURE usp_InsertInvoiceLine
(
	@InvoiceId INT,
	@TrackId INT,
	@UnitPrice NUMERIC(10,2),
	@Quantity INT
)
AS
BEGIN
	INSERT INTO InvoiceLine
	(
		[InvoiceId], [TrackId], [UnitPrice], [Quantity]
	)
	VALUES(
		@InvoiceId, @TrackId, @UnitPrice, @Quantity
	)
END