SELECT
  B.department_name, B.city_name,
  COUNT(B.department_name) AS hiring
FROM
  `I_CID_05.employees_2010`A
RIGHT OUTER JOIN
  `I_CID_05.employees_2011`B
ON
  A.employeeID = B.employeeID
GROUP BY
  B.city_name, B.department_name
ORDER BY
  hiring DESC
  LIMIT 3;
