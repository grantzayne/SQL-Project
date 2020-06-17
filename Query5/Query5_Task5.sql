SELECT "City",MAX("Share") AS "HighShare"
FROM "Accomplices"
GROUP BY "City";

SELECT a."BankName",a."City",a."Date"
FROM "Accomplices" a
INNER JOIN (
	SELECT "City",MAX("Share") AS "HighShare"
	FROM "Accomplices"
	GROUP BY "City"
) m ON (m."City" = a."City");