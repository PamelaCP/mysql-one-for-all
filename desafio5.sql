SELECT son.song AS song, COUNT(H.song_id) AS reproducoes
FROM SpotifyClone.songs AS son
LEFT JOIN SpotifyClone.playback AS H
ON son.album_id = H.song_id
GROUP BY son.song
ORDER BY reproducoes DESC, song ASC
LIMIT 2;
    