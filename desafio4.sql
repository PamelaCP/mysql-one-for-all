SELECT U.user AS usuario,
CASE
	WHEN YEAR(MAX(H.history)) = 2021 THEN 'Usuário ativo'
	ELSE 'Usuário inativo'
END AS condicao_usuario
FROM SpotifyClone.users AS U
INNER JOIN SpotifyClone.playback AS H
ON U.user_id = H.user_id
GROUP BY U.user_id
ORDER BY usuario ASC;