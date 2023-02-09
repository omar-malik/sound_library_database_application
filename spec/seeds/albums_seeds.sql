DROP TABLE IF EXISTS albums; 

-- Table Definition
CREATE TABLE albums (
    id SERIAL PRIMARY KEY,
    title text,
    release_year int4,
    artist_id int4
);

TRUNCATE TABLE albums RESTART IDENTITY;

INSERT INTO albums ("title", "release_year", "artist_id") VALUES
('Dttle', 1989, 1),
('Susa', 1988, 1),
('Woo', 1974, 2),
('Suer', 1980, 2),
('Bova', 1990, 1),
('Loer', 2019, 3),
('Fre', 2020, 3),
('I You', 1965, 4),
('Bore', 1978, 4),
('Hn', 1971, 4),
('Fogs', 1982, 4),
('Rnng', 1973, 2);


