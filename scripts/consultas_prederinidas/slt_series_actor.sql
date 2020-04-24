select count(s.idserie) cant_series, a.nombre
from series s
join repartosserie rs on (s.idserie = rs.idserie)
join actores a on (rs.idactor = a.idactor)
group by a.nombre
/
