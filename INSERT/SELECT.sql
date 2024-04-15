-- TableName: SampleTable, SourceTable
-- Column: ColumnString, ColumnNumber, StartDate

INSERT INTO
    SampleTable (ColumnString, ColumnNumber, StartDate)
SELECT
    ColumnString, ColumnNumber, StartDate
FROM
    SourceTable
WHERE
    StartDate > '2023-12-31';
