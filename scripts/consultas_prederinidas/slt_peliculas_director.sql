select d.nombre, count(p.idpelicula) cant_peliculas
from peliculas p
join directores d on (p.iddirector = d.iddirector)
group by d.nombre
/
