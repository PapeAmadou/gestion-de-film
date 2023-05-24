/*PARTHIPAN Jonathan, NDAO Pape Amadou*/
CREATE DATABASE TP2;
USE TP2;
SHOW TABLES;
SELECT * FROM films;
SELECT * FROM ajoue;
SELECT * FROM actors;
SELECT Popularity FROM films WHERE Title='Batman';
/*La popularité de Batman est de 14*/
SELECT Length FROM films WHERE films.title LIKE 'E.T.%';
SELECT DISTINCT films.Director FROM films;
SELECT title FROM films WHERE director='Hitchcock, Alfred';
SELECT title FROM films WHERE length IS NULL;
SELECT films.title, actors.name FROM films, ajoue, actors WHERE films.id = ajoue.idFilm AND ajoue.idActor = actors.id AND actors.name = 'Cruise, Tom';
SELECT films.title, actors.name FROM films, ajoue, actors WHERE films.id = ajoue.idFilm AND ajoue.idActor = actors.id AND actors.name = 'Roberts, Julia' ORDER BY films.popularity DESC;
SELECT actors.name FROM actors WHERE actors.id NOT IN (SELECT ajoue.idActor FROM ajoue);
SELECT films.title FROM films, ajoue, actors WHERE films.id = ajoue.idFilm AND actors.id = ajoue.idActor AND films.director = actors.name;
SELECT COUNT(*) FROM films;
SELECT MIN(year) FROM films;
SELECT title FROM films WHERE films.year = 1920;
SELECT COUNT(Subject) FROM films WHERE Subject = 'Action';
SELECT actors.name, AVG(Popularity) FROM films, actors, ajoue WHERE films.id = ajoue.idFilm AND actors.id = ajoue.idActor AND actors.name = 'Willis, Bruce';
SELECT films.title, max(films.length) FROM films, ajoue, actors WHERE films.id = ajoue.idFilm AND actors.id = ajoue.idActor AND actors.name = 'Streep, Meryl';
SELECT films.subject, AVG(Popularity) from films WHERE films.subject = 'Comedy';
SELECT films.Subject, AVG(Popularity) FROM films GROUP BY films.Subject;
SELECT actors.name FROM actors, films, ajoue WHERE actors.id = ajoue.idActor AND films.id = ajoue.idFilm GROUP BY name HAVING COUNT(films.id)>15;
SELECT films.title FROM films WHERE films.popularity > (SELECT AVG(films.popularity) FROM films);
SELECT films.title FROM films ORDER BY films. length DESC LIMIT 3;
SELECT films.director FROM films GROUP BY director HAVING MAX(films.id) LIMIT 1;
SELECT COUNT(*) FROM films, ajoue;