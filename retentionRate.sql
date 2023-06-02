SELECT 
  ((SELECT
    COUNT(employeeID)
  FROM
    `I_CID_05.employees_2010`
  WHERE
    status = 'ACTIVE'
    AND recorddate_key >= '2010-01-01')
  /
  (SELECT
      COUNT(employeeID)
    FROM
      `I_CID_05.employees_2011`
    WHERE
      status = 'ACTIVE'
      AND recorddate_key <= '2011-12-31'))*100 AS RR1011
