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
	('Book 1', 'Sri Varu', '1988-01-01', '978-0061122111', 'Book 1 Description', 154.45, 101, 'https://placehold.co/600x400/png')
	, ('Book 2', 'Vignesh Iyer', '1998-01-01', '978-0061122222', 'Book 2 Description', 8118.99, 202, 'https://placehold.co/600x400/png')
	, ('Book 3', 'RamaKrishna Iyer', '1998-01-01', '978-0061122333', 'Book 4 Description', 218.99, 202, 'https://placehold.co/600x400/png')
	, ('Book 4', 'Mohd Ali', '1998-01-01', '978-0061122444', 'Book 4 Description', 18.99, 202, 'https://placehold.co/600x400/png')
	, ('Book 5', 'Scott Rudy', '1998-01-01', '978-0061122555', 'Book 5 Description', 8.99, 202, 'https://placehold.co/600x400/png');

PRINT 'Completed inserting the seed data into [dbo].[Books] table !!'