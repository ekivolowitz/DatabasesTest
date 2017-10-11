CREATE TABLE Department(
	DID CHAR(30) PRIMARY KEY,
	Name CHAR(50),
	Address VARCHAR(255)
);

CREATE TABLE Student(
	StudentID CHAR(50) PRIMARY KEY,
	Name CHAR(30),
	Year CHAR(5),
	Major CHAR(30)
);

CREATE TABLE Takes(
	StudentID CHAR(50),
	CID CHAR(50),
	Semester CHAR(30),
	Year CHAR(5),
	PRIMARY KEY(StudentID, CID, Semester, Year) 
);

CREATE TABLE Chair(
	DID CHAR(50) PRIMARY KEY,
	SID CHAR(50)
);

CREATE TABLE CanEnroll(
	SID CHAR(50),
	CID CHAR(50),
	PRIMARY KEY(SID, CID)
);

CREATE TABLE Staff(
	SID CHAR(50) PRIMARY KEY,
	DID CHAR(50),
	Name CHAR(30),
	Age INT
);

CREATE TABLE CourseDescription(
	CID CHAR(50) PRIMARY KEY,
	Name CHAR(30),
	Credits INT
);
CREATE TABLE CourseInstance(
	CID CHAR(30),
	Semester CHAR(30),
	Year CHAR(5),
	SID CHAR(50),
	IsOpen INTEGER,
	BID CHAR(50),
	RoomNumber CHAR(10),
	PRIMARY KEY(CID, Semester, Year)
);

CREATE TABLE Professor(
	SID CHAR(50) PRIMARY KEY,
	Tenure BOOL,
	RoomNumber CHAR(10)
);

CREATE TABLE Admin(
	SID CHAR(50) PRIMARY KEY,
	RoomNumber CHAR(10)
);

CREATE TABLE Building(
	BID CHAR(50) PRIMARY KEY,
	DID CHAR(50),
	Name CHAR(30),
	NumRooms INT
);

CREATE TABLE Room(
	BID CHAR(50),
	RoomNumber CHAR(10),
	Capacity INT,
	PRIMARY KEY(BID, RoomNumber)
);
