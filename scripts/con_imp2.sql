select a.nombre, count(idpelicula) Peliculas,
 (select count(IDSERIE)
      from repartosserie spp
     where spp.idactor = rp.idactor
) Series,
(select min (p.anno)
    from repartospelicula rpp
    join peliculas p on (p.idpelicula = rpp.idpelicula)
    where rpp.idactor = rp.idactor
) "Primer pelicula", (
    select min (s.anno)
    from repartosserie spp
    join series s on (s.idserie = spp.idserie)
    where spp.idactor = rp.idactor
) "Primer serie"
from repartospelicula rp
join actores  a on (rp.idactor = a.idactor)
group by a.nombre, rp.idactor;
