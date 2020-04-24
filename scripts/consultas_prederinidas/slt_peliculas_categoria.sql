select categoria, count(idpelicula) cant_peliculas
from peliculas
group by categoria
/
