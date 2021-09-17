CREATE VIEW top_3_artistas AS (
SELECT a.artist AS artista, COUNT(f.artist_id) AS seguidores
FROM SpotifyClone.follow AS f
INNER JOIN SpotifyClone.artists AS a ON f.artist_id = a.artist_id
GROUP BY f.artist_id
ORDER BY seguidores DESC, artista ASC LIMIT 3
);
