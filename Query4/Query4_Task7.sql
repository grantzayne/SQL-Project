SELECT r."RobberId",r."Nickname",SUM(a."Share") AS "Earnings"
FROM "Robbers" r
INNER JOIN "Accomplices" a ON a."RobberId" = r."RobberId"
GROUP BY r."RobberId"
HAVING SUM(a."Share") > 20000
ORDER BY "Earnings" DESC;