select categoria, count(idserie) cant_series
from series
group by categoria
/
