-- TableName: TableOne, TableTwo, TableThree
-- Column: EventName, Explanation, StartDate, EndDate

SELECT
    *
FROM
    (
        SELECT
            *
        FROM
            TableOne
        INNER JOIN
            TableTwo
        ON
            TableOne.ColumnOne = TableTwo.ColumnTwo
        INNER JOIN
            (
                SELECT
                    EventName,
                    Explanation,
                    StartDate,
                    EndDate,
                    DATEDIFF(MINUTE, StartDate, CASE WHEN EndDate IS NULL THEN GETDATE() ELSE EndDate END) AS Duration
                FROM
                    TableThree
            ) AS TableFour
        ON
            TableTwo.Detail = REPLACE(REPLACE(TableFour.Explanation, 'EXP=(', ''), ')', '') 
    ) As TableFive
WHERE
    Duration > 5
ORDER BY
    StartDate DESC;
