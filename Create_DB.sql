--PRACTICAL DATABASE CONCEPTS MILESTONE 1
--Prateek Kumar Singh, s3890089



create table Students (
    fname varchar(12),
    lname varchar(14),
    student_id integer, 
    DOB date,
    sex char(1),
    Project_gp_no char(2),
    Program varchar(12),
    Nationality varchar(21),
    primary key (student_id)
    foreign key (Project_gp_no) references Project(group_no),
    foreign key (Program) references Program(code)
);

create table Parents(
    fname varchar(12),
    lname varchar(12),
    child integer,
    Relation varchar(12),
    occupation varchar(21),
    primary key(fname, child),
    foreign key(child) references students(student_id)
);

create table Faculties(
    fname varchar(12),
    lname varchar(12),
    id integer not null,
    supervisor integer,
    primary key (id)
);

create table Program(
    name varchar(37),
    code varchar(12),
    duration char(7),
    Annual_fees integer,
    Total_credits integer,
    Start_date date,
    Coordinator integer,
    primary key (code),
    foreign key (Coordinator) references Faculties(id)
);

create table Project(
    title varchar(37),
    group_no char(2),
    faculty integer,
    primary key ( group_no),
    foreign key (faculty) references Faculties(id)
);
        
create table Campus(
    Location varchar(21),
    Program_code varchar(12),
    primary key (Location, Program_code),
    foreign key (Program_code) references Program(code)
);

create table Results(
    StudentID integer,
    Percentage real,
    Level varchar(6),
    primary key (StudentID),
    foreign key (StudentID) references students(student_id)
);

INSERT INTO Faculties(fname,lname,id,supervisor) VALUES('Bret','Lee','16449','70741');
INSERT INTO Faculties(fname,lname,id,supervisor) VALUES('Michael','Clarke','43777','73947');
INSERT INTO Faculties(fname,lname,id,supervisor) VALUES('Shane','Watson','47307','72978');
INSERT INTO Faculties(fname,lname,id,supervisor) VALUES('David','Warner','70741','73947');
INSERT INTO Faculties(fname,lname,id,supervisor) VALUES('Andrew ','Symonds','71479','72978');
INSERT INTO Faculties(fname,lname,id,supervisor) VALUES('Pat','Cummins','72978','70741');
INSERT INTO Faculties(fname,lname,id,supervisor) VALUES('Mitchel','Starc','73947','');
INSERT INTO Faculties(fname,lname,id,supervisor) VALUES('Shane','Warne','84900','73947');
INSERT INTO Faculties(fname,lname,id,supervisor) VALUES('Aaron','Finch','85001','70741');
INSERT INTO Faculties(fname,lname,id,supervisor) VALUES('Steve','Smith','93572','72978');
INSERT INTO Faculties(fname,lname,id,supervisor) VALUES('Carla','Stone','39572','95372');
INSERT INTO Faculties(fname,lname,id,supervisor) VALUES('Jessica','Chastain','95372','72978');

INSERT INTO Project(title,group_no,faculty) VALUES('Fake News Detection','C3','47307');
INSERT INTO Project(title,group_no,faculty) VALUES('Road Lane Line Detection','B2','93572');
INSERT INTO Project(title,group_no,faculty) VALUES('Sentiment Analysis','D4','71479');
INSERT INTO Project(title,group_no,faculty) VALUES('Forest Fire Prediction','A1','93572');
INSERT INTO Project(title,group_no,faculty) VALUES('Color Detection with Python','E5','72978');
INSERT INTO Project(title,group_no,faculty) VALUES('Weather Prediction','C1','47307');
INSERT INTO Project(title,group_no,faculty) VALUES('Keyword generation for google ads','B1','16449');
INSERT INTO Project(title,group_no,faculty) VALUES('Traffic Signs Recognition','D1','85001');
INSERT INTO Project(title,group_no,faculty) VALUES('Wine Quality Analysis','A5','84900');
INSERT INTO Project(title,group_no,faculty) VALUES('Stock Market Prediction','E3','70741');
INSERT INTO Project(title,group_no,faculty) VALUES('Driver Drowsiness Detection in Python','A3','39572');
INSERT INTO Project(title,group_no,faculty) VALUES('Crime Analysis','B5','95372');

