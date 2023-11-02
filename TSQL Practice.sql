PRINT 'Hello, world!'


DECLARE @variable INT
SET @variable = 6
PRINT @variable

DECLARE @var1 INT, @var2 INT
SET @var1 = 7
SET @var2 = 5

PRINT 'Variable 1 = ' + CONVERT(VARCHAR(5), @var1) + CHAR(13) + 'Variable 2 = ' + CONVERT(VARCHAR(5),@var2) + CHAR(13) + 'Total = '
PRINT @var1 +  @var2
PRINT 'I have ' + CONVERT(varchar(50),@var1) + ' dollars...'


IF @var1 <= 3
	BEGIN	
		PRINT 'Variable 1 <= ' + CONVERT(VARCHAR(5),@var1) + CHAR(13)
	END
ELSE
	BEGIN
		PRINT 'Variable 1 is not < ' + CONVERT(VARCHAR(5),@var1) + CHAR(13)
	END

/*This is a silent message*/