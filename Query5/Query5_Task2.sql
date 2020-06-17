SELECT r."RobberId",r."Nickname"
FROM "Robbers" r
INNER JOIN "HasAccounts" h ON h."RobberId" = r."RobberId"
INNER JOIN "Accomplices" a ON a."RobberId" = r."RobberId"
GROUP BY r."RobberId",r."Nickname";