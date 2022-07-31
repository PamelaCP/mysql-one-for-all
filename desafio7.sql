SELECT ca.artist AS artista, album.album AS album, COUNT(seguindo.artist_id) AS seguidores
FROM SpotifyClone.artists AS ca
LEFT JOIN SpotifyClone.albums AS album
ON ca.artist_id = album.artist_id
LEFT JOIN SpotifyClone.following_artist AS seguindo
ON ca.artist_id = seguindo.artist_id
GROUP BY artista, album
ORDER BY seguidores DESC, artista ASC, album ASC;