select count(idcancion) cant_canciones, m.nombre
from canciones c
join musicos m on (c.idmusico = m.idmusico)
group by m.nombre
/
