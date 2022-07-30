SELECT COUNT(son.song_id)  AS cancoes,
COUNT(art.artist_id) AS artistas,
COUNT(alb.album_id) AS albuns 

FROM SpotifyClone.songs AS son
LEFT JOIN SpotifyClone.artists AS art
ON son.song_id = artist_id
LEFT JOIN SpotifyClone.albums AS alb
ON  son.song_id = alb.album_id;
