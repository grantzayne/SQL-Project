SELECT b."BankName",b."City",b."Security",p."NoRobbers"
FROM "Banks" b
INNER JOIN "Plans" p ON b."BankName" = p."BankName" AND b."City" = p."City";