use quanlibanhang;
select cName,count(o.cID)
from customer c left join orderr o on c.cID=o.cID
group by cName
having count(o.cID)=0;

