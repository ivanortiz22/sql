SELECT titulo AS encabezado,fecha_publicacion AS fecha,estatus as estado
FROM posts;
SELECT COUNT(*) AS TOTAL
FROM posts;
SELECT *
FROM usuarios
LEFT JOIN posts ON  usuarios.id = posts.usuario_id
WHERE posts.usuario_id IS NULL;
SELECT *
FROM usuarios
RIGHT JOIN posts ON  usuarios.id = posts.usuario_id
WHERE posts.usuario_id IS NULL;
SELECT *
FROM usuarios
LEFT JOIN posts ON  usuarios.id = posts.usuario_id
UNION 
SELECT *
FROM usuarios
RIGHT JOIN posts ON  usuarios.id = posts.usuario_id
WHERE posts.usuario_id IS NULL;
SELECT *
FROM usuarios
LEFT JOIN posts ON  usuarios.id = posts.usuario_id
UNION 
SELECT *
FROM usuarios
RIGHT JOIN posts ON  usuarios.id = posts.usuario_id;

SELECT *
FROM usuarios
LEFT JOIN posts ON  usuarios.id = posts.usuario_id
WHERE posts.usuario_id IS NULL
UNION 
SELECT *
FROM usuarios
RIGHT JOIN posts ON  usuarios.id = posts.usuario_id
WHERE posts.usuario_id IS NULL;

SELECT *
FROM usuarios
INNER JOIN  posts ON usuarios.id = posts.usuario_id;

