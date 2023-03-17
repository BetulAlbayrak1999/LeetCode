/* Write your PL/SQL query statement below */

WITH t1 AS(
        SELECT users_id
        FROM users
        WHERE banned = 'Yes'
), t2 AS(
        SELECT request_at, COUNT(*)AS ctrip
        FROM trips t
        WHERE client_id NOT IN(
                SELECT users_id
                FROM t1
        )AND driver_id NOT IN(
                SELECT users_id
                FROM t1
        )AND status NOT IN('completed')
        GROUP BY request_at
), t3 AS(
        SELECT request_at, COUNT(*)AS comtrip
        FROM trips t
        WHERE client_id NOT IN(
                SELECT users_id
                FROM t1
        )AND driver_id NOT IN(
                SELECT users_id
                FROM t1
        )
        GROUP BY request_at
)
SELECT t3.request_at AS "Day", round(nvl((t2.ctrip / t3.comtrip), 0), 2)AS "Cancellation Rate"
FROM t2 right
JOIN t3
ON t2.request_at = t3.request_at
WHERE TO_DATE(t3.request_at, 'YYYY-MM-DD')BETWEEN TO_DATE('20131001', 'YYYYMMDD')AND TO_DATE('20131003', 'YYYYMMDD')