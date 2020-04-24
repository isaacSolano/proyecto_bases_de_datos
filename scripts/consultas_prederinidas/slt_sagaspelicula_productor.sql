select pr.nombre productor, count(sp.idpelicula) cant_peliculas
from sagaspelicula sp
join produccionpelicula pp on (pp.idpelicula = sp.idpelicula)
join productores pr on (pp.idproductor = pr.idproductor)
group by pr.nombre
/
