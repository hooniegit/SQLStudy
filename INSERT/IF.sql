-- TableName: SampleTable
-- Column: ColumnString, ColumnNumber, StartDate

-- IF <condition> <task>
-- (NOT) EXISTS (SELECT 1 FROM <TableName> WHERE <condition>)
IF NOT EXISTS (SELECT 1 FROM SampleTable WHERE StartDate = '2023-12-31')
-- BEGIN <task> * n END
BEGIN
    INSERT INTO
        SampleTable (ColumnString, ColumnNumber, StartDate)
    VALUES 
        ('Hello, World!', 231231, '2023-12-31');
END;
