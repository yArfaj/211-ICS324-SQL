SELECT
    fname,
    lname,
    address
FROM
    employee
WHERE
    dno = (
        SELECT
            dnumber
        FROM
            department
        WHERE
            dname = 'Research'
    );