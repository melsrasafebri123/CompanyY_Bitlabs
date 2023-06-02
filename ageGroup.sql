SELECT DISTINCT gender_full,(SUM(CASE WHEN gender_full='Female' THEN 1 WHEN gender_full='Male' THEN 1 ELSE 0 END))/(SUM(CASE WHEN gender_full='Female' THEN 1 ELSE 0 END)+SUM(CASE WHEN gender_full='Male' THEN 1 ELSE 0 END))AS ratio,
  SUM(CASE WHEN DATE_DIFF(CAST(recorddate_key AS DATE),birthdate_key,YEAR) <= 30 THEN 1 ELSE 0 END) AS A,
  SUM(CASE WHEN DATE_DIFF(CAST(recorddate_key AS DATE),birthdate_key,YEAR) BETWEEN 31 AND 40 THEN 1 ELSE 0 END) AS B,
  SUM(CASE WHEN DATE_DIFF(CAST(recorddate_key AS DATE),birthdate_key,YEAR) BETWEEN 41 AND 50 THEN 1 ELSE 0 END) AS C,
  SUM(CASE WHEN DATE_DIFF(CAST(recorddate_key AS DATE),birthdate_key,YEAR) BETWEEN 51 AND 60 THEN 1 ELSE 0 END) AS D,
  SUM(CASE WHEN DATE_DIFF(CAST(recorddate_key AS DATE),birthdate_key,YEAR) >= 60 THEN 1 ELSE 0 END) AS E
FROM
  `I_CID_05.employees_2011`
WHERE
  terminationdate_key = '1900-01-01' AND status='ACTIVE'
GROUP BY gender_full;
