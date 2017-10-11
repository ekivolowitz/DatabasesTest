INSERT INTO Department (DID, Name, Address) VALUES ("CompSci", "Computer Science", "1210 W Dayton Street"),("Geog", "Geology", "221B Baker Street"),("Math", "Math", "123 Charter Street"),("SocSci", "Social Science", "100 Observatory"),("Soil", "Soil Science", "200 Dirt Road"),("CommArt", "Comm Arts", "420 Blabber Way"),("Edu", "Education", "178 Learning Drive"),("Med", "Medicine", "564 Help Me Street"),("Econ", "Economics", "678 School Road"),("Art", "Art", "654 Artsy Lane");

INSERT INTO Student (
	StudentID, Name, Year, Major
)
VALUES
("1", "Evan Kivolowitz", "Junior", "CompSci"),
("2", "Michael Ciancimino", "Senior", "CompSci"),
("3", "Dylan Ekenberg", "Senior", "CompSci"),
("4", "Riccardo Mutschlechner", "Senior", "Geog"),
("5", "Peter Van Sandt", "Senior", "Math"),
("6", "Bucky Badger", "Freshman", "CommArt"),
("7", "Pheonix Kim", "Sophomore", "Med"),
("8", "Harrison Brewton", "Sophomore", "Econ"),
("9", "Jonas Klare", "Freshman", "Soil"),
("a", "Andrew Geng", "Junior", "Edu");

INSERT INTO Takes (
	StudentID, CID, Semester, Year
)
VALUES
("1", "CS1", "FALL", "2017"),
("1", "ART1", "FALL", "2017"),
("1", "MATH1", "FALL", "2017"),
("2", "CS1", "FALL", "2017"),
("3", "CS1", "FALL", "2017"),
("4", "ART1", "FALL", "2017"),
("5", "ART1", "FALL", "2017"),
("6", "SOCSCI1", "FALL", "2015"),
("6", "COMMART1", "SPRING", "2016"),
("8", "EDU1", "FALL", "2018"),
("9", "COMMART1", "SPRING", "2016"),
("a", "MATH1", "SPRING", "2014");

INSERT INTO Chair (
	DID, SID
)
VALUES
("CompSci", "20"),
("Geog", "21"),
("Math", "32"),
("SocSci", "43"),
("Soil", "44"),
("CommArt", "25"),
("Edu", "26"),
("Med", "27"),
("Econ", "28"),
("Art" , "39");

INSERT INTO CanEnroll (
	SID, CID
)
VALUES
("20", "CS1"),
("30", "CS2"),
("30", "CS3"),
("30", "CS4"),
("30", "CS5"),
("40", "CS5"),
("40", "CS10"),
("39", "ART1"),
("22", "MATH1"),
("23", "SOCSCI1"),
("24", "COMMART1"),
("36", "EDU1"),
("37", "MED1"),
("29", "ART2"),
("29", "ART3");

INSERT INTO Staff (
SID, DID, Name, Age 
)
VALUES
("20", "CompSci", "Jerry Smits", 20),
("21", "Geog", "Alfred Jingles", 57),
("22", "Math", "Mike Michaels", 43),
("23", "SocSci", "Brandon Brandons", 34),
("24", "Soil", "Jacob Jacobson", 29),
("25", "CommArt", "John Johnson", 45),
("26", "Edu", "Harry Barry", 37),
("27", "Med", "Scary Terry", 37),
("28", "Econ", "Cheryl Spencer", 23),
("29", "Art", "Anna Vargas", 25),
("30", "CompSci", "Colin Henderson", 19),
("31", "Geog", "Tyler Murray", 53),
("32", "Math", "Jason Stevens", 78),
("33", "SocSci", "Steven Jumpingjacks", 33),
("34", "Soil", "Jordan Tylers", 36),
("35", "CommArt", "Johnny Jansen", 59),
("36", "Edu", "Varun Naik", 22),
("37", "Med", "Sam Stoppers", 25),
("38", "Econ", "Dylan Schmeglehoff", 27),
("39", "Art", "Tywin Lannister", 45),
("40", "CompSci", "Romeo Jameson", 20),
("41", "Geog", "Jack Daniels", 36),
("42", "Math", "Jimmy Bean", 45),
("43", "SocSci", "Johnny Walker", 56),
("44", "Soil", "Jimmy Buffet", 30),
("45", "CommArt", "Seymour Butts", 34);

