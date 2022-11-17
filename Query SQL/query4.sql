-- rata-rata total transaksi dalam 1 bulan terakhir
SELECT Avg(film.harga) AS rata_rata
FROM   pembelian
       inner join film
               ON pembelian.id_film = film.id_film
WHERE  pembelian.order_date BETWEEN Now() - interval 1 month AND Now(); 