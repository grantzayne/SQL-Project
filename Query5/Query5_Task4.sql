SELECT r."RobberId",r."Nickname",s."Description"
FROM "Robbers" r
INNER JOIN "HasSkills" h ON h."RobberId" = r."RobberId"
INNER JOIN "Skills" s ON s."SkillId" = h."SkillId"
GROUP BY r."RobberId",r."Nickname",s."Description","Preference"
HAVING "Preference" = 1;