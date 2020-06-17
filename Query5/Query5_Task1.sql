SELECT "BankName","City",SUM("Amount") AS "Total Amount"
FROM "Robberies"
GROUP BY "BankName","City";