-- 목적 : 부분적으로 Column을 공유하는 4개의 Table JOIN

SELECT * FROM
    (SELECT
        -- JOIN 위치 명시
        table_two.column_five,
        table_two.column_six,
        table_one.startdate,
        table_one.enddate,
        DATEDIFF(MINUTE, startdate, CASE WHEN enddate IS NULL THEN GETDATE() ELSE enddate END) AS timecolumn -- 시간차 계산 함수 + 조건문 사용
    FROM -- 이후의 INNER JOIN이 가장 먼저 동작
        table_one
    INNER JOIN
        table_two ON table_one.column_one = table_two.column_one
    INNER JOIN
        (SELECT
            column_two
            column_three
        FROM
            table_three
        WHERE
            name = "NAME") As table_3_select
    INNER JOIN
        table_four ON table_3_select.column_four = table_four.column_four) As DataSet -- SELECT 대상에는 반드시 이름이 필요
WHERE timecolumn > 5
ORDER BY enddate DESC;
