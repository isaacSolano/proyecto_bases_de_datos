select genero, count(idpelicula) cant_peliculas
from peliculas
group by genero
/
