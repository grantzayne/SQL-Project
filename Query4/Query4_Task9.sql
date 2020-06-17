SELECT "RobberId","Nickname",("Age"-"NoYears") AS "Number of Years"
FROM "Robbers"
WHERE "Age"/2 < "NoYears";
