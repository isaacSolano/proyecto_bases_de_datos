select anno, count(idpelicula) cant_peliculas
from peliculas
group by anno
/
