create database faculdade;
use faculdade;

create table aluno (
	idAluno int primary key,
    matricula varchar(10) not null,
    nome varchar(50) not null
);

create table curso (
	idCurso int primary key,
    nome varchar(50) not null
);

create table disciplina (
	idDisciplina int primary key,
    nome varchar(50) not null,
    cargaHoraria int not null
);

create table alunoCurso (
	idAluno int not null,
    idCurso int not null,
	anoEntrada int not null,
	foreign key(idAluno) references aluno(idAluno),
    foreign key(idCurso) references curso(idCurso)
);

create table historico (
	idAluno int not null,
    idDisciplina int not null,
    nota float not null,
    dataHistorico date not null,
    foreign key(idAluno) references aluno(idAluno),
    foreign key(idDisciplina) references disciplina(idDisciplina)
);

create table grade (
	idGrade int primary key,
    idCurso int not null,
    ano int not null,
    cargaHorariaTotal int not null,
    foreign key(idCurso) references curso(idCurso)
);

create table gradeDisciplina (
	idGrade int not null,
    idDisciplina int not null,
    foreign key(idGrade) references grade(idGrade),
    foreign key(idDisciplina) references disciplina(idDisciplina)
);