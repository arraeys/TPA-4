-- menampilkan top 3 film terlaris

SELECT film.nama,
       Count(pembelian.id_film) AS jumlah_pembelian
FROM   pembelian
       INNER JOIN film
               ON pembelian.id_film = film.id_film
GROUP  BY pembelian.id_film
LIMIT  3 