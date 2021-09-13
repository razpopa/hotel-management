CREATE PROCEDURE [dbo].[spBookings_CheckIn]
	@Id int
AS
BEGIN
	SET NOCOUNT ON; 
	
	UPDATE dbo.Bookings
	SET CheckedIn = 1
	WHERE Id = @Id;

	--FROM dbo.Bookings AS b
	--INNER JOIN dbo.Guests g ON b.GuestId = g.Id
	--WHERE g.FirstName LIKE @firstName and g.LastName LIKE @lastName
END
