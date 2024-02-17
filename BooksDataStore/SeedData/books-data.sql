
IF EXISTS(SELECT 1 FROM [dbo].[Books])
BEGIN
   DELETE [dbo].[Books];

	INSERT INTO [dbo].[Books] 
		([Title], [Author], [PublishedOn], [ISBN], [Description], [Price], [PictureUrl])
	VALUES 
		('Book 1', 'Sri Varu', '1988-01-01', '978-0061122415', 'Book 1 Description', 12.34, 'https://placehold.co/600x400/png')
		, ('Book 2', 'Sri Varu', '1998-01-01', '978-0061122415', 'Book 2 Description', 12.34, 'https://placehold.co/600x400/png');
END

