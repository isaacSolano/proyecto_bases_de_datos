select titulo, cant_vistas
from (
	select p.titulo, count(rp.idusuario) cant_vistas
	from reproduccionespeliculas rp
	join peliculas p on (rp.idpelicula = p.idpelicula)
	group by p.titulo
	--
	union all
	--
	select s.titulo, count(rs.idusuario) cant_vistas
	from reproduccionesseries rs
	join series s on (rs.idserie = s.idserie)
	group by s.titulo
)
order by cant_vistas desc
/
