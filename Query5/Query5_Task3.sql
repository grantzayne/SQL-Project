SELECT r."BankName",r."City"
FROM "Robberies" r
INNER JOIN "Plans" p ON p."BankName" = r."BankName" AND p."City" = r."City"
GROUP BY r."BankName",r."City",p."PlannedDate",r."Date"
HAVING (DATE_PART('year',p."PlannedDate") - DATE_PART('year',r."Date") = 0);