SELECT
    fname,
    lname,
    address
FROM
    EMPLOYEE
WHERE
    dno = (
        SELECT
            dnumber
        FROM
            DEPARTMENT
        WHERE
            dname = 'Research'
    );