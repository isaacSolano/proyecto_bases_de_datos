select genero, count(idserie) cant_series
from series
group by genero
/
