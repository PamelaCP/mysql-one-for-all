SELECT COUNT(son.song) AS quantidade_musicas_no_historico
FROM SpotifyClone.songs AS son
LEFT JOIN SpotifyClone.playback AS H
ON H.song_id = son.song_id
LEFT JOIN SpotifyClone.users AS U
ON U.user_id = H.user_id
WHERE U.user = 'Bill';