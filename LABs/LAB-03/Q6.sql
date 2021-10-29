SELECT
    E.fname,
    E.minit,
    E.lname,
    E.address,
    D.dname
FROM
    employee E
    JOIN department D ON E.dno = D.dnumber
    AND E.salary = (
        SELECT
            Max(salary)
        FROM
            employee
    );