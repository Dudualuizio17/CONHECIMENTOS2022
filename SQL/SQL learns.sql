SELECT
    AC.aluno_id_alu,
    A.nome_alu,
    A.id_alu,
    C.id_cur,
    C.titulo_cur
FROM
    aluno AS A
    INNER JOIN aluno_curso AS AC ON (A.id_alu = AC.aluno_id_alu)
    INNER JOIN curso AS C ON (AC.curso_id_cur = C.id_cur)
ORDER BY
    A.id_alu,
    C.id_cur ASC;