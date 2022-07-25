use quanlibanhang;
select *,sum(odQTY*pPrice) as total
from orderr o left join orderdetail od on o.oID=od.oID join product p on p.pID=od.pID