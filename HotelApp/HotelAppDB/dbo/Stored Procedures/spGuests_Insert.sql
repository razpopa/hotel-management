CREATE PROCEDURE [dbo].[spGuests_Insert]
	@firstName nvarchar(50),
	@lastName nvarchar(50)
AS
BEGIN
	SET NOCOUNT ON;

	IF NOT EXISTS (SELECT 1 FROM dbo.Guests WHERE FirstName = @firstName and LastName = @lastName)
	BEGIN
		insert into dbo.Guests(FirstName, LastName)
		values (@firstName, @lastName);
	END

	SELECT TOP 1 [Id], [FirstName], [LastName]
	FROM dbo.Guests
	WHERE FirstName = @firstName and LastName = @lastName
END