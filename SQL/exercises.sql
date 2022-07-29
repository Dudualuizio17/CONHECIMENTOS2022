1-Retornar os 50 primeiros alunos.
SELECT * FROM `aluno` LIMIT 0,50;

2- Retornar uma lista de 10 cursos.
SELECT * FROM `curso` LIMIT 10;

3- 30 primeiras aulas
SELECT * FROM `video_aula` ORDER BY id_v ASC LIMIT 30;

4- Retornar uma lista com id do aluno, nome do aluno, e id do curso, nome do curso.
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

5 - id do curso , nome do curso, id do módulo, nome do módulo.

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