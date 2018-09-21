CREATE TABLE [dbo].[User]
(
    [UserId] NVARCHAR (128) NOT NULL,
	[StudentId] NVARCHAR (128) NOT NULL,
	[FName] NCHAR(20) NULL, 
    [SName] NCHAR(20) NULL, 
    CONSTRAINT UserId_Id_AspNetUsers FOREIGN KEY (UserID) REFERENCES AspNetUsers(Id), 
    CONSTRAINT [PK_User] PRIMARY KEY ([StudentId])
)
