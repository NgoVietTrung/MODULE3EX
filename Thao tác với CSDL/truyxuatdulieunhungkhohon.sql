use quanlisinhvien;
select * from student where Studentname like 'H%';
select * from class where Month(StartDate)=12; 
select * from subject where Credit >=3 and Credit <=5;
SET SQL_SAFE_UPDATES = 0;
UPDATE `quanlisinhvien`.`student` SET `ClassID` = '2' WHERE (`Studentname` = 'Hung');
select S.Studentname,sub.Subname,M.mark
from student S join mark M on S.StudentID=M.StudentID join subject sub on M.SubID=sub.SubID
order by Mark DESC, Studentname;
