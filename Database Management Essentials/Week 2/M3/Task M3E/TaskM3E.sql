DROP TABLE Customer;
DROP TABLE Employee;
DROP TABLE OrderTbl;

CREATE TABLE Customer (
	CustNo			VARCHAR(8)	NOT NULL	,
    CustFirstName	VARCHAR(20)	NOT NULL	,
    CustLastName	VARCHAR(20)	NOT NULL	,
    CustCity		VARCHAR(20)				,
    CustState		VARCHAR(2)				,
    CustZip			VARCHAR(10)				,
    CustBal			NUMERIC(12,2)			,
    PRIMARY KEY (CustNo)
);

CREATE TABLE Employee (
	EmpNo			VARCHAR(8)	NOT NULL	,
    EmpFirstName	VARCHAR(20)	NOT NULL	,
    EmpLastName		VARCHAR(20)	NOT NULL	,
    EmpPhone		VARCHAR(15)				,
    EmpEmail		VARCHAR(20)	NOT NULL	,
    PRIMARY KEY (EmpNo),
	UNIQUE (EmpEmail)
);

CREATE TABLE OrderTbl (
	OrdNo		VARCHAR(8)	NOT NULL				,
    OrdDate		DATE		NOT NULL				,
    CustNo		VARCHAR(8)	NOT NULL				,
    EmpNo		VARCHAR(8)	NOT NULL				,
    PRIMARY KEY (OrdNo) 							,
    FOREIGN KEY (CustNo) REFERENCES Customer(CustNo),
    FOREIGN KEY (EmpNo)  REFERENCES Employee(EmpNo)	
);

