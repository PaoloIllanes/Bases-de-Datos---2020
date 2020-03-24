 -- Paolo Illanes-47518
-- a) Mostrar alfabeticamente los artistas que incluyen en el titulo de su cancion una o mas 'n'.
select artists.name 
from artists inner join songs 
where title = '%n%'
order by artists.name asc;

-- b) Mostrar las canciones que se encuentran debajo del promedio de popularidad(usar el atributo plays).
 select title from songs where plays < avg(plays);
-- c) Contar el numero de canciones que tiene el album 'Summer Hits' del artista 'Bart Simpson'.
select count(songs.title)
from songs 
join artists on artists.id = songs.artist 
join albums on albums.id = songs.album
where albums.title ='Summer Hits' && name = 'Bart Simpson'