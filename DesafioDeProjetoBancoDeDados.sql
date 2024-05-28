-- 1 CONSULTA
SELECT  
	Nome,
	Ano
FROM Filmes
-- 2 CONSULTA
SELECT * FROM Filmes
ORDER BY Ano
-- 3 CONSULTA
SELECT Nome, Ano, Duracao FROM Filmes
WHERE Nome = 'De Volta para o Futuro'
-- 4 CONSULTA
SELECT Nome, Ano, Duracao FROM Filmes
WHERE Ano = 1997
-- 5 CONSULTA
SELECT Nome, Ano, Duracao FROM Filmes
WHERE Ano LIKE '20%'
-- 6 CONSULTA
SELECT Nome, Ano, Duracao FROM Filmes
WHERE Duracao > 100 AND Duracao < 150
ORDER BY Duracao ASC
-- 7 CONSULTA
SELECT Ano, COUNT(*) AS QUANTIDADE FROM Filmes
GROUP BY Ano
ORDER BY QUANTIDADE DESC
-- 8 CONSULTA
SELECT * FROM Atores
WHERE Genero = 'M'
-- 9 CONSULTA
SELECT * FROM Atores
WHERE  Genero = 'F'
ORDER BY PrimeiroNome
--10 CONSULTA
SELECT Filmes.Nome AS NomeFilme, Generos.Genero AS NomeGenero 
FROM Filmes
INNER JOIN FilmesGenero ON  Filmes.Id = FilmesGenero.IdFilme
INNER JOIN Generos ON FilmesGenero.IdGenero = Generos.Id
-- 11 CONSULTA
SELECT Filmes.Nome AS NomeFilme, Generos.Genero AS NomeGenero 
FROM Filmes
INNER JOIN FilmesGenero ON  Filmes.Id = FilmesGenero.IdFilme
INNER JOIN Generos ON FilmesGenero.IdGenero = Generos.Id
WHERE Genero = 'Mistério'
-- 12 CONSULTA
SELECT Filmes.Nome AS Nome, Atores.PrimeiroNome AS PrimeiroNome, Atores.UltimoNome
AS UltimoNome, ElencoFilme.Papel AS Papel
FROM Filmes
INNER JOIN ElencoFilme ON Filmes.Id = ElencoFilme.IdFilme
INNER JOIN Atores ON ElencoFilme.IdAtor = Atores.Id


