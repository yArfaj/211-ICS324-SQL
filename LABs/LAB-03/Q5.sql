SELECT
    p.pnumber,
    D.dnumber,
    E.lname,
    E.address,
    E.bdate
FROM
    project P
    JOIN department D ON P.dnum = D.dnumber
    AND P.plocation = 'Stafford'
    JOIN employee E ON D.mgr_ssn = E.ssn;