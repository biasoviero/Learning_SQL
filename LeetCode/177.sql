CREATE OR REPLACE FUNCTION NthHighestSalary(N INT) RETURNS TABLE (Salary INT) AS $$
BEGIN
  RETURN QUERY (
    SELECT COALESCE(
        (SELECT DISTINCT Employee.salary
        FROM Employee
        ORDER BY salary DESC
        LIMIT
            CASE WHEN N <= 0
                THEN 0
            ELSE
                1 END
        OFFSET 
            CASE WHEN N > 0 
                THEN N - 1 
            ELSE 
                0 END),
        NULL
    )  
  );
END;
$$ LANGUAGE plpgsql;