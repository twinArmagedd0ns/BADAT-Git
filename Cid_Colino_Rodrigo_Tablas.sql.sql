USE Cid_Colino_Rodrigo_Memes;
GO

DROP TABLE IF EXISTS Asignatura, Matr�cula, Meme;
GO

CREATE TABLE Asignatura(

	AsignaturaID INT NOT NULL,
	NombreAsignatura VARCHAR(70) NOT NULL,
	ProfesorID INT NOT NULL,
	Cr�ditos FLOAT NOT NULL,
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
ADD CONSTRAINT CK_Asignatura_Cr�ditos
CHECK(Cr�ditos>0);
GO

ALTER TABLE Asignatura
ADD CONSTRAINT CK_Asignatura_NombreAsignatura
CHECK(NombreAsignatura LIKE '%Meme%');
GO

CREATE TABLE Matr�cula(

	Matr�culaID INT NOT NULL,
	AsignaturaID INT NOT NULL,
	AlumnoID INT NOT NULL,
	Convocatorias INT NOT NULL,
	NotaFinal FLOAT
);

GO

ALTER TABLE Matr�cula
ADD CONSTRAINT DF_Matr�cula_Convocatorias
DEFAULT 1 FOR Convocatorias;
GO

ALTER TABLE Matr�cula
ADD CONSTRAINT CK_Matr�cula_Convocatorias
CHECK(Convocatorias>0);
GO

ALTER TABLE Matr�cula
ADD CONSTRAINT CK_Matr�cula_NotaFinal
CHECK(NotaFinal>=0 AND NotaFinal <=10);
GO

CREATE TABLE Meme(

	MemeID INT NOT NULL,
	Matr�culaID INT NOT NULL,
	T�tuloMeme VARCHAR(70) NOT NULL,
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
