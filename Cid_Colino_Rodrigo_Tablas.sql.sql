USE Cid_Colino_Rodrigo_Memes;
GO

DROP TABLE IF EXISTS Asignatura, Matrícula, Meme;
GO

CREATE TABLE Asignatura(

	AsignaturaID INT NOT NULL,
	NombreAsignatura VARCHAR(70) NOT NULL,
	ProfesorID INT NOT NULL,
	Créditos FLOAT NOT NULL,
	Web VARCHAR(70)
);

GO

ALTER TABLE Asignatura
ADD CONSTRAINT PK_Asignatura PRIMARY KEY(AsignaturaID);
GO

ALTER TABLE Asignatura
ADD CONSTRAINT FK_Asignatura_Profesor_ProfesorID
FOREIGN KEY (ProfesorID) REFERENCES
Profesor(ProfesorID)
ON DELETE CASCADE ON UPDATE CASCADE;
GO

ALTER TABLE Asignatura
ADD CONSTRAINT CK_Asignatura_Créditos
CHECK(Créditos>0);
GO

ALTER TABLE Asignatura
ADD CONSTRAINT CK_Asignatura_NombreAsignatura
CHECK(NombreAsignatura LIKE '%Meme%');
GO

CREATE TABLE Matrícula(

	MatrículaID INT NOT NULL,
	AsignaturaID INT NOT NULL,
	AlumnoID INT NOT NULL,
	Convocatorias INT NOT NULL,
	NotaFinal FLOAT
);

GO

ALTER TABLE Matrícula
ADD CONSTRAINT DF_Matrícula_Convocatorias
DEFAULT 1 FOR Convocatorias;
GO

ALTER TABLE Matrícula
ADD CONSTRAINT CK_Matrícula_Convocatorias
CHECK(Convocatorias>0);
GO

ALTER TABLE Matrícula
ADD CONSTRAINT CK_Matrícula_NotaFinal
CHECK(NotaFinal>=0 AND NotaFinal <=10);
GO

CREATE TABLE Meme(

	MemeID INT NOT NULL,
	MatrículaID INT NOT NULL,
	TítuloMeme VARCHAR(70) NOT NULL,
	Nota NCHAR(1) NOT NULL,
	Rating FLOAT NOT NULL
);
GO

ALTER TABLE Meme
ADD CONSTRAINT CK_Meme_Nota
CHECK (Nota LIKE '[ABCDEF]');
GO

ALTER TABLE Meme
ADD CONSTRAINT CK_Meme_Rating
CHECK (Rating >=0 AND Rating<=10)
GO
