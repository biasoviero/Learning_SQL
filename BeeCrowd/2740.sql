SELECT
CASE
    WHEN position < 4 THEN
        CONCAT('Podium: ', team)
    WHEN position > 13 THEN
        CONCAT('Demoted: ', team)
END AS name
FROM league
WHERE position < 4 OR position > 13