use quanlibanhang;
select cName,pName
from customer c join orderr o on c.cID=o.cID join orderdetail od on o.oID=od.oID join product p on od.pID=p.pID
