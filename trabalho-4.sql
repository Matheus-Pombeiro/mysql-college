use faculdade;

describe alunocurso;
select * from alunocurso;

select curso.nome 'Nome do Curso', aluno.nome 'Nome do Aluno' 
from alunocurso
inner join curso on alunocurso.idCurso = curso.idCurso
inner join aluno on alunocurso.idAluno = aluno.idAluno order by curso.nome desc;

select * from disciplina;
select * from historico;

select disciplina.nome 'Nome da Disciplina', avg(historico.nota) 'Média de Notas'
from historico
inner join disciplina on historico.idDisciplina = disciplina.idDisciplina
group by disciplina.nome;