SELECT MIN(plano.price) AS faturamento_minimo,
MAX(plano.price) AS faturamento_maximo,
ROUND(AVG(plano.price), 2) AS faturamento_medio,
SUM(plano.price) AS faturamento_total
FROM SpotifyClone.plans AS plano
INNER JOIN SpotifyClone.users AS U
ON plano.plan_id = U.plan_id;