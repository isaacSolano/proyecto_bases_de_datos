select titulo, cant_descargas
from (
	select p.titulo, count(dp.idusuario) cant_descargas
	from descargaspeliculas dp
	join peliculas p on (dp.idpelicula = p.idpelicula)
	group by p.titulo
	--
	union all
	--
	select s.titulo, count(ds.idusuario) cant_descargas
	from descargasseries ds
	join series s on (ds.idserie = s.idserie)
	group by s.titulo
)
order by cant_descargas desc
/
