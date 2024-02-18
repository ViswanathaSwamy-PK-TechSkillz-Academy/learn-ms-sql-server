/*
Post-Deployment Script Template							
--------------------------------------------------------------------------------------
 This file contains SQL statements that will be appended to the build script.		
 Use SQLCMD syntax to include a file in the post-deployment script.			
 Example:      :r .\myfile.sql								
 Use SQLCMD syntax to reference a variable in the post-deployment script.		
 Example:      :setvar TableName MyTable							
               SELECT * FROM [$(TableName)]					
--------------------------------------------------------------------------------------
*/

PRINT 'Starting the Post Deployment Scripts for BooksDataStore'
GO

-- Books Data
:r "../SeedData/books-data.sql"
GO

PRINT 'Completed the Post Deployment Scripts for BooksDataStore'
GO