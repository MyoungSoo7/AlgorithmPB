SELECT
    FLAVOR
FROM(
    SELECT
        *
    FROM
        JULY 
    UNION ALL
        SELECT
            *
        FROM
            FIRST_HALF
    ) ORDERS
GROUP BY
    FLAVOR
ORDER BY
    SUM(TOTAL_ORDER) DESC
LIMIT 3