use quanlisinhvien;
select * from student;
select* from student where Status = true;
select * from subject where credit <10;
select S.StudentID, S.Studentname, C.Classname from student S join Class C on S.ClassID=C.ClassID where C.Classname='A1';
select S.StudentID, S.Studentname, Sub.Subname, M.Mark
from student S join mark M on S.StudentID = M.StudentID join subject Sub on M.SubID = Sub.SubID
where Sub.Subname='CF';