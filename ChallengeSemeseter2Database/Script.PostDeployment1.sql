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

IF '$(LoadTestData)' = 'true'

BEGIN

DELETE FROM [Module]
DELETE FROM [User]

INSERT INTO [User]([UserId],[StudentId], [FName], [SName]) VALUES
('71659728-6cba-4d78-854e-91f33349cb25','s140qwga4326303','Charlie', 'Charles'),
('8acb31fc-834c-444c-bf5e-6030010dd466','s1404326303','Kandace', 'Wyett');

INSERT INTO[Module]([ModuleId], [MacAddress], [IssueDate], [StudentId]) VALUES
(2, '12512515161531216', '1251515', 's140qwga4326303'),
(1, '4B-9C-6D-09-C0-C3', '11/01/2017', 's1404326303' );

END