INSERT INTO Program(name,code,duration,Annual_fees,Total_credits,Start_date,Coordinator) VALUES('Master of Analytics','MC242','2 Years','33600','180','01/03/2021','16449');
INSERT INTO Program(name,code,duration,Annual_fees,Total_credits,Start_date,Coordinator) VALUES('Master of Artificial Intelligence','MC271','2 Years','36480','150','15/03/2021','70741');
INSERT INTO Program(name,code,duration,Annual_fees,Total_credits,Start_date,Coordinator) VALUES('Master of Data Science','MC267','2 Years','36480','200','22/02/2021','73947');
INSERT INTO Program(name,code,duration,Annual_fees,Total_credits,Start_date,Coordinator) VALUES('Master of Statistics and Operations Research','MC004P12','2 Years','33600','190','07/03/2021','72978');
INSERT INTO Program(name,code,duration,Annual_fees,Total_credits,Start_date,Coordinator) VALUES('Master of Aerospace Engineering','MC256','1 Year','21000','80','27/06/2021','47307');
INSERT INTO Program(name,code,duration,Annual_fees,Total_credits,Start_date,Coordinator) VALUES('Master of Material Sciences','MC771','1 Year','23000','100','07/03/2021','73947');
INSERT INTO Program(name,code,duration,Annual_fees,Total_credits,Start_date,Coordinator) VALUES('Bachelor of Computer Science','BC541','4 Years','53600','280','03/03/2021','84900');
INSERT INTO Program(name,code,duration,Annual_fees,Total_credits,Start_date,Coordinator) VALUES('Master of Engineering Management','MC0042','2 Years','36480','150','17/04/2021','85001');
INSERT INTO Program(name,code,duration,Annual_fees,Total_credits,Start_date,Coordinator) VALUES('Bachelor of Electronics Engineering','BC879','4 Years','56480','300','21/02/2021','93572');
INSERT INTO Program(name,code,duration,Annual_fees,Total_credits,Start_date,Coordinator) VALUES('Bachelor of Mechanical Engineering','BC789','4 Years','53600','290','08/07/2021','43777');
INSERT INTO Program(name,code,duration,Annual_fees,Total_credits,Start_date,Coordinator) VALUES('Bachelor of Civil Engineering','BC989','4 Years','57600','290','07/03/2021','39572');
INSERT INTO Program(name,code,duration,Annual_fees,Total_credits,Start_date,Coordinator) VALUES('Bachelor of Chemical Engineering','BC073','4 Years','63600','300','26/02/2021','95372');

