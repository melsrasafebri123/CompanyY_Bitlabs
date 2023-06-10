SELECT DISTINCT gender_full,
  SUM(CASE WHEN DATE_DIFF(CAST(recorddate_key AS DATE),birthdate_key,YEAR) <= 30 AND gender_THEN 1 ELSE 0 END) AS '<=30',
  SUM(CASE WHEN DATE_DIFF(CAST(recorddate_key AS DATE),birthdate_key,YEAR) BETWEEN 31 AND 40 THEN 1 ELSE 0 END) AS '31-40',
  SUM(CASE WHEN DATE_DIFF(CAST(recorddate_key AS DATE),birthdate_key,YEAR) BETWEEN 41 AND 50 THEN 1 ELSE 0 END) AS '41-50',
  SUM(CASE WHEN DATE_DIFF(CAST(recorddate_key AS DATE),birthdate_key,YEAR) BETWEEN 51 AND 60 THEN 1 ELSE 0 END) AS '51-60',
  SUM(CASE WHEN DATE_DIFF(CAST(recorddate_key AS DATE),birthdate_key,YEAR) >= 60 THEN 1 ELSE 0 END) AS '>=60'
FROM
  `I_CID_05.employees_2011`
WHERE
  terminationdate_key = '1900-01-01' AND status='ACTIVE'
GROUP BY gender_full;
