select count(p.idpelicula) cant_peliculas, a.nombre
from peliculas p
join repartospelicula rp on (p.idpelicula = rp.idpelicula)
join actores a on (rp.idactor = a.idactor)
group by a.nombre
/
