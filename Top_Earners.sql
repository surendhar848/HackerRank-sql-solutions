SELECT 
  MAX(salary * months) AS max_earning,
  COUNT(*) AS count_of_max_earning
FROM Employee
WHERE salary * months = (
  SELECT MAX(salary * months) FROM Employee
