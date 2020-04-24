select pr.nombre productor, count(ss.idserie) cant_series
from sagasserie ss
join produccionseries ps on (ps.idserie = ss.idserie)
join productores pr on (ps.idproductor = pr.idproductor)
group by pr.nombre
/
