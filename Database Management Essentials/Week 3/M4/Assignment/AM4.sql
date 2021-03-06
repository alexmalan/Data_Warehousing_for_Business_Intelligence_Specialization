-- 1 - MYSql
SELECT DISTINCT CITY, 
				STATE, 
                ZIP
FROM 			CUSTOMER;

-- 2 - MYSql
SELECT 	EMPNAME, 
        PHONE, 
        EMAIL
FROM 	EMPLOYEE
WHERE 	PHONE LIKE '3-%';

-- 3 - MYSql
SELECT 	 *
FROM 	 RESOURCETBL
WHERE 	 RATE BETWEEN 10 AND 20
ORDER BY RATE;

-- 4 - MYSql
SELECT 	EVENTNO, 
		DATEAUTH, 
		STATUS
FROM 	EVENTREQUEST
WHERE 	(STATUS='Approved' OR STATUS='Denied') 
AND 	DATEAUTH BETWEEN '2018-07-01' AND '2018-07-31';

-- 5 - MYSql
SELECT 	L.LOCNO,
		L.LOCNAME
FROM 	LOCATION AS L 
INNER JOIN FACILITY
WHERE 	FACNAME = 'Basketball Arena';

-- 6 - MYSql
SELECT 	EP.PLANNO, 
		COUNT(EPL.PLANNO), 
        SUM(EPL.RESNO)
FROM 	EVENTPLAN AS EP, 
		EVENTPLANLINE AS EPL 
GROUP BY EP.PLANNO
HAVING COUNT(EP.PLANNO) > 0;
