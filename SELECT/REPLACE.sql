-- TableName: ReplaceExample
-- Column: EventName, Explanation
-- Explanation: "EXP=( .. )"

SELECT
    EventName,
    -- REPLACE(<Column>, ('<OldString>', '<NewString>'))
    REPLACE(REPLACE(Explanation, 'EXP=(', ''), ')', '') AS Detail
FROM
    ReplaceExample
