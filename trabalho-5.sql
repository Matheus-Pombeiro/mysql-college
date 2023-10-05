use faculdade;

select curso.nome 'Nome do Curso', count(*) 'Quantidade de Alunos'
from alunocurso
inner join curso on alunocurso.idCurso = curso.idCurso
inner join aluno on alunocurso.idAluno = aluno.idAluno
group by curso.nome;