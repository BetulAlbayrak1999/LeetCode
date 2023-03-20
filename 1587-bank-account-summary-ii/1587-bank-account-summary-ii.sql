/* Write your PL/SQL query statement below */

SELECT * FROM
(
    SELECT 
    u.name AS "NAME", 
    SUM(t.amount) AS "BALANCE" 
    FROM users u
    NATURAL JOIN
    transactions t
    GROUP BY account, u.name
) WHERE balance > 10000;