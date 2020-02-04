DROP TABLE Customer;
DROP TABLE Facility;
DROP TABLE Location;

CREATE TABLE Customer (
	custno		VARCHAR(4) 		NOT NULL,
    custname	VARCHAR(25) 	NOT NULL,
    address		VARCHAR(200) 	NOT NULL,
    internal	VARCHAR(1) 		NOT NULL,
    contact		VARCHAR(25)		NOT NULL,
    phone		INTEGER 		NOT NULL,
    city		VARCHAR(10)		NOT NULL,
    state 		VARCHAR(3)		NOT NULL,
    zip			INTEGER 		NOT NULL,
    PRIMARY KEY (custno)
);

CREATE TABLE Facility (
	facno		VARCHAR(4)		NOT NULL,
    facname 	VARCHAR(30)		NOT NULL,
    PRIMARY KEY (facno)					,
    UNIQUE(facname)
);

CREATE TABLE Location (
	locno		VARCHAR(4)		NOT NULL,
    facno		VARCHAR(4)		NOT NULL,
    locname		VARCHAR(30)		NOT NULL,
    PRIMARY KEY (locno) 				,
    FOREIGN KEY (facno) REFERENCES Facility(facno)
);


