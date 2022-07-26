create database quanlisinhvien;
use quanlisinhvien;
create table class(
ClassID int not null auto_increment primary key,
ClassName varchar(60) not null,
StartDate datetime not null,
status bit
);
create table student(
StudentID int not null auto_increment primary key,
Studentname varchar(30) not null,
Address varchar(50),
Phone varchar(20),
Status bit,
ClassID int not null,
foreign key (ClassID) references class(ClassID)
);
create table subject(
SubID int not null auto_increment primary key,
Subname varchar(30) not null,
Credit tinyint not null default 1,
check(Credit >=1),
Status bit default 1
);
create table mark(
MarkID int not null auto_increment primary key,
SubID int not null,
StudentID int not null ,
Mark float default 0,
check(Mark between 0 and 100),
ExamTimes Tinyint default 1,
unique key(SubID,StudentID),
foreign key(SubID) references subject(SubID),
foreign key(StudentID) references student(StudentID)
);