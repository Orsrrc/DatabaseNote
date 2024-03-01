CREATE TABLE Student
(
Sno char(7) PRIMARY KEY,
Sname char(10) NOT NULL,
Ssex char(2) CHECK(Ssex='男' OR Ssex='女'),
Sage tinyint CHECK(Sage>=15 AND Sage<=45),
Sdept char(20) DEFAULT '计算机系' 
)
CREATE TABLE Course
(
Cno char(10) NOT NULL,
Cname char(20) NOT NULL,
Ccredit tinyint CHECK(Ccredit>0),
Semester tinyint CHECK(Semester>0),
PRIMARY KEY(Cno)
)
CREATE TABLE SC
(
Sno char(7) NOT NULL,
Cno char(10) NOT NULL,
Grade tinyint,
CHECK(Grade>=0 AND Grade<=100),
PRIMARY KEY(Sno,Cno),
FOREIGN KEY(Sno) REFERENCES Student(Sno),
FOREIGN KEY(Cno) REFERENCES Course(Cno)
)
