SELECT
    E.fname,
    E.lname,
    S.fname,
    S.lname
FROM
    employee E
    LEFT JOIN employee S ON S.ssn = E.super_ssn;