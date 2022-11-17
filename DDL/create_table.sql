CREATE TABLE kota
  (
     id_kota INT auto_increment PRIMARY KEY,
     nama    VARCHAR(255) NULL
  ); 

CREATE TABLE genre
  (
     id_genre INT auto_increment PRIMARY KEY,
     nama     VARCHAR(255) NULL
  ); 

CREATE TABLE film
  (
     id_film       INT auto_increment PRIMARY KEY,
     nama          VARCHAR(255) NULL,
     tanggal_rilis DATE NULL,
     harga         INT NULL,
     durasi        INT NULL
  ); 

CREATE TABLE movie_genre
  (
     id_movie_genre INT auto_increment PRIMARY KEY,
     id_genre       INT NULL,
     id_film        INT NULL,
     CONSTRAINT movie_genre_film_null_fk FOREIGN KEY (id_film) REFERENCES film (
     id_film),
     CONSTRAINT movie_genre_genre_null_fk FOREIGN KEY (id_genre) REFERENCES
     genre (id_genre)
  ); 

CREATE TABLE pembeli
  (
     id_pembeli INT auto_increment PRIMARY KEY,
     nama       VARCHAR(255) NULL,
     email      VARCHAR(255) NULL,
     no_telp    CHAR(16) NULL,
     id_kota    INT NULL,
     CONSTRAINT pembeli_ibfk_1 FOREIGN KEY (id_kota) REFERENCES kota (id_kota)
  );

CREATE INDEX id_kota ON pembeli (id_kota); 

CREATE TABLE pembelian
  (
     id_beli    INT auto_increment PRIMARY KEY,
     id_pembeli INT NULL,
     id_film    INT NULL,
     order_date DATE NULL,
     CONSTRAINT pembelian_film_null_fk FOREIGN KEY (id_film) REFERENCES film (
     id_film),
     CONSTRAINT pembelian_pembeli_null_fk FOREIGN KEY (id_pembeli) REFERENCES
     pembeli (id_pembeli)
  ); 