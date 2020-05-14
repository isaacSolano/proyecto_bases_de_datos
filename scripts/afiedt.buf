select p.titulo, rp.cant_reproducciones, dp.cant_descargas, p.anno, ap.cant_actores, 'Pelicula'
from peliculas p
join (
	select idpelicula, count(idreproduccion) cant_reproducciones
	from reproduccionespeliculas 
	group by idpelicula
) rp on (rp.idpelicula = p.idpelicula)
join (
	select idpelicula, count(iddescarga) cant_descargas
	from descargaspeliculas
	group by idpelicula
) dp on (dp.idpelicula = p.idpelicula)
join (
	select idpelicula, count(idactor) cant_actores
	from repartospelicula
	group by idpelicula
) ap on (ap.idpelicula = p.idpelicula)
--
union all
--
select s.titulo, rs.cant_reproducciones, ds.cant_descargas, s.anno, ase.cant_actores, 'Serie'
from series s
join (
	select idserie, count(idreproduccion) cant_reproducciones
	from reproduccionesseries 
	group by idserie
) rs on (rs.idserie = s.idserie)
join (
	select idserie, count(iddescarga) cant_descargas
	from descargasseries
	group by idserie
) ds on (ds.idserie = s.idserie)
join (
	select idserie, count(idactor) cant_actores
	from repartosserie
	group by idserie
) ase on (ase.idserie = s.idserie)
/