INSERT INTO CourseInstance(
CID, Semester, Year, SID, IsOpen, BID, RoomNumber
)
VALUES
("CS1", "FALL", "2016", "20",0, "46", "20"),
("CS1", "SPRING", "2017", "20", 0, "46" ,"21"),
("CS1", "FALL", "2017", "20",1, "50" ,"30"),
("CS1", "SPRING", "2018", "20",0, "50 ", "12"),
("CS2", "SPRING", "2017","20" ,0, "53","14"),
("CS3", "FALL", "2017", "20", 1, "48", "5"),
("CS4", "SPRING", "2017","20",0, "48", "72"),
("CS5", "FALL", "2018", "20",0, "54", "5"),
("CS10", "SPRING", "2020", "20" ,0, "55", "2"),
("ART1", "FALL", "2017", "29", 1, "47", "22"),
("MATH1", "FALL", "2017", "30", 1, "46", "20"),
("MATH1", "SPRING", "2014", "22" ,0,"46", "20"),
("SOCSCI1", "FALL", "2015", "23",0, "46", "21"),
("COMMART1", "SPRING", "2016", "25", 0 , "50", "30"),
("EDU1", "FALL", "2018", "26", 0, "50", "12"),
("MED1", "SPRING", "2017", "27", 0, "53", "14"),
("ART2", "FALL", "2017", "29", 1, "48", "5"),
("ART3", "SPRING", "2017", "29", 0, "48", "72");

INSERT INTO CourseDescription(
	CID, Name, Credits
)
VALUES
("CS1", "Intro to databases", 3),
("CS2", "AI", 4),
("CS3", "101:101 - an Intro to Binary",4),
("CS4", "Learning Class", 7),
("CS5", "Functional Programming", 5),
("CS10", "Intro to Databases", 5),
("ART1", "Snowflakes", 1),
("MATH1", "Fractals", 30),
("SOCSCI1", "Criminal Minds", 2),
("COMMART1", "Sitcoms", 1),
("EDU1", "Teaching passive aggressive students", 3),
("MED1", "I need a healer", 4),
("ART2", "Photography", 1),
("ART3", "Underwater basket weaving", 1);

INSERT INTO Professor (
	SID, Tenure, RoomNumber
)
VALUES
("30",1, "20"),
("31", 0, "21"),
("32", 0, "30"),
("33",1, "12"),
("34", 0, "5"),
("35", 0, "72"),
("36", 1, "5"),
("37", 1, "2"),
("38", 1, "22"),
("39", 0, "14");

INSERT INTO Admin (
	SID, RoomNumber
)

VALUES
("1","20"),("2","21"),("3","30"),("4","12"),("5","14"),("6","5"),("7","72"),("8","5"),("9","2"),("10","22");

INSERT INTO Building (
BID, DID, Name, NumRooms
)
VALUES
("46", "CompSci", "Turing Hall", 10),
("47", "Geog", "Rockstar Hall", 20),
("48", "Math", "Mathymcmathface Hall", 69),
("49", "SocSci", "SS Guy Fieri Hall", 30),
("50", "Soil", "Flavor Town Hall", 51),
("51", "CommArt", "Talkalot Building", 49),
("52", "Edu", "Schoolio Building", 43),
("53", "Med", "Healthymchealthface Hospital", 109),
("54", "Econ", "Moneybags Building", 86),
("55", "Art", "Easel Hall", 24);


INSERT INTO Room (
	BID, RoomNumber, Capacity
)
VALUES
("46", "20", 30),
("46", "21", 23),
("50", "30", 69),
("50", "12", 80),
("53", "14", 20),
("48", "5", 1),
("48", "72", 100),
("54", "5", 18),
("55", "2", 72),
("47", "22", 30);