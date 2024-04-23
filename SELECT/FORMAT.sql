-- TableName: DateDiffExample
-- Column: EventName, StartDate, EndDate

SELECT 
    EventName,
    -- FORMAT(<ColumnOne>, '<DateFormat>', '<Region>')
    FORMAT(startevent,  'yyyy-MM-dd tt hh:mm:ss', 'ko-KR') AS StartDate,
    FORMAT(endevent, 'yyyy-MM-dd tt hh:mm:ss', 'ko-KR') AS EndDate,
    DATEDIFF(MINUTE, StartDate, CASE WHEN EndDate IS NULL THEN GETDATE() ELSE EndDate END) AS Along 
FROM
    FormatTable
