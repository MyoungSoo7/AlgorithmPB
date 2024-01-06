SELECT
    USER_ID,
    NICKNAME,
    SUM(PRICE) TOTAL_SALES
FROM
    USED_GOODS_BOARD A
    INNER JOIN USED_GOODS_USER B
        ON  A.WRITER_ID = B.USER_ID
WHERE 
    STATUS LIKE 'DONE'
GROUP BY WRITER_ID
    HAVING TOTAL_SALES >= 700000
ORDER BY TOTAL_SALES