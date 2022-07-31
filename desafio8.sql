SELECT art.artist AS artista, album.album AS album
FROM SpotifyClone.artists AS art
INNER JOIN SpotifyClone.albums AS album
ON art.artist_id = album.artist_id 
WHERE art.artist LIKE 'Walt%'
ORDER BY album.album ASC;