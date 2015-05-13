SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
--SET QUOTED_IDENTIFIER ON|OFF
--SET ANSI_NULLS ON|OFF
--GO

CREATE PROCEDURE [dbo].[addFoo] @fooName NCHAR(10)
	--@parameter_name AS scalar_data_type ( = default_value ), ...
-- WITH ENCRYPTION, RECOMPILE, EXECUTE AS CALLER|SELF|OWNER| 'user_name'
AS
	INSERT INTO dbo.foos
	        ( fooName, fooAge )
	VALUES  ( @fooName, -- fooName - nchar(10)
	          0  -- fooAge - int
	          )
GO
