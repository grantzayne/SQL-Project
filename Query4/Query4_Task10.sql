SELECT r."RobberId" AS "RobberId",r."Nickname",s."Description"
FROM "Robbers" r
INNER JOIN "HasSkills" h ON h."RobberId" = r."RobberId"
INNER JOIN "Skills" s ON h."SkillId" = s."SkillId"
GROUP BY r."RobberId",s."Description";