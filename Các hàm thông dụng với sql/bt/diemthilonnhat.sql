use quanlisinhvien;
select sub.SubID,sub.Subname,sub.Credit,sub.Status
from subject sub left join mark m on sub.SubID=m.SubID where mark=(select max(mark) from mark);