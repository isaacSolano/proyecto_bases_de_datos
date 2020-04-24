select d.nombre, count(s.idserie) cant_series
from series s
join directores d on (s.iddirector = d.iddirector)
group by d.nombre
/
