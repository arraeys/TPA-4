-- melihat genre yang paling banyak filmnya
SELECT genre.nama                  AS nama_genre,
       Count(movie_genre.id_genre) AS jumlah_film
FROM   movie_genre
       INNER JOIN genre
               ON movie_genre.id_genre = genre.id_genre
GROUP  BY movie_genre.id_genre
ORDER  BY Count(movie_genre.id_genre) DESC
LIMIT  1 