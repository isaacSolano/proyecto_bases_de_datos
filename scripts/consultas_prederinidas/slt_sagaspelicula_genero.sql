select genero, count(idpelicula) cant_peliculas
from sagaspelicula
group by genero
/
