use dbUniversidad

CREATE TABLE Facultad
(
	Id INT PRIMARY KEY IDENTITY NOT NULL,
	Nombre NVARCHAR(MAX) NOT NULL
)


CREATE TABLE Curso
(
	Id INT PRIMARY KEY IDENTITY NOT NULL,
	Nombre NVARCHAR(MAX) NOT NULL,
	FacultadId INT NOT NULL,
	FOREIGN KEY (FacultadId) REFERENCES Facultad(Id)
)

CREATE TABLE Alumno
(
	Id INT PRIMARY KEY IDENTITY NOT NULL,
	Nombre NVARCHAR(MAX) NOT NULL,
	FechaDeNacimiento DATETIME NOT NULL
)

CREATE TABLE AlumnosPorCurso
(
	AlumnoId INT NOT NULL,
	CursoId INT NOT NULL,
	PRIMARY KEY (AlumnoId,CursoId),
	FOREIGN KEY (AlumnoId) REFERENCES Alumno(Id),
	FOREIGN KEY (CursoId) REFERENCES Curso(Id)
)