select usuario, count(contenido) cant_descargas
from (
	select u.nombre usuario, c.nombre  contenido
	from descargascanciones dc 
	join canciones c on (dc.idcancion = c.idcancion)
	join usuarios u on  (dc.idusuario = u.idusuario)
	--
	union all
	--
	select u.nombre usuario, p.titulo  contenido
	from descargaspeliculas dp 
	join peliculas p on (dp.idpelicula = p.idpelicula)
	join usuarios u on  (dp.idusuario = u.idusuario)
	--
	union all
	--
	select u.nombre usuario, s.titulo  contenido
	from descargasseries ds 
	join series s on (ds.idserie = s.idserie)
	join usuarios u on  (ds.idusuario = u.idusuario)
)
group by usuario
/
