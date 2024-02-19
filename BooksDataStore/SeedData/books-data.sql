IF EXISTS(SELECT 1 FROM [dbo].[Books])
BEGIN

   PRINT 'Found [dbo].[Books] and deleting it ...'

   DELETE [dbo].[Books];

END
GO


PRINT 'Inserting the seed data into [dbo].[Books] table ...'

INSERT INTO [dbo].[Books] 
	([Title], [Author], [PublishedOn], [ISBN], [Description], [Price], [Pages], [PictureUrl])
VALUES 
	('Book 1', 'Sri Varu', '1988-01-01', '978-0061122415', 'Book 1 Description', 54.45, 101, 'https://placehold.co/600x400/png')
	, ('Book 2', 'Sri Varu', '1998-01-01', '978-0061122415', 'Book 2 Description', 18.99, 202, 'https://placehold.co/600x400/png');

PRINT 'Completed inserting the seed data into [dbo].[Books] table !!'