CREATE FUNCTION getNthHighestSalary(N IN NUMBER) RETURN NUMBER IS
result NUMBER;
BEGIN
    select salary 
    into result 
    from 
    (
    select Distinct salary, DENSE_RANK() over(order by salary desc)  row_num
    from Employee 
    )
    where row_num = N;
    
    RETURN result;
END;