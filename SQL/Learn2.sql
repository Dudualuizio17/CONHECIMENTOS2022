SELECT
    CM.curso_id_cur,
    C.id_cur,
    C.titulo_cur,
    M.id_mod,
    M.titulo_mod
FROM
    curso AS C
    INNER JOIN curso_modulo AS CM ON (C.id_cur = CM.id_cur_mod)
    INNER JOIN modulo AS M ON (CM.modulo_id_mod = M.id_mod)
ORDER BY
    `M`.`id_mod` ASC