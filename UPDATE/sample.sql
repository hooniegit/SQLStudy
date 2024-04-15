-- TableName: SampleTable
-- Column: ColumnString, ColumnNumber, StartDate

UPDATE
    SampleTable
SET
    ColumnString = 'EmptyData',
    ColumnNumber = 240415
WHERE
    StartDate = '2024-04-15';