INSERT INTO Students(fname,lname,student_id,DOB,sex,Project_gp_no,Program,Nationality) VALUES('John ','Greene','1890259','26/11/1996','M','C3','MC242','Australian');
INSERT INTO Students(fname,lname,student_id,DOB,sex,Project_gp_no,Program,Nationality) VALUES('David','Geller','5232190','06/10/1998','M','E3','MC271','British');
INSERT INTO Students(fname,lname,student_id,DOB,sex,Project_gp_no,Program,Nationality) VALUES('Mike','Buffay','4210569','10/01/1997','M','D4','MC267','British');
INSERT INTO Students(fname,lname,student_id,DOB,sex,Project_gp_no,Program,Nationality) VALUES('Amy','Fowler','1548242','12/12/1994','F','A1','MC004P12','Netherlands');
INSERT INTO Students(fname,lname,student_id,DOB,sex,Project_gp_no,Program,Nationality) VALUES('Sarah','Bing','8384740','11/09/1992','F','E5','MC242','American');
INSERT INTO Students(fname,lname,student_id,DOB,sex,Project_gp_no,Program,Nationality) VALUES('Emliy','Tribbiani','2576996','05/05/1996','F','C3','MC271','American');
INSERT INTO Students(fname,lname,student_id,DOB,sex,Project_gp_no,Program,Nationality) VALUES('Joy','Cooper','4103785','05/05/1996','M','B2','MC267','Scotland');
INSERT INTO Students(fname,lname,student_id,DOB,sex,Project_gp_no,Program,Nationality) VALUES('Peter','Wolowitz','2892938','05/05/1996','M','D4','MC004P12','British');
INSERT INTO Students(fname,lname,student_id,DOB,sex,Project_gp_no,Program,Nationality) VALUES('Clark','Hofstader','3025443','05/05/1996','M','A1','MC242','American');
INSERT INTO Students(fname,lname,student_id,DOB,sex,Project_gp_no,Program,Nationality) VALUES('Vinod','Koothrapaali','8525362','25/05/1993','M','E5','MC271','Indian');
INSERT INTO Students(fname,lname,student_id,DOB,sex,Project_gp_no,Program,Nationality) VALUES('Paul','Phoenix','8743542','19/09/1997','M','C1','MC256','French');
INSERT INTO Students(fname,lname,student_id,DOB,sex,Project_gp_no,Program,Nationality) VALUES('Colin','Stevens','2136547','18/02/1998','M','D1','MC771','Norwegian');
INSERT INTO Students(fname,lname,student_id,DOB,sex,Project_gp_no,Program,Nationality) VALUES('Richard','Burke','5254698','26/10/1995','M','A5','MC256','American');
INSERT INTO Students(fname,lname,student_id,DOB,sex,Project_gp_no,Program,Nationality) VALUES('Sakura','Haruno','1321513','13/03/1999','F','C1','MC771','Japan');
INSERT INTO Students(fname,lname,student_id,DOB,sex,Project_gp_no,Program,Nationality) VALUES('Ying','Zhang','5613354','29/12/1998','F','A3','MC0042','China');
INSERT INTO Students(fname,lname,student_id,DOB,sex,Project_gp_no,Program,Nationality) VALUES('Steve','Rogers','2131511','27/03/2002','M','B1','BC073','American');
INSERT INTO Students(fname,lname,student_id,DOB,sex,Project_gp_no,Program,Nationality) VALUES('Tony','Banner','2135461','30/08/1997','M','A5','MC256','American');
INSERT INTO Students(fname,lname,student_id,DOB,sex,Project_gp_no,Program,Nationality) VALUES('Natasha','Romanoff','3214431','31/05/1998','F','A5','MC0042','Russian');
INSERT INTO Students(fname,lname,student_id,DOB,sex,Project_gp_no,Program,Nationality) VALUES('Robin','Stinson','1315643','17/05/1996','F','D1','MC0042','Canadian');
INSERT INTO Students(fname,lname,student_id,DOB,sex,Project_gp_no,Program,Nationality) VALUES('Hinata','Hyuga','1448987','05/09/2001','F','B1','BC879','Japan');
INSERT INTO Students(fname,lname,student_id,DOB,sex,Project_gp_no,Program,Nationality) VALUES('Chloe','Decker','7754631','12/11/2002','F','B5','BC989','American');
INSERT INTO Students(fname,lname,student_id,DOB,sex,Project_gp_no,Program,Nationality) VALUES('Dan','Brown','8765314','09/04/1999','M','B5','BC989','British');


