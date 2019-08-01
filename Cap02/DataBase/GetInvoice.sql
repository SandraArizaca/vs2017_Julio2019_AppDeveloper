USE Chinook

GO

CREATE PROCEDURE GetArtistById(@ArtistID int)
AS 
BEGIN

SELECT * FROM dbo.Artist WHERE ArtistId = @ArtistID

SELECT * FROM dbo.Album WHERE ArtistId = @ArtistID

END

GO

EXEC dbo.GetArtistById 5