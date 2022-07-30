SELECT U.user, U.user_id, l.history
FROM SpotifyClone.users AS U
INNER JOIN SpotifyClone.playback AS l
ON U.user_id = l.user_id;