INSERT INTO Parents(fname,lname,child,Relation,occupation) VALUES('Rachel ','Greene','1890259','Mother','Fashion Designer');
INSERT INTO Parents(fname,lname,child,Relation,occupation) VALUES('Ross','Geller','5232190','Father','Paleontologist');
INSERT INTO Parents(fname,lname,child,Relation,occupation) VALUES('Phoebe','Buffay','4210569','Mother','Masseuse');
INSERT INTO Parents(fname,lname,child,Relation,occupation) VALUES('Monica','Geller','5232190','Mother','Chef');
INSERT INTO Parents(fname,lname,child,Relation,occupation) VALUES('Chandler ','Bing','8384740','Father','Analyst');
INSERT INTO Parents(fname,lname,child,Relation,occupation) VALUES('Joey','Tribbiani','2576996','Father','Actor');
INSERT INTO Parents(fname,lname,child,Relation,occupation) VALUES('Jennifer','Simmons','7754631','Mother','Home Maker');
INSERT INTO Parents(fname,lname,child,Relation,occupation) VALUES('Sheldon','Cooper','4103785','Father','Physicist');
INSERT INTO Parents(fname,lname,child,Relation,occupation) VALUES('Howard','Wolowitz','2892938','Father','Engineer');
INSERT INTO Parents(fname,lname,child,Relation,occupation) VALUES('Leonard','Hofstader','3025443','Father','Physicist');
INSERT INTO Parents(fname,lname,child,Relation,occupation) VALUES('Raj ','Koothrapaali','8525362','Father','Astrophysicist');
INSERT INTO Parents(fname,lname,child,Relation,occupation) VALUES('Amy','Fowler','4103785','Mother','Neuro Bioloigist');
INSERT INTO Parents(fname,lname,child,Relation,occupation) VALUES('Penny','Hofstader','3025443','Mother','Sales Representative');
INSERT INTO Parents(fname,lname,child,Relation,occupation) VALUES('Bernadette','Wolowitz','2892938','Mother','Home Maker');

INSERT INTO Campus(Location, Program_code) VALUES('Brunswick Campus','MC242');
INSERT INTO Campus(Location, Program_code) VALUES('Bundoora Campus','MC271');
INSERT INTO Campus(Location, Program_code) VALUES('City Campus','MC267');
INSERT INTO Campus(Location, Program_code) VALUES('Bendigo Airfield','MC004P12');
INSERT INTO Campus(Location, Program_code) VALUES('Bundoora Campus','MC004P12');
INSERT INTO Campus(Location, Program_code) VALUES('Hamilton','MC004P12');
INSERT INTO Campus(Location, Program_code) VALUES('City Campus','MC271');
INSERT INTO Campus(Location, Program_code) VALUES('Brunswick Campus','MC267');
INSERT INTO Campus(Location, Program_code) VALUES('City Campus','BC541');
INSERT INTO Campus(Location, Program_code) VALUES('Bendigo Airfield','MC0042');
INSERT INTO Campus(Location, Program_code) VALUES('Bundoora Campus','BC879');
INSERT INTO Campus(Location, Program_code) VALUES('Hamilton','BC789');

INSERT INTO Results(StudentID,Percentage,Level) VALUES('1890259','62','PASS');
INSERT INTO Results(StudentID,Percentage,Level) VALUES('4210569','78.5','DI');
INSERT INTO Results(StudentID,Percentage,Level) VALUES('5232190','88.2','HD');
INSERT INTO Results(StudentID,Percentage,Level) VALUES('7754631','67.3','CREDIT');
INSERT INTO Results(StudentID,Percentage,Level) VALUES('4103785','74.5','CREDIT');
INSERT INTO Results(StudentID,Percentage,Level) VALUES('3025443','65','CREDIT');
INSERT INTO Results(StudentID,Percentage,Level) VALUES('2892938','87','HD');
INSERT INTO Results(StudentID,Percentage,Level) VALUES('2135461','89','HD');
INSERT INTO Results(StudentID,Percentage,Level) VALUES('3214431','76','DI');
INSERT INTO Results(StudentID,Percentage,Level) VALUES('1315643','79.5','DI');
INSERT INTO Results(StudentID,Percentage,Level) VALUES('1448987','82.3','DI');
INSERT INTO Results(StudentID,Percentage,Level) VALUES('8765314','81.4','DI');