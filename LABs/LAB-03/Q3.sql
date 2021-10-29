SELECT
    pnumber
FROM
    project
WHERE
    pnumber IN (
        SELECT
            W.pno
        FROM
            employee E,
            works_on W
        WHERE
            E.lname = 'Smith'
            AND E.ssn = W.essn
    )
    OR pnumber IN (
        SELECT
            W.pno
        FROM
            works_on W,
            department D,
            employee E
        WHERE
            W.essn = D.mgr_ssn
            AND W.essn = E.ssn
            AND E.lname = 'Smith'
    );