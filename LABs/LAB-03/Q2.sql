SELECT
    fname,
    minit,
    lname,
    address
FROM
    employee
WHERE
    sex = 'f'
    AND ssn IN (
        SELECT
            mgr_ssn
        FROM
            department
    );