use quanlisinhvien;
select * from subject group by credit having credit=(select max(credit) from subject);