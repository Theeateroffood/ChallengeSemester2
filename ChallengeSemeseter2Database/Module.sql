CREATE TABLE [dbo].[Module]
(
	[ModuleId] INT NOT NULL PRIMARY KEY, 
    [MacAddress] NVARCHAR(107) NOT NULL, 
    [IssueDate] NCHAR(200) NOT NULL,
	[StudentId] NVARCHAR (128) NOT NULL

	CONSTRAINT UserId_StudentId_User FOREIGN KEY ([StudentId]) REFERENCES [User](StudentId)

)
