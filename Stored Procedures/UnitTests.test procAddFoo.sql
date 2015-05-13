SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
--  Comments here are associated with the test.
--  For test case examples, see: http://tsqlt.org/user-guide/tsqlt-tutorial/
CREATE PROCEDURE [UnitTests].[test procAddFoo]
AS
BEGIN
-- Create a fake table
EXEC tSQLt.FakeTable 'dbo.getFoos';

-- Populate a record using the procedure I'm testing
EXEC [dbo].[addFoo] @fooName = 'ncharOfTen' -- nchar(10)
  
-- Specify actual results
DECLARE @actualFoo NCHAR(10);
SET @actualFoo = (SELECT fooName FROM dbo.foos)
  
-- Verify actual matches expected
EXEC tSQLt.AssertEquals @Expected = 'ncharOfTen', @Actual = @actualFoo;
  
END;



GO
