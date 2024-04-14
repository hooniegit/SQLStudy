-- TableName: DateDiffExample
-- Column: EventName, StartDate, EndDate

SELECT
    EventName,
    StartDate,
    EndDate,
    -- DATEDIFF(<YEAR/MONTH/DATE/HOUR/MINUTE/SECOND>, <DateColumnOne>, <DateColumnTwo>)
    -- CASE WHEN Condition <ColunmOne> ELSE <ColumnTwo> END
    -- GETDATE()
    DATEDIFF(MINUTE, StartDate, CASE WHEN EndDate IS NULL THEN GETDATE() ELSE EndDate END) AS Duration
FROM
    DateDiffExample
WHERE
    Duration > 5
ORDER BY StartDate DESC;
