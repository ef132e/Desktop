CREATE PROCEDURE [dbo].[PCR_FINDUSER] @username nvarchar(255), @password nvarchar(255), @result nvarchar(255) OUTPUT
AS
BEGIN 
  DECLARE @name nvarchar(255), @pass nvarchar(255), @group varchar(4);
  DECLARE myCursor CURSOR FOR SELECT UserName, UserPassword, UserGroupID FROM Users
  Open myCursor
  FETCH NEXT FROM myCursor INTO @name, @pass, @group
  SET @result = 'None'
  WHILE @@FETCH_STATUS = 0 AND @result = 'None'
    BEGIN  
      if @name = @username AND @pass = @password
        BEGIN
		  SET @result = @group;
		END	
	FETCH NEXT FROM myCursor INTO @name, @pass, @group;
	END
CLOSE myCursor
DEALLOCATE myCursor
END