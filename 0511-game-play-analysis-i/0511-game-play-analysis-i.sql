/* Write your PL/SQL query statement below */

SELECT 
player_id AS "player_id", 
MIN(TO_CHAR(event_date, 'YYYY-MM-DD')) AS "first_login" FROM activity 
GROUP BY player_id;