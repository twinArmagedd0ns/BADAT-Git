SELECT COUNT(*) FROM Aeropuerto;

SELECT COUNT(*) FROM Sospechoso;

--4--
DELETE FROM Sospechoso
WHERE SospechosoID NOT IN (SELECT SospechosoID FROM Viaje);

--5--

DELETE FROM Aeropuerto
WHERE (AeropuertoC�digo IS NULL OR AeropuertoElevaci�n IS NULL);

--6--

SELECT * FROM Viaje
WHERE HoraEmbarque