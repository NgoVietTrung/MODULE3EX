use quanlisinhvien;
select Address,count(StudentID) as 'Số lượng học viên'
from student
group by address;
select s.StudentID,s.studentname,avg(Mark)
from student s join mark m on s.studentid=m.studentid
group by s.studentid,s.studentname
having avg(Mark)>15;
select s.StudentID,s.studentname,avg(Mark)
from student s join mark m on s.studentid=m.studentid
group by s.studentid,s.studentname
having avg(Mark)>=all(select avg(mark) from mark group by mark.studentid);