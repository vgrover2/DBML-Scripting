

CREATE TABLE #Tables
(
  TableName nvarchar(520), 
  ObjectID  int
);
 
INSERT #Tables(TableName, ObjectID)
SELECT t, OBJECT_ID(t) FROM 
( 
  VALUES (N'ACCESS_HIST'),             
         (N'ACCESS_PF'),                  
         (N'ACTIVITY_CODE_MSP'),            
         (N'AL_PTS'),
         (N'AL_TYP'),              
         (N'ALARM_PAGE_AP'),
         (N'ALARM_PAGE_PA'),        
         (N'ALARM_PAGE_PC'), 
         (N'AP_STATE_HEADER'),               
         (N'APP_MODULE_OUTBOUND_LIST'),
         (N'APPLICATION_MODULE_ACTION'),
         (N'APPLICATION_MODULE_PUB_OBJ'),
         (N'APPLICATION_MODULE_PUB_PROPERTY'),
         (N'APPLICATION_MODULE_ACTION_PARAM'),
         (N'APPLICATION_MODULE_LOGDEV_MAP'),
         (N'APPLICATION_MODULE_AREA_MAP'),
         (N'BADGE_PROF'),
         (N'BADGE_FIELDS'),
         (N'BADGE_PROF_FIELDS_DEFAULTS')
) AS t(t);
SELECT t.TableName, 
    ColumnName = c.name,
    DataType   = c.system_type_name,
    Ordinal    = c.column_ordinal
  INTO #Columns
  FROM #Tables AS t 
  CROSS APPLY
  (
    SELECT name, system_type_name, column_ordinal
      FROM sys.dm_exec_describe_first_result_set
      (N'SELECT * FROM ' + t.TableName, NULL, 1)
  ) AS c;
 


SELECT t.TableName, ColumnName = c.name
INTO #PrimaryKeys
FROM #Tables AS t
INNER JOIN sys.index_columns AS ic 
      ON ic.[object_id] = t.ObjectID 
INNER JOIN sys.columns AS c
      ON ic.column_id = c.column_id
      AND ic.[object_id] = c.[object_id]
INNER JOIN sys.key_constraints AS pk
      ON pk.parent_object_id = c.object_id
      AND pk.type = N'PK'
      AND pk.unique_index_id = ic.index_id;
 
SELECT * FROM #PrimaryKeys;

SELECT 
  ConstraintTable = ct.TableName,
  ConstraintColumns = STUFF((SELECT N',' + c.name
    FROM sys.columns AS c 
    INNER JOIN sys.foreign_key_columns AS fkc 
    ON fkc.parent_column_id = c.column_id
    AND fkc.parent_object_id = c.[object_id]
    WHERE fkc.constraint_object_id = fk.[object_id]
    ORDER BY fkc.constraint_column_id 
    FOR XML PATH(N''), 
    TYPE).value(N'./text()[1]', N'nvarchar(max)'), 1, 1, N''),
  ReferencedTable = rt.TableName,
  ReferencedColumns = STUFF((SELECT N',' + c.name
    FROM sys.columns AS c 
    INNER JOIN sys.foreign_key_columns AS fkc 
    ON fkc.referenced_column_id = c.column_id
    AND fkc.referenced_object_id = c.[object_id]
    WHERE fkc.constraint_object_id = fk.[object_id]
    ORDER BY fkc.constraint_column_id 
    FOR XML PATH(N''), 
    TYPE).value(N'./text()[1]', N'nvarchar(max)'), 1, 1, N'')
INTO #ForeignKeys
FROM sys.foreign_keys AS fk
INNER JOIN #Tables AS rt -- referenced table
  ON fk.referenced_object_id = rt.ObjectID
INNER JOIN #Tables AS ct -- constraint table
  ON fk.parent_object_id = ct.ObjectID;
 
SELECT * FROM #ForeignKeys;

CREATE TABLE dbo.Numbers
(
  n int PRIMARY KEY
);
 
;WITH n(n) AS 
(
  SELECT TOP (1000) number FROM master.dbo.spt_values
    WHERE [type] = N'P' AND number BETWEEN 1 AND 1000
    ORDER BY number
)
INSERT dbo.Numbers(n)
  SELECT TOP (1000000) n = ROW_NUMBER() OVER (ORDER BY n1.n)
  FROM n AS n1 CROSS JOIN n AS n2 -- CROSS JOIN n AS n3
  ORDER BY n;
GO
 
CREATE FUNCTION dbo.SplitStrings_Ordered
(
    @List       nvarchar(max),
    @Delimiter  nvarchar(255)
)
RETURNS TABLE
AS
    RETURN ( SELECT n, s = SUBSTRING(@List,n,
        CHARINDEX(@Delimiter,@List+@Delimiter,n)-n)
      FROM ( SELECT n FROM dbo.Numbers WHERE n <= LEN(@List)
      AND SUBSTRING(@Delimiter+@List,n,LEN(@Delimiter)) = @Delimiter
      ) AS y );
GO

DECLARE @output nvarchar(max) = N'';
 
SELECT @output += char(13) + char(10) + N'Table ' 
  + QUOTENAME(TableName, char(34)) 
  + char(13) + char(10) + N'{'
  + char(13) + char(10) + STUFF((SELECT char(13) + char(10) 
        + space(4) + c.ColumnName + N' ' + c.DataType 
        + CASE WHEN pk.ColumnName IS NOT NULL THEN N' [pk]' ELSE N'' END
      FROM #Columns AS c
      LEFT OUTER JOIN #PrimaryKeys AS pk
        ON c.TableName = pk.TableName
        AND c.ColumnName = pk.ColumnName
      WHERE c.TableName = t.TableName
      ORDER BY c.Ordinal FOR XML PATH(N''),
        TYPE).value(N'./text()[1]', N'nvarchar(max)'),2,1,'')
  + char(13) + char(10) + N'}' + char(13) + char(10)
FROM #Tables AS t;
 
SELECT @output += char(13) + char(10) + N'Ref: ' 
  + QUOTENAME(ConstraintTable, char(34))
  + N'.(' + ConstraintColumns + N') > '
  + QUOTENAME(ReferencedTable, char(34))
  + N'.(' + ReferencedColumns + N')'
FROM #ForeignKeys;
 
SELECT s FROM dbo.SplitStrings_Ordered(@output, char(13) + char(10)) ORDER BY n;