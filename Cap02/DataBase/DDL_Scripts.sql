exec usp_GetArtist 'aero%'


CREATE PROCEDURE usp_GetArtist
(
@Nombre NVARCHAR(100)
)
AS
BEGIN
	SELECT *
	FROM Artist
	WHERE @Nombre = '' OR Name like @Nombre
